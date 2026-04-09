import { useCallback, useEffect, useMemo, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import { Plus, FolderTree, Eye, Settings, Database } from "lucide-react";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Dialog, DialogContent, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import CategoryEditor from "./CategoryEditor";
import CategoryTreeView from "./CategoryTreeView";
import CategoryBulkActions from "./CategoryBulkActions";
import { toast } from "@/components/ui/use-toast";
import { MenuCategory } from "@/data/categoryTypes";
import { supabase } from "@/integrations/supabase/client";
import { logger } from "@/utils/silentLogger";
import { mergeOfficialAndSupabaseCategories, useCategories, useInvalidateCategories } from "@/services/supabaseCategoriesService";

interface CategoryData {
  id: string;
  name: string;
  slug: string;
  description?: string;
  parentId?: string;
  children: CategoryData[];
  isActive: boolean;
  sortOrder: number;
  announcementCount: number;
  seoTitle?: string;
  seoDescription?: string;
  metaTags?: string[];
}

const CategoryManagement = () => {
  const [categories, setCategories] = useState<CategoryData[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [maxDepth, setMaxDepth] = useState(3);
  const [maxCategoriesPerLevel, setMaxCategoriesPerLevel] = useState(50);
  const [autoSlug, setAutoSlug] = useState(true);
  const [autoValidation, setAutoValidation] = useState(true);
  const [autoSave, setAutoSave] = useState(false);
  const [totalAnnouncementsExact, setTotalAnnouncementsExact] = useState(0);

  const [editingCategory, setEditingCategory] = useState<CategoryData | null>(null);
  const [isEditorOpen, setIsEditorOpen] = useState(false);
  const [selectedTab, setSelectedTab] = useState("list");
  const [isSaving, setIsSaving] = useState(false);
  const { data: categoriesFromSupabase = [] } = useCategories('fr');
  const invalidateCategories = useInvalidateCategories();

  const isUUID = (value?: string) =>
    typeof value === "string" &&
    /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(value);

  const buildTreeFromMenu = (
    items: Array<{ name: string; slug: string; subcategories?: Array<{ name: string; slug: string; subcategories?: unknown[] }> }>,
    parentPath: string | undefined,
    isRoot: boolean,
    rootCounts: Map<string, number>,
    subCounts: Map<string, number>
  ): CategoryData[] => {
    return items.map((item, index) => {
      const nodeId = typeof (item as { id?: unknown }).id === "string" && (item as { id?: string }).id
        ? (item as { id: string }).id
        : (parentPath ? `${parentPath}/${item.slug}` : item.slug);
      const children = buildTreeFromMenu(
        (item.subcategories || []) as Array<{ name: string; slug: string; subcategories?: Array<{ name: string; slug: string; subcategories?: unknown[] }> }>,
        nodeId,
        false,
        rootCounts,
        subCounts
      );

      return {
        id: nodeId,
        name: item.name,
        slug: item.slug,
        description: undefined,
        parentId: parentPath,
        children,
        isActive: true,
        sortOrder: index + 1,
        announcementCount: isRoot ? (rootCounts.get(item.slug) || 0) : (subCounts.get(item.slug) || 0),
      };
    });
  };

  const loadCategories = useCallback(async () => {
      setIsLoading(true);
      try {
        const menu = mergeOfficialAndSupabaseCategories('fr', categoriesFromSupabase as MenuCategory[]);

        const [announcementTotalRes, rootCategoryCountRes, subCategoryCountRes] = await Promise.all([
          supabase.from('announcements_public').select('id', { count: 'exact', head: true }).eq('status', 'active'),
          (supabase as any)
            .from('announcements_public')
            .select('category_slug, count:id')
            .eq('status', 'active'),
          (supabase as any)
            .from('announcements_public')
            .select('subcategory_id, count:id')
            .eq('status', 'active')
            .not('subcategory_id', 'is', null),
        ]);

        const rootCounts = new Map<string, number>();
        const subCounts = new Map<string, number>();

        const rootRows = ((rootCategoryCountRes as any)?.data || []) as Array<{ category_slug?: string; count?: number }>;
        rootRows.forEach((row) => {
          if (typeof row?.category_slug === 'string') {
            rootCounts.set(row.category_slug, Number(row.count || 0));
          }
        });

        const subRows = ((subCategoryCountRes as any)?.data || []) as Array<{ subcategory_id?: string; count?: number }>;
        subRows.forEach((row) => {
          if (typeof row?.subcategory_id === 'string') {
            subCounts.set(row.subcategory_id, Number(row.count || 0));
          }
        });

        const tree = buildTreeFromMenu(
          menu as Array<{ name: string; slug: string; subcategories?: Array<{ name: string; slug: string; subcategories?: unknown[] }> }>,
          undefined,
          true,
          rootCounts,
          subCounts
        );
        setCategories(tree);
        setTotalAnnouncementsExact(announcementTotalRes.count || 0);
      } catch (error) {
        logger.error('Erreur chargement catégories admin:', error);
        toast({
          title: "Erreur de chargement",
          description: "Impossible de charger les catégories officielles",
          variant: "destructive",
        });
      } finally {
        setIsLoading(false);
      }
    }, [categoriesFromSupabase]);

  useEffect(() => {
    void loadCategories();
  }, [loadCategories]);

  const handleSaveCategory = async (categoryData: Partial<CategoryData>) => {
    const parentId = categoryData.parentId && String(categoryData.parentId).trim() ? String(categoryData.parentId) : null;
    if (parentId && !isUUID(parentId)) {
      toast({
        title: "Catégorie parente invalide",
        description: "Sélectionnez une catégorie parente synchronisée avec la base",
        variant: "destructive",
      });
      return;
    }

    setIsSaving(true);
    try {
      if (editingCategory) {
        if (!isUUID(editingCategory.id)) {
          toast({
            title: "Modification non autorisée",
            description: "Cette catégorie locale n'est pas encore synchronisée en base",
            variant: "destructive",
          });
          return;
        }

        const { error } = await supabase
          .from("categories")
          .update({
            name: categoryData.name || editingCategory.name,
            slug: categoryData.slug || editingCategory.slug,
            description: categoryData.description ?? editingCategory.description ?? null,
            parent_id: parentId,
            position_order: Number(categoryData.sortOrder ?? editingCategory.sortOrder ?? 0),
            is_active: categoryData.isActive ?? editingCategory.isActive,
            icon: categoryData.icon ?? null,
          } as never)
          .eq("id", editingCategory.id);

        if (error) throw error;

        toast({
          title: "Catégorie mise à jour",
          description: `La catégorie "${categoryData.name || editingCategory.name}" a été mise à jour`,
        });
      } else {
        const insertPayload = {
          id: crypto.randomUUID(),
          name: categoryData.name || "",
          slug: categoryData.slug || "",
          description: categoryData.description ?? null,
          parent_id: parentId,
          position_order: Number(categoryData.sortOrder ?? 0),
          is_active: categoryData.isActive ?? true,
        };

        const { error } = await supabase.from("categories").insert(insertPayload as never);
        if (error) throw error;

        toast({
          title: "Catégorie créée",
          description: `La catégorie "${categoryData.name}" a été créée avec succès`,
        });
      }

      invalidateCategories("fr");
      await loadCategories();
      setIsEditorOpen(false);
      setEditingCategory(null);
    } catch (error) {
      logger.error("Erreur sauvegarde catégorie:", error);
      toast({
        title: "Erreur",
        description: "Impossible d'enregistrer la catégorie",
        variant: "destructive",
      });
    } finally {
      setIsSaving(false);
    }
  };

  const handleEditCategory = (category: CategoryData) => {
    setEditingCategory(category);
    setIsEditorOpen(true);
  };

  const handleDeleteCategory = async (categoryId: string) => {
    if (!isUUID(categoryId)) {
      toast({
        title: "Suppression non autorisée",
        description: "Cette catégorie locale n'est pas encore synchronisée en base",
        variant: "destructive",
      });
      return;
    }

    setIsSaving(true);
    try {
      const { error } = await supabase.from("categories").delete().eq("id", categoryId);

      if (error) {
        const { error: archiveError } = await supabase
          .from("categories")
          .update({ is_active: false } as never)
          .eq("id", categoryId);
        if (archiveError) throw archiveError;
        toast({
          title: "Catégorie désactivée",
          description: "Suppression impossible (relations existantes), catégorie archivée",
        });
      } else {
        toast({
          title: "Catégorie supprimée",
          description: "La catégorie a été supprimée avec succès",
        });
      }

      invalidateCategories("fr");
      await loadCategories();
    } catch (error) {
      logger.error("Erreur suppression catégorie:", error);
      toast({
        title: "Erreur",
        description: "Impossible de supprimer la catégorie",
        variant: "destructive",
      });
    } finally {
      setIsSaving(false);
    }
  };

  const handleToggleStatus = async (categoryId: string, isActive: boolean) => {
    if (!isUUID(categoryId)) {
      toast({
        title: "Action non autorisée",
        description: "Cette catégorie locale n'est pas encore synchronisée en base",
        variant: "destructive",
      });
      return;
    }

    setIsSaving(true);
    try {
      const { error } = await supabase
        .from("categories")
        .update({ is_active: isActive } as never)
        .eq("id", categoryId);
      if (error) throw error;

      toast({
        title: isActive ? "Catégorie activée" : "Catégorie désactivée",
        description: "Le statut de la catégorie a été mis à jour",
      });

      invalidateCategories("fr");
      await loadCategories();
    } catch (error) {
      logger.error("Erreur changement statut catégorie:", error);
      toast({
        title: "Erreur",
        description: "Impossible de mettre à jour le statut",
        variant: "destructive",
      });
    } finally {
      setIsSaving(false);
    }
  };

  const removeCategoryById = (items: CategoryData[], categoryId: string): { tree: CategoryData[]; removed: CategoryData | null } => {
    let removed: CategoryData | null = null;

    const next = items
      .map((item) => {
        if (item.id === categoryId) {
          removed = item;
          return null;
        }
        if (item.children.length === 0) return item;
        const childResult = removeCategoryById(item.children, categoryId);
        if (childResult.removed) removed = childResult.removed;
        return { ...item, children: childResult.tree };
      })
      .filter(Boolean) as CategoryData[];

    return { tree: next, removed };
  };

  const handleMoveCategory = async (categoryId: string, newParentId?: string) => {
    if (newParentId && newParentId === categoryId) {
      toast({
        title: "Déplacement invalide",
        description: "Une catégorie ne peut pas être déplacée dans sa propre sous-catégorie",
        variant: "destructive",
      });
      return;
    }

    if (!isUUID(categoryId)) {
      toast({
        title: "Action non autorisée",
        description: "Cette catégorie locale n'est pas encore synchronisée en base",
        variant: "destructive",
      });
      return;
    }
    if (newParentId && !isUUID(newParentId)) {
      toast({
        title: "Parent invalide",
        description: "Le parent sélectionné doit être synchronisé en base",
        variant: "destructive",
      });
      return;
    }

    setIsSaving(true);
    try {
      const { error } = await supabase
        .from("categories")
        .update({ parent_id: newParentId || null } as never)
        .eq("id", categoryId);
      if (error) throw error;

      toast({
        title: "Catégorie déplacée",
        description: "La hiérarchie a été mise à jour",
      });

      invalidateCategories("fr");
      await loadCategories();
    } catch (error) {
      logger.error("Erreur déplacement catégorie:", error);
      toast({
        title: "Erreur",
        description: "Impossible de déplacer la catégorie",
        variant: "destructive",
      });
    } finally {
      setIsSaving(false);
    }
  };

  // Fonctions utilitaires pour manipuler l'arbre de catégories
  const updateCategoryInTree = (categories: CategoryData[], categoryId: string, updates: Partial<CategoryData>): CategoryData[] => {
    return categories.map(category => {
      if (category.id === categoryId) {
        return { ...category, ...updates };
      }
      if (category.children.length > 0) {
        return {
          ...category,
          children: updateCategoryInTree(category.children, categoryId, updates)
        };
      }
      return category;
    });
  };

  const removeCategoryFromTree = (categories: CategoryData[], categoryId: string): CategoryData[] => {
    return categories
      .filter(category => category.id !== categoryId)
      .map((category) => ({
        ...category,
        children: category.children.length > 0 ? removeCategoryFromTree(category.children, categoryId) : category.children,
      }));
  };

  const addChildToCategory = (categories: CategoryData[], parentId: string, newCategory: CategoryData): CategoryData[] => {
    return categories.map(category => {
      if (category.id === parentId) {
        return {
          ...category,
          children: [...category.children, newCategory]
        };
      }
      if (category.children.length > 0) {
        return {
          ...category,
          children: addChildToCategory(category.children, parentId, newCategory)
        };
      }
      return category;
    });
  };

  const getAllCategoriesFlat = (categories: CategoryData[]): CategoryData[] => {
    const flat: CategoryData[] = [];
    const traverse = (cats: CategoryData[]) => {
      cats.forEach(cat => {
        flat.push(cat);
        if (cat.children.length > 0) {
          traverse(cat.children);
        }
      });
    };
    traverse(categories);
    return flat;
  };

  const allCategoriesFlat = useMemo(() => getAllCategoriesFlat(categories), [categories]);
  const totalCategories = allCategoriesFlat.length;
  const activeCategories = allCategoriesFlat.filter(cat => cat.isActive).length;
  const rootCategories = categories.length;
  const subCategories = Math.max(0, totalCategories - rootCategories);

  const handleSaveSettings = () => {
    toast({
      title: "Configuration enregistrée",
      description: `Profondeur: ${maxDepth}, max/niveau: ${maxCategoriesPerLevel}`,
    });
  };

  return (
    <div className="p-6 space-y-6">
      <div className="flex justify-between items-center">
        <h1 className="text-3xl font-bold">Gestion des Catégories</h1>
        <Button onClick={() => { setEditingCategory(null); setIsEditorOpen(true); }} disabled={isSaving}>
          <Plus className="w-4 h-4 mr-2" />
          Nouvelle Catégorie
        </Button>
      </div>

      {/* Statistiques */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Catégories Totales</CardTitle>
            <FolderTree className="h-4 w-4 text-blue-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{isLoading ? "…" : totalCategories}</div>
            <p className="text-xs text-muted-foreground">{activeCategories} actives</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Catégories Principales</CardTitle>
            <FolderTree className="h-4 w-4 text-green-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{isLoading ? "…" : rootCategories}</div>
            <p className="text-xs text-muted-foreground">Niveau racine</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Sous-catégories</CardTitle>
            <FolderTree className="h-4 w-4 text-purple-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{isLoading ? "…" : subCategories}</div>
            <p className="text-xs text-muted-foreground">Niveaux inférieurs</p>
          </CardContent>
        </Card>

        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Annonces Totales</CardTitle>
            <Eye className="h-4 w-4 text-orange-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{isLoading ? "…" : totalAnnouncementsExact.toLocaleString()}</div>
            <p className="text-xs text-muted-foreground">Dans toutes les catégories</p>
          </CardContent>
        </Card>
      </div>

      {/* Onglets principaux */}
      <Tabs value={selectedTab} onValueChange={setSelectedTab}>
        <TabsList className="grid w-full grid-cols-3">
          <TabsTrigger value="list">Liste & Arborescence</TabsTrigger>
          <TabsTrigger value="bulk">Actions en Lot</TabsTrigger>
          <TabsTrigger value="settings">Configuration</TabsTrigger>
        </TabsList>

        <TabsContent value="list" className="space-y-6">
          <CategoryTreeView
            categories={categories}
            onEdit={handleEditCategory}
            onDelete={handleDeleteCategory}
            onToggleStatus={handleToggleStatus}
            onMove={handleMoveCategory}
          />
        </TabsContent>

        <TabsContent value="bulk">
          <CategoryBulkActions />
        </TabsContent>

        <TabsContent value="settings">
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center space-x-2">
                <Settings className="w-5 h-5" />
                <span>Configuration Générale</span>
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="grid grid-cols-2 gap-4">
                <div>
                  <Label>Profondeur maximale de l'arborescence</Label>
                  <Input
                    type="number"
                    value={maxDepth}
                    min={1}
                    onChange={(e) => setMaxDepth(Number(e.target.value || 1))}
                  />
                </div>
                <div>
                  <Label>Nombre max de catégories par niveau</Label>
                  <Input
                    type="number"
                    value={maxCategoriesPerLevel}
                    min={1}
                    onChange={(e) => setMaxCategoriesPerLevel(Number(e.target.value || 1))}
                  />
                </div>
              </div>
              
              <div className="space-y-2">
                <div className="flex items-center space-x-2">
                  <Switch checked={autoSlug} onCheckedChange={setAutoSlug} />
                  <Label>Génération automatique des slugs</Label>
                </div>
                <div className="flex items-center space-x-2">
                  <Switch checked={autoValidation} onCheckedChange={setAutoValidation} />
                  <Label>Validation automatique des nouvelles catégories</Label>
                </div>
                <div className="flex items-center space-x-2">
                  <Switch checked={autoSave} onCheckedChange={setAutoSave} />
                  <Label>Sauvegarde automatique des modifications</Label>
                </div>
              </div>

              <Button onClick={handleSaveSettings}>
                <Database className="w-4 h-4 mr-2" />
                Sauvegarder la configuration
              </Button>
            </CardContent>
          </Card>
        </TabsContent>
      </Tabs>

      {/* Dialogue d'édition */}
      <Dialog open={isEditorOpen} onOpenChange={setIsEditorOpen}>
        <DialogContent className="max-w-4xl max-h-[90vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle>
              {editingCategory ? 'Modifier la catégorie' : 'Nouvelle catégorie'}
            </DialogTitle>
          </DialogHeader>
          <CategoryEditor
            category={editingCategory || undefined}
            parentCategories={getAllCategoriesFlat(categories).filter(cat => !editingCategory || cat.id !== editingCategory.id)}
            onSave={handleSaveCategory}
            onCancel={() => setIsEditorOpen(false)}
          />
        </DialogContent>
      </Dialog>
    </div>
  );
};

export default CategoryManagement;
