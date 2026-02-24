import React, { useCallback, useEffect, useState } from "react";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Switch } from "@/components/ui/switch";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";
import { Dialog, DialogContent, DialogDescription, DialogFooter, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { useToast } from "@/hooks/use-toast";
import { supabase } from "@/integrations/supabase/client";
import { Loader2, Plus, Pencil, Trash2, Save } from "lucide-react";
import ImageUpload from "@/components/ui/ImageUpload";

// Types based on our DB schema
// Using any here to bypass type checking until Supabase types are updated
interface CarouselSettings {
  id: string;
  carousel_id: number;
  interval_ms: number;
}

interface CarouselSlide {
  id: string;
  carousel_id: number;
  image_url: string;
  title: string | null;
  text_2: string | null;
  text_3: string | null;
  text_4: string | null;
  text_5: string | null;
  text_position: 'center' | 'bottom_left' | 'bottom_right' | 'top_left' | 'top_right';
  text_style: 'normal' | 'gradient' | 'neon';
  text_color: string | null;
  font_size: 'xs' | 'small' | 'medium' | 'large' | 'xl';
  font_family: string;
  animation_type: 'fade-up' | 'slide-left' | 'zoom' | 'typewriter';
  end_at: string | null;
  display_order: number;
  is_active: boolean;
}

const formatDateForInput = (dateString: string | null | undefined) => {
  if (!dateString) return '';
  const date = new Date(dateString);
  const offset = date.getTimezoneOffset() * 60000;
  const localDate = new Date(date.getTime() - offset);
  return localDate.toISOString().slice(0, 16);
};

const HeroCarouselManagement = () => {
  const { toast } = useToast();
  const [loading, setLoading] = useState(true);
  const [activeTab, setActiveTab] = useState("1");
  
  // Data state
  const [settings, setSettings] = useState<CarouselSettings[]>([]);
  const [slides, setSlides] = useState<CarouselSlide[]>([]);
  
  // Edit/Add state
  const [isDialogOpen, setIsDialogOpen] = useState(false);
  const [currentSlide, setCurrentSlide] = useState<Partial<CarouselSlide>>({});
  const [isEditing, setIsEditing] = useState(false);
  
  // Settings form state
  const [interval, setInterval] = useState<number>(3500);

  // Fetch data
  const fetchData = useCallback(async () => {
    try {
      setLoading(true);
      
      // Fetch settings - Using 'any' cast to bypass strict typing until codegen
      const { data: settingsData, error: settingsError } = await supabase
        .from('hero_carousel_settings' as any)
        .select('*');
        
      if (settingsError) {
        // If table doesn't exist, we might get an error. 
        // In a real scenario, we should handle this gracefully.
        console.error("Settings error:", settingsError);
        // Don't throw here to allow UI to render even if empty
      }
      setSettings((settingsData as any) || []);

      // Fetch slides - Using 'any' cast
      const { data: slidesData, error: slidesError } = await supabase
        .from('hero_carousel_slides' as any)
        .select('*')
        .order('display_order', { ascending: true });
        
      if (slidesError) {
        console.error("Slides error:", slidesError);
      }
      setSlides((slidesData as any) || []);
      
    } catch (error) {
      console.error("Error fetching data:", error);
      toast({
        title: "Erreur",
        description: "Impossible de charger les données. Avez-vous exécuté la migration SQL ?",
        variant: "destructive",
      });
    } finally {
      setLoading(false);
    }
  }, [toast]);

  useEffect(() => {
    fetchData();
  }, [fetchData]);

  // Update interval when tab changes or data loads
  useEffect(() => {
    const currentSettings = settings.find(s => s.carousel_id === parseInt(activeTab));
    if (currentSettings) {
      setInterval(currentSettings.interval_ms);
    } else {
      setInterval(3500); // Default
    }
  }, [activeTab, settings]);

  const handleSaveSettings = async () => {
    try {
      const carouselId = parseInt(activeTab);
      const currentSettings = settings.find(s => s.carousel_id === carouselId);

      if (currentSettings) {
        const { error } = await supabase
          .from('hero_carousel_settings' as any)
          .update({ interval_ms: interval })
          .eq('id', currentSettings.id);
          
        if (error) throw error;
      } else {
        const { error } = await supabase
          .from('hero_carousel_settings' as any)
          .insert({ carousel_id: carouselId, interval_ms: interval });
          
        if (error) throw error;
      }

      toast({
        title: "Succès",
        description: "Paramètres mis à jour avec succès.",
      });
      fetchData();
    } catch (error) {
      console.error(error);
      toast({
        title: "Erreur",
        description: "Erreur lors de la sauvegarde des paramètres.",
        variant: "destructive",
      });
    }
  };

  const handleSaveSlide = async () => {
    try {
      if (!currentSlide.image_url) {
        toast({
          title: "Erreur",
          description: "Veuillez ajouter une image.",
          variant: "destructive",
        });
        return;
      }

      const slideData = {
        carousel_id: parseInt(activeTab),
        image_url: currentSlide.image_url,
        title: currentSlide.title || '',
        text_2: currentSlide.text_2 || null,
        text_3: currentSlide.text_3 || null,
        text_4: currentSlide.text_4 || null,
        text_5: currentSlide.text_5 || null,
        text_position: currentSlide.text_position || 'center',
        text_style: currentSlide.text_style || 'normal',
        text_color: currentSlide.text_color || '#ffffff',
        font_size: currentSlide.font_size || 'medium',
        font_family: currentSlide.font_family || 'Inter',
        animation_type: currentSlide.animation_type || 'fade-up',
        end_at: currentSlide.end_at ? new Date(currentSlide.end_at).toISOString() : null,
        display_order: currentSlide.display_order || 0,
        is_active: currentSlide.is_active !== undefined ? currentSlide.is_active : true,
      };

      if (isEditing && currentSlide.id) {
        const { error } = await supabase
          .from('hero_carousel_slides' as any)
          .update(slideData)
          .eq('id', currentSlide.id);
        if (error) throw error;
      } else {
        const { error } = await supabase
          .from('hero_carousel_slides' as any)
          .insert(slideData);
        if (error) throw error;
      }

      toast({
        title: "Succès",
        description: isEditing ? "Slide modifié." : "Slide ajouté.",
      });
      setIsDialogOpen(false);
      fetchData();
    } catch (error) {
      console.error(error);
      toast({
        title: "Erreur",
        description: "Erreur lors de la sauvegarde du slide.",
        variant: "destructive",
      });
    }
  };

  const handleDeleteSlide = async (id: string) => {
    if (!confirm("Êtes-vous sûr de vouloir supprimer ce slide ?")) return;

    try {
      const { error } = await supabase
        .from('hero_carousel_slides' as any)
        .delete()
        .eq('id', id);

      if (error) throw error;

      toast({
        title: "Succès",
        description: "Slide supprimé.",
      });
      fetchData();
    } catch (error) {
      console.error(error);
      toast({
        title: "Erreur",
        description: "Erreur lors de la suppression.",
        variant: "destructive",
      });
    }
  };

  const openAddDialog = () => {
    setCurrentSlide({
      carousel_id: parseInt(activeTab),
      text_style: 'normal',
      text_color: '#ffffff',
      display_order: slides.filter(s => s.carousel_id === parseInt(activeTab)).length + 1,
      is_active: true
    });
    setIsEditing(false);
    setIsDialogOpen(true);
  };

  const openEditDialog = (slide: CarouselSlide) => {
    setCurrentSlide(slide);
    setIsEditing(true);
    setIsDialogOpen(true);
  };

  const filteredSlides = slides.filter(s => s.carousel_id === parseInt(activeTab));

  if (loading) {
    return <div className="flex justify-center items-center h-96"><Loader2 className="h-8 w-8 animate-spin" /></div>;
  }

  return (
    <div className="space-y-6 p-6">
      <div className="flex justify-between items-center">
        <h1 className="text-3xl font-bold">Gestion des Carrousels Accueil</h1>
      </div>

      <Tabs value={activeTab} onValueChange={setActiveTab} className="w-full">
        <TabsList className="grid w-full grid-cols-2">
          <TabsTrigger value="1">Carrousel Gauche (1)</TabsTrigger>
          <TabsTrigger value="2">Carrousel Droit (2)</TabsTrigger>
        </TabsList>

        {["1", "2"].map((tabValue) => (
          <TabsContent key={tabValue} value={tabValue} className="space-y-6">
            {/* Global Settings */}
            <Card>
              <CardHeader>
                <CardTitle>Paramètres Généraux</CardTitle>
                <CardDescription>Configuration du carrousel {tabValue}</CardDescription>
              </CardHeader>
              <CardContent className="space-y-4">
                <div className="flex items-end gap-4">
                  <div className="space-y-2 flex-1">
                    <Label htmlFor={`interval-${tabValue}`}>Temps de défilement (ms)</Label>
                    <Input 
                      id={`interval-${tabValue}`} 
                      type="number" 
                      value={interval} 
                      onChange={(e) => setInterval(parseInt(e.target.value))}
                    />
                  </div>
                  <Button onClick={handleSaveSettings}>
                    <Save className="w-4 h-4 mr-2" /> Enregistrer Paramètres
                  </Button>
                </div>
              </CardContent>
            </Card>

            {/* Slides List */}
            <Card>
              <CardHeader className="flex flex-row items-center justify-between">
                <div>
                  <CardTitle>Slides</CardTitle>
                  <CardDescription>Gestion des images et textes</CardDescription>
                </div>
                <Button onClick={openAddDialog}>
                  <Plus className="w-4 h-4 mr-2" /> Ajouter un Slide
                </Button>
              </CardHeader>
              <CardContent>
                <Table>
                  <TableHeader>
                    <TableRow>
                      <TableHead>Ordre</TableHead>
                      <TableHead>Image</TableHead>
                      <TableHead>Texte</TableHead>
                      <TableHead>Style</TableHead>
                      <TableHead>Statut</TableHead>
                      <TableHead className="text-right">Actions</TableHead>
                    </TableRow>
                  </TableHeader>
                  <TableBody>
                    {filteredSlides.length === 0 ? (
                      <TableRow>
                        <TableCell colSpan={6} className="text-center py-4">Aucun slide configuré</TableCell>
                      </TableRow>
                    ) : (
                      filteredSlides.map((slide) => (
                        <TableRow key={slide.id}>
                          <TableCell>{slide.display_order}</TableCell>
                          <TableCell>
                            <img src={slide.image_url} alt="Slide" className="w-16 h-10 object-cover rounded" />
                          </TableCell>
                          <TableCell>
                            <div className="font-medium">{slide.title}</div>
                            <div className="text-xs text-muted-foreground" style={{ color: slide.text_color || undefined }}>
                              {slide.text_color}
                            </div>
                          </TableCell>
                          <TableCell>
                            <span className="capitalize">{slide.text_style}</span>
                          </TableCell>
                          <TableCell>
                            {!slide.is_active ? (
                              <span className="text-gray-400">Inactif</span>
                            ) : slide.end_at && new Date(slide.end_at) < new Date() ? (
                              <span className="text-orange-500 font-medium">Expiré</span>
                            ) : (
                              <span className="text-green-600 font-medium">Actif</span>
                            )}
                          </TableCell>
                          <TableCell className="text-right">
                            <Button variant="ghost" size="icon" onClick={() => openEditDialog(slide)}>
                              <Pencil className="w-4 h-4" />
                            </Button>
                            <Button variant="ghost" size="icon" className="text-red-500" onClick={() => handleDeleteSlide(slide.id)}>
                              <Trash2 className="w-4 h-4" />
                            </Button>
                          </TableCell>
                        </TableRow>
                      ))
                    )}
                  </TableBody>
                </Table>
              </CardContent>
            </Card>
          </TabsContent>
        ))}
      </Tabs>

      {/* Add/Edit Dialog */}
      <Dialog open={isDialogOpen} onOpenChange={setIsDialogOpen}>
        <DialogContent className="max-w-lg">
          <DialogHeader>
            <DialogTitle>{isEditing ? "Modifier le Slide" : "Ajouter un Slide"}</DialogTitle>
            <DialogDescription>Configurez l'image et le texte du slide.</DialogDescription>
          </DialogHeader>
          
          <div className="space-y-4 py-4">
            <div className="space-y-2">
              <Label>Image</Label>
              <div className="border rounded-md p-4">
                 {currentSlide.image_url ? (
                   <div className="relative group">
                     <img src={currentSlide.image_url} alt="Preview" className="w-full h-40 object-cover rounded-md" />
                     <Button 
                       variant="destructive" 
                       size="icon" 
                       className="absolute top-2 right-2 opacity-0 group-hover:opacity-100 transition-opacity"
                       onClick={() => setCurrentSlide({...currentSlide, image_url: ''})}
                     >
                       <Trash2 className="w-4 h-4" />
                     </Button>
                   </div>
                 ) : (
                   <ImageUpload
                    onImagesChange={(urls) => {
                      if (urls.length > 0) {
                        setCurrentSlide({...currentSlide, image_url: urls[0]});
                      }
                    }}
                    maxImages={1}
                    bucket="announcement-images"
                    maxWidth={1920}
                    compressionQuality={0.8}
                    minWidth={1200}
                    maxSizeInMB={5}
                  />
                 )}
              </div>
            </div>

            <div className="space-y-2">
                  <Label htmlFor="title">Texte Ligne 1 (Principal)</Label>
                  <Input 
                    id="title" 
                    value={currentSlide.title || ''} 
                    onChange={(e) => setCurrentSlide({...currentSlide, title: e.target.value})} 
                    placeholder="Titre principal"
                  />
                </div>
                
                <div className="grid grid-cols-2 gap-4">
                  <div className="space-y-2">
                    <Label htmlFor="text_2">Texte Ligne 2</Label>
                    <Input 
                      id="text_2" 
                      value={currentSlide.text_2 || ''} 
                      onChange={(e) => setCurrentSlide({...currentSlide, text_2: e.target.value})} 
                      placeholder="Ligne 2"
                    />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="text_3">Texte Ligne 3</Label>
                    <Input 
                      id="text_3" 
                      value={currentSlide.text_3 || ''} 
                      onChange={(e) => setCurrentSlide({...currentSlide, text_3: e.target.value})} 
                      placeholder="Ligne 3"
                    />
                  </div>
                </div>

                <div className="grid grid-cols-2 gap-4">
                  <div className="space-y-2">
                    <Label htmlFor="text_4">Texte Ligne 4</Label>
                    <Input 
                      id="text_4" 
                      value={currentSlide.text_4 || ''} 
                      onChange={(e) => setCurrentSlide({...currentSlide, text_4: e.target.value})} 
                      placeholder="Ligne 4"
                    />
                  </div>
                  <div className="space-y-2">
                    <Label htmlFor="text_5">Texte Ligne 5</Label>
                    <Input 
                      id="text_5" 
                      value={currentSlide.text_5 || ''} 
                      onChange={(e) => setCurrentSlide({...currentSlide, text_5: e.target.value})} 
                      placeholder="Ligne 5"
                    />
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="text_position">Position du Texte / Langue</Label>
                  <Select 
                    value={currentSlide.text_position || 'center'} 
                    onValueChange={(val: any) => setCurrentSlide({...currentSlide, text_position: val})}
                  >
                    <SelectTrigger>
                      <SelectValue placeholder="Position" />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="center">Centre (Défaut)</SelectItem>
                      <SelectItem value="top_left">Haut Gauche (Français)</SelectItem>
                      <SelectItem value="top_right">Haut Droite (Arabe)</SelectItem>
                      <SelectItem value="bottom_left">Bas Gauche (Français)</SelectItem>
                      <SelectItem value="bottom_right">Bas Droite (Arabe)</SelectItem>
                    </SelectContent>
                  </Select>
                </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="text_style">Style du Texte</Label>
                <Select 
                  value={currentSlide.text_style || 'normal'} 
                  onValueChange={(val: any) => setCurrentSlide({...currentSlide, text_style: val})}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Choisir un style" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="normal">Normal</SelectItem>
                    <SelectItem value="gradient">Dégradé (Gradient)</SelectItem>
                    <SelectItem value="neon">Néon</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-2">
                <Label htmlFor="text_color">Couleur / CSS</Label>
                <Input 
                  id="text_color" 
                  value={currentSlide.text_color || ''} 
                  onChange={(e) => setCurrentSlide({...currentSlide, text_color: e.target.value})} 
                  placeholder="#ffffff ou linear-gradient(...)"
                />
                <p className="text-[10px] text-muted-foreground">Pour dégradé: linear-gradient(45deg, #f06, #9f6)</p>
              </div>
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="font_size">Taille Police</Label>
                <Select 
                  value={currentSlide.font_size || 'medium'} 
                  onValueChange={(val: any) => setCurrentSlide({...currentSlide, font_size: val})}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Taille" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="xs">Très Petit (XS)</SelectItem>
                    <SelectItem value="small">Petit (Small)</SelectItem>
                    <SelectItem value="medium">Moyen (Medium)</SelectItem>
                    <SelectItem value="large">Grand (Large)</SelectItem>
                    <SelectItem value="xl">Extra Grand (XL)</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-2">
                <Label htmlFor="font_family">Police (Font)</Label>
                <Select 
                  value={currentSlide.font_family || 'Inter'} 
                  onValueChange={(val: any) => setCurrentSlide({...currentSlide, font_family: val})}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Police" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="Inter">Inter (Défaut)</SelectItem>
                    <SelectItem value="Playfair Display">Playfair Display (Élégant)</SelectItem>
                    <SelectItem value="Roboto">Roboto (Moderne)</SelectItem>
                    <SelectItem value="Montserrat">Montserrat (Gras)</SelectItem>
                    <SelectItem value="Courier Prime">Courier Prime (Retro)</SelectItem>
                    <SelectItem value="Open Sans">Open Sans (Clair)</SelectItem>
                    <SelectItem value="Lato">Lato (Amical)</SelectItem>
                    <SelectItem value="Poppins">Poppins (Géométrique)</SelectItem>
                    <SelectItem value="Merriweather">Merriweather (Lisible)</SelectItem>
                    <SelectItem value="Oswald">Oswald (Impact)</SelectItem>
                    <SelectItem value="Dancing Script">Dancing Script (Manuscrit)</SelectItem>
                    <SelectItem value="Lobster">Lobster (Artistique)</SelectItem>
                  </SelectContent>
                </Select>
              </div>
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="animation_type">Animation Texte</Label>
                <Select 
                  value={currentSlide.animation_type || 'fade-up'} 
                  onValueChange={(val: any) => setCurrentSlide({...currentSlide, animation_type: val})}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Animation" />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="fade-up">Fondu vers le haut</SelectItem>
                    <SelectItem value="slide-left">Glissement gauche</SelectItem>
                    <SelectItem value="zoom">Zoom In</SelectItem>
                    <SelectItem value="typewriter">Machine à écrire</SelectItem>
                  </SelectContent>
                </Select>
              </div>

              <div className="space-y-2">
                <Label htmlFor="end_at">Fin Publication (Optionnel)</Label>
                <Input 
                  id="end_at" 
                  type="datetime-local"
                  value={formatDateForInput(currentSlide.end_at)} 
                  onChange={(e) => setCurrentSlide({...currentSlide, end_at: e.target.value || null})} 
                />
              </div>
            </div>

            <div className="grid grid-cols-2 gap-4">
              <div className="space-y-2">
                <Label htmlFor="display_order">Ordre d'affichage</Label>
                <Input 
                  id="display_order" 
                  type="number" 
                  value={currentSlide.display_order || 0} 
                  onChange={(e) => setCurrentSlide({...currentSlide, display_order: parseInt(e.target.value)})} 
                />
              </div>

              <div className="flex items-center space-x-2 pt-8">
                <Switch 
                  id="is_active" 
                  checked={currentSlide.is_active} 
                  onCheckedChange={(checked) => setCurrentSlide({...currentSlide, is_active: checked})} 
                />
                <Label htmlFor="is_active">Actif</Label>
              </div>
            </div>
          </div>

          <DialogFooter>
            <Button variant="outline" onClick={() => setIsDialogOpen(false)}>Annuler</Button>
            <Button onClick={handleSaveSlide}>Enregistrer</Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
};

export default HeroCarouselManagement;
