import { useState, useEffect, useCallback, useMemo } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { supabase } from '@/integrations/supabase/client';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Checkbox } from '@/components/ui/checkbox';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { Badge } from '@/components/ui/badge';
import { useToast } from '@/hooks/use-toast';
import { Navigate, useNavigate } from 'react-router-dom';
import { Plus, Loader2, FileText, MapPin, DollarSign, Camera, Check, Star, Phone, Mail, Clock } from 'lucide-react';
import GeolocationPicker from '@/components/geolocation/GeolocationPicker';
import ImageUpload from '@/components/ui/ImageUpload';
import { GeolocationCoords } from '@/hooks/useGeolocation';
import { Category } from '@/data/categories';
import { getSubcategoriesByCategoryId, getSubSubcategoriesBySubcategoryId } from '@/data/subcategories';
import { MenuCategory } from '@/data/categoryTypes';
import { wilayas } from '@/data/wilayaData';
import { communes } from '@/data/communeData';
import { logger } from '@/utils/silentLogger';
import { useCategories } from '@/services/supabaseCategoriesService';
import { educationLoisirsFr } from '@/data/categories/megaMenuStructures/educationLoisirs/fr';
import { immobilierMaisonFr } from '@/data/categories/megaMenuStructures/immobilierMaison/fr';

import CategoryAttributesRenderer from '@/components/announcements/CategoryAttributesRenderer';

const aggregateAttributesFromCategory = (category: MenuCategory): Record<string, string[]> => {
  const result: Record<string, string[]> = {};

  const visit = (node: any) => {
    if (node.attributes) {
      Object.entries(node.attributes as Record<string, string[]>).forEach(([key, values]) => {
        if (!result[key]) {
          result[key] = values;
        } else {
          const set = new Set(result[key]);
          (values as string[]).forEach(v => set.add(v));
          result[key] = Array.from(set);
        }
      });
    }
    if (node.subcategories && node.subcategories.length > 0) {
      node.subcategories.forEach((sub: any) => visit(sub));
    }
  };

  visit(category);
  return result;
};

const mergeAttributes = (
  primary: Record<string, string[]> = {},
  fallback: Record<string, string[]> = {}
): Record<string, string[]> => {
  const merged: Record<string, string[]> = { ...primary };
  Object.entries(fallback).forEach(([key, values]) => {
    if (!merged[key] || merged[key].length === 0) {
      merged[key] = values;
    } else {
      const set = new Set(merged[key]);
      values.forEach(v => set.add(v));
      merged[key] = Array.from(set);
    }
  });
  return merged;
};

const normalizeKey = (key: string) =>
  (key || "")
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .replace(/\s+/g, "_")
    .replace(/[^a-z0-9_]/g, "")
    .trim();

const pickAttributeValue = (attributes: Record<string, any>, candidateKeys: string[]) => {
  if (!attributes || typeof attributes !== "object") return undefined;
  const normalizedCandidates = candidateKeys.map(normalizeKey).filter(Boolean);
  const exact = new Set(normalizedCandidates);

  for (const [rawKey, rawValue] of Object.entries(attributes)) {
    const nk = normalizeKey(rawKey);
    if (!exact.has(nk)) continue;
    if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
    return rawValue;
  }

  for (const [rawKey, rawValue] of Object.entries(attributes)) {
    const nk = normalizeKey(rawKey);
    if (!nk) continue;
    const matches = normalizedCandidates.some((c) => (c.length >= 4 ? nk.includes(c) || c.includes(nk) : nk === c));
    if (!matches) continue;
    if (Array.isArray(rawValue)) return rawValue.length ? rawValue[0] : undefined;
    return rawValue;
  }
  return undefined;
};

const toNumberOrUndefined = (value: unknown) => {
  if (typeof value === "number" && Number.isFinite(value)) return value;
  if (typeof value !== "string") return undefined;
  const cleaned = value.replace(/[^\d]/g, "");
  if (!cleaned) return undefined;
  const n = Number(cleaned);
  return Number.isFinite(n) ? n : undefined;
};

const toBooleanOrUndefined = (value: unknown) => {
  if (typeof value === "boolean") return value;
  if (typeof value !== "string") return undefined;
  const normalized = value
    .toLowerCase()
    .normalize("NFD")
    .replace(/[\u0300-\u036f]/g, "")
    .trim();
  const truthy = ["oui", "yes", "true", "1", "valide", "valid", "claire", "clear", "100"].some((t) =>
    normalized.includes(t),
  );
  const falsy = ["non", "no", "false", "0", "pas", "invalide", "invalid"].some((t) =>
    normalized.includes(t),
  );
  if (truthy && !falsy) return true;
  if (falsy && !truthy) return false;
  return undefined;
};

const toStringArrayOrUndefined = (value: unknown) => {
  if (Array.isArray(value)) {
    const cleaned = value.map((v) => String(v).trim()).filter(Boolean);
    return cleaned.length ? cleaned : undefined;
  }
  if (typeof value === "string") {
    const parts = value
      .split(",")
      .map((s) => s.trim())
      .filter(Boolean);
    return parts.length ? parts : undefined;
  }
  return undefined;
};

const buildVehicleDetailsInsert = (selectedAttributes: Record<string, string | string[]>) => {
  const brand = pickAttributeValue(selectedAttributes, ["brand", "marque", "vehicle_brand"]);
  const model = pickAttributeValue(selectedAttributes, ["model", "modele", "modèle", "vehicle_model"]);
  const version = pickAttributeValue(selectedAttributes, ["version"]);

  const year = toNumberOrUndefined(
    pickAttributeValue(selectedAttributes, [
      "year",
      "annee",
      "année",
      "an",
      "vehicle_year",
      "annee_de_mise_en_circulation",
    ]),
  );
  const purchase_year = toNumberOrUndefined(
    pickAttributeValue(selectedAttributes, [
      "purchase_year",
      "annee_achat",
      "année_achat",
      "annee_dachat",
      "année_dachat",
      "annee_fabrication",
      "année_fabrication",
      "annee_achat_fabrication",
      "annee_dachat_fabrication",
      "annee_achatfabrication",
      "annee_dachatfabrication",
    ]),
  );
  const month = toNumberOrUndefined(pickAttributeValue(selectedAttributes, ["month", "mois"]));
  const registrationDateCandidate =
    typeof pickAttributeValue(selectedAttributes, ["registration_date", "date_mise_en_circulation", "date_immatriculation"]) ===
    "string"
      ? (pickAttributeValue(selectedAttributes, ["registration_date", "date_mise_en_circulation", "date_immatriculation"]) as string)
      : undefined;

  const registration_date =
    registrationDateCandidate && !Number.isNaN(Date.parse(registrationDateCandidate))
      ? registrationDateCandidate
      : year
        ? (() => {
            const safeMonth = month && month >= 1 && month <= 12 ? month : 1;
            const composed = `${String(year).padStart(4, "0")}-${String(safeMonth).padStart(2, "0")}-01`;
            return Number.isNaN(Date.parse(composed)) ? undefined : composed;
          })()
        : undefined;

  const fuel_type = pickAttributeValue(selectedAttributes, [
    "fuel",
    "fuel_type",
    "carburant",
    "energie",
    "énergie",
    "carburant_energie",
    "energie_carburant",
  ]);
  const gearbox = pickAttributeValue(selectedAttributes, ["gearbox", "transmission", "boite", "boite_de_vitesse", "boite_de_vitesses", "boîte"]);
  const mileage = toNumberOrUndefined(
    pickAttributeValue(selectedAttributes, ["mileage", "kilometrage", "kilométrage", "km", "distance"]),
  );
  const fiscal_power = pickAttributeValue(selectedAttributes, ["fiscal_power", "puissance_fiscale", "cv"]);
  const technical_control = toBooleanOrUndefined(
    pickAttributeValue(selectedAttributes, ["technical_control", "controle_technique", "contrôle_technique"]),
  );
  const grey_card_crossed = toBooleanOrUndefined(
    pickAttributeValue(selectedAttributes, ["grey_card_crossed", "carte_grise_barree", "carte_grise_barrée"]),
  );
  const equipment = toStringArrayOrUndefined(
    pickAttributeValue(selectedAttributes, ["equipment", "equipement", "équipement", "options", "equipements"]),
  );

  const payload: Record<string, any> = {};
  if (typeof brand === "string" && brand.trim()) payload.brand = brand.trim();
  if (typeof model === "string" && model.trim()) payload.model = model.trim();
  if (typeof version === "string" && version.trim()) payload.version = version.trim();
  if (typeof registration_date === "string") payload.registration_date = registration_date;
  if (typeof purchase_year === "number") payload.purchase_year = purchase_year;
  if (typeof fuel_type === "string" && fuel_type.trim()) payload.fuel_type = fuel_type.trim();
  if (typeof gearbox === "string" && gearbox.trim()) payload.gearbox = gearbox.trim();
  if (typeof mileage === "number") payload.mileage = mileage;
  if (typeof fiscal_power === "string" && fiscal_power.trim()) payload.fiscal_power = fiscal_power.trim();
  if (typeof technical_control === "boolean") payload.technical_control = technical_control;
  if (typeof grey_card_crossed === "boolean") payload.grey_card_crossed = grey_card_crossed;
  if (equipment) payload.equipment = equipment;
  return payload;
};

const DeposerAnnonce = () => {
  const { t, language, isRTL } = useSafeI18nWithRouter();
  const { user, loading: authLoading } = useAuth();
  const { toast } = useToast();
  const navigate = useNavigate();
  const [loading, setLoading] = useState(false);
  const [categories, setCategories] = useState<Category[]>([]);
  // Removed explicit state for lists to avoid sync issues
  // const [subcategories, setSubcategories] = useState<SimpleSubCategory[]>([]);
  // const [subSubcategories, setSubSubcategories] = useState<SimpleSubSubCategory[]>([]);
  const [selectedSubcategoryL2, setSelectedSubcategoryL2] = useState<string>('');
  const [menuCategories, setMenuCategories] = useState<MenuCategory[]>([]);
  const [images, setImages] = useState<string[]>([]);
  const [selectedLocation, setSelectedLocation] = useState<GeolocationCoords | null>(null);
  
  const [currentAttributes, setCurrentAttributes] = useState<Record<string, string[]>>({});
  const [selectedAttributeValues, setSelectedAttributeValues] = useState<Record<string, string | string[]>>({});

  const [formData, setFormData] = useState({
    title: '',
    description: '',
    category_id: '',
    subcategory_id: '',
    price: '',
    currency: 'DZD',
    condition: 'neuf',
    phone: '',
    email: '',
    wilaya: '',
    commune: '',
    location: '',
    expires_at: '',
    is_urgent: false,
    is_featured: false
  });

  // Définir les conditions avec des clés de traduction appropriées
  const getConditions = useCallback(() => [
    { value: 'neuf', label: t('search.advanced.new') },
    { value: 'tres_bon_etat', label: t('announcements.condition.tresBon') },
    { value: 'bon_etat', label: t('announcements.condition.bon') },
    { value: 'etat_correct', label: t('announcements.condition.correct') },
    { value: 'pour_pieces', label: t('search.advanced.forParts') },
  ], [t]);

  const [conditions, setConditions] = useState(getConditions());

  // Mettre à jour les conditions lorsque la langue change
  useEffect(() => {
    setConditions(getConditions());
  }, [language, getConditions]);

  // Gestionnaire d'erreurs pour capturer les erreurs de rendu
  useEffect(() => {
    const handleError = (event: ErrorEvent) => {
      logger.error('Error in DeposerAnnonce:', event.error);
    };

    window.addEventListener('error', handleError);
    return () => window.removeEventListener('error', handleError);
  }, []);

  useEffect(() => {
    if (user?.email) {
      setFormData(prev => ({ ...prev, email: user.email || '' }));
    }
  }, [user]);

  const { data: fetchedCategories } = useCategories(language);
  useEffect(() => {
    if (fetchedCategories && fetchedCategories.length) {
      setMenuCategories(fetchedCategories as MenuCategory[]);
      setCategories(
        (fetchedCategories as MenuCategory[]).map((c) => ({ id: c.id, name: c.name, slug: c.slug }))
      );
    }
  }, [fetchedCategories]);

  // Derived state for lists - guarantees sync with selection
  const subcategories = useMemo(() => {
    return formData.category_id 
      ? getSubcategoriesByCategoryId(formData.category_id, menuCategories)
      : [];
  }, [formData.category_id, menuCategories]);
    
  const subSubcategories = useMemo(() => {
    if (selectedSubcategoryL2) {
      const subs = getSubSubcategoriesBySubcategoryId(selectedSubcategoryL2, menuCategories);
      return subs;
    }
    return [];
  }, [selectedSubcategoryL2, menuCategories]);

  const selectedWilayaCode = useMemo(() => {
    const selected = wilayas.find(w => w.name === formData.wilaya);
    return selected?.code != null ? String(selected.code) : '';
  }, [formData.wilaya]);

  const availableCommunes = useMemo(() => {
    return selectedWilayaCode ? (communes[selectedWilayaCode] ?? []) : [];
  }, [selectedWilayaCode]);

  const handleInputChange = (field: string, value: string | boolean) => {
    setFormData(prev => ({ ...prev, [field]: value }));
  };

  const handleCategoryChange = (categoryId: string) => {
    if (categoryId === formData.category_id) return;
    setFormData(prev => ({ ...prev, category_id: categoryId, subcategory_id: '' }));
    setSelectedSubcategoryL2('');

    const rootCat = menuCategories.find(c => c.id === categoryId);
    let newAttrs: Record<string, string[]> = {};
    if (rootCat?.attributes && Object.keys(rootCat.attributes).length > 0) {
      newAttrs = rootCat.attributes;
    } else if (rootCat?.subcategories && rootCat.subcategories.length > 0) {
      rootCat.subcategories.forEach(sub => {
        if (sub.attributes) {
          Object.entries(sub.attributes).forEach(([key, values]) => {
            if (!newAttrs[key]) {
              newAttrs[key] = values;
            } else {
              const s = new Set(newAttrs[key]);
              values.forEach(v => s.add(v));
              newAttrs[key] = Array.from(s);
            }
          });
        }
      });
    }
    if (rootCat?.slug === 'education-loisirs') {
      const localAggregated = aggregateAttributesFromCategory(educationLoisirsFr);
      Object.entries(localAggregated).forEach(([key, values]) => {
        if (!newAttrs[key]) {
          newAttrs[key] = values;
        } else {
          const set = new Set(newAttrs[key]);
          values.forEach(v => set.add(v));
          newAttrs[key] = Array.from(set);
        }
      });
    }
    if (rootCat?.slug === 'immobilier-maison') {
      const localAggregated = aggregateAttributesFromCategory(immobilierMaisonFr);
      Object.entries(localAggregated).forEach(([key, values]) => {
        if (!newAttrs[key]) {
          newAttrs[key] = values;
        } else {
          const set = new Set(newAttrs[key]);
          values.forEach(v => set.add(v));
          newAttrs[key] = Array.from(set);
        }
      });
    }
    setCurrentAttributes(newAttrs);
  };

  // Recovery effect: Restore selectedSubcategoryL2 if it's lost but we have a sub-subcategory selected
  useEffect(() => {
    if (formData.subcategory_id && !selectedSubcategoryL2 && menuCategories.length > 0) {
      for (const cat of menuCategories) {
        if (cat.subcategories) {
          for (const sub of cat.subcategories) {
            // Check if this subcategory contains the selected sub-subcategory
            if (sub.subcategories?.some(child => child.id === formData.subcategory_id)) {
              setSelectedSubcategoryL2(sub.id);
              return;
            }
          }
        }
      }
    }
  }, [formData.subcategory_id, selectedSubcategoryL2, menuCategories]);

  const handleSubcategoryL2Change = (subcategoryId: string) => {
    // Only update if actually changed to avoid resets
    if (subcategoryId === selectedSubcategoryL2) return;

    setSelectedSubcategoryL2(subcategoryId);
    // Always set the subcategory_id to the selected L2 category immediately
    // This ensures attributes appear immediately as requested
    setFormData(prev => ({
      ...prev,
      subcategory_id: subcategoryId
    }));
    
    // Force immediate attribute update for L2
    const sub = subcategories.find(s => s.id === subcategoryId);
    if (sub) {
      const rootCat = menuCategories.find(c => c.id === formData.category_id);
      let nextAttributes = sub.attributes ?? {};
      if (rootCat?.slug === 'immobilier-maison') {
        const localSub = immobilierMaisonFr.subcategories?.find(s => s.slug === sub.slug);
        if (localSub?.attributes) {
          nextAttributes = mergeAttributes(nextAttributes, localSub.attributes);
        }
      }
      setCurrentAttributes(nextAttributes);
    }
  };

  const handleSubSubcategoryChange = (leafId: string) => {
    setFormData(prev => ({ ...prev, subcategory_id: leafId }));
  };

  // Effect to update attributes when selection changes
  useEffect(() => {
    let newAttributes: Record<string, string[]> = {};
    let isL3Selected = false;

    // Logging pour débogage
    console.log("🔍 Debug Attributes Calculation:", { 
      category_id: formData.category_id, 
      subcategory_id: formData.subcategory_id, 
      selectedSubcategoryL2 
    });

    if (formData.subcategory_id && formData.category_id) {
      // Find the L3 subcategory
      const rootCat = menuCategories.find(c => c.id === formData.category_id);
      
      let subSub: any = null;
      if (rootCat?.subcategories) {
        for (const sub of rootCat.subcategories) {
          if (sub.subcategories) {
            const found = sub.subcategories.find(s => s.id === formData.subcategory_id);
            if (found) {
              subSub = found;
              break;
            }
          }
        }
      }

      if (subSub) {
        isL3Selected = true;
        console.log("Found L3 subcategory:", subSub.slug, "Attributes:", subSub.attributes);
        if (subSub.attributes) {
          newAttributes = subSub.attributes;
        }
      }
    }
    
    // If not L3 (or L3 has no attributes), try L2
    if (Object.keys(newAttributes).length === 0 && selectedSubcategoryL2) {
      // Only use L2 attributes if we are NOT on a specific L3 that explicitly has no attributes (though unlikely)
      // Or if we are simply on L2 selection
      
      const sub = subcategories.find(s => s.id === selectedSubcategoryL2);
      console.log("Checking L2 subcategory:", sub?.slug, "Attributes:", sub?.attributes);
      if (sub) {
         // However, user wants attributes "dès la selection de la deuxième case".
         // So if L3 is NOT selected, we MUST show L2.
        const rootCat = menuCategories.find(c => c.id === formData.category_id);
        let nextAttributes = sub.attributes ?? {};
        
        console.log("DEBUG L2 Merge - Root:", rootCat?.slug, "Sub:", sub.slug);
        
        if (rootCat?.slug === 'immobilier-maison') {
          const localSub = immobilierMaisonFr.subcategories?.find(s => s.slug === sub.slug);
          console.log("DEBUG L2 Merge - Local Match:", localSub ? "Found" : "Not Found", localSub?.attributes);
          if (localSub?.attributes) {
            nextAttributes = mergeAttributes(nextAttributes, localSub.attributes);
          }
        }
        if (!isL3Selected || Object.keys(newAttributes).length === 0) {
          newAttributes = nextAttributes;
        }
      }
    }

    // If still no attributes and we have a root category selected, try L1
    if (Object.keys(newAttributes).length === 0 && formData.category_id && !selectedSubcategoryL2) {
      const rootCat = menuCategories.find(c => c.id === formData.category_id);
      console.log("Checking Root category:", rootCat?.slug, "Attributes:", rootCat?.attributes);
      
      // Special fallback for education-loisirs using local data if needed
      if (rootCat?.slug === 'education-loisirs') {
        const localAggregated = aggregateAttributesFromCategory(educationLoisirsFr);
        // Merge with existing attributes if any
        if (rootCat.attributes) {
          Object.entries(rootCat.attributes).forEach(([key, values]) => {
            if (!newAttributes[key]) newAttributes[key] = values as string[];
          });
        }
        // Add local attributes
        Object.entries(localAggregated).forEach(([key, values]) => {
          if (!newAttributes[key]) {
            newAttributes[key] = values;
          } else {
            const set = new Set(newAttributes[key]);
            values.forEach(v => set.add(v));
            newAttributes[key] = Array.from(set);
          }
        });
      }
      
      if (Object.keys(newAttributes).length === 0) {
        if (rootCat?.attributes) {
          newAttributes = rootCat.attributes;
        } else if (rootCat?.subcategories) {
          // Fallback: Aggregate attributes from subcategories to show what's available
          // This helps in verifying the existence of attributes as requested
          rootCat.subcategories.forEach(sub => {
            if (sub.attributes) {
              Object.entries(sub.attributes).forEach(([key, values]) => {
                if (!newAttributes[key]) {
                  newAttributes[key] = values;
                } else {
                  // Merge unique values
                  const existing = new Set(newAttributes[key]);
                  values.forEach(v => existing.add(v));
                  newAttributes[key] = Array.from(existing);
                }
              });
            }
          });
        }
      }
    }
    
    // Fallback for education-loisirs subcategories if attributes are missing from Supabase
    if (Object.keys(newAttributes).length === 0 && selectedSubcategoryL2) {
      const rootCat = menuCategories.find(c => c.id === formData.category_id);
      const sub = subcategories.find(s => s.id === selectedSubcategoryL2);
      const subSlug = sub?.slug;
      if (rootCat?.slug === 'education-loisirs') {
        const localSub = educationLoisirsFr.subcategories?.find(s => s.slug === subSlug || s.id === selectedSubcategoryL2);
        if (localSub?.attributes) {
          newAttributes = localSub.attributes;
        }
      }
      if (rootCat?.slug === 'immobilier-maison') {
        const localSub = immobilierMaisonFr.subcategories?.find(s => s.slug === subSlug || s.id === selectedSubcategoryL2);
        if (localSub?.attributes) {
          newAttributes = localSub.attributes;
        }
      }
    }
    
    // Inject Téléphonie defaults if the selected category is Telephonie and attributes are missing or incomplete
    try {
      const telephonieRoot = menuCategories.find(c => c.slug === 'telephonie');
      const isTelephonieSelection = (() => {
        if (!telephonieRoot) return false;
        if (telephonieRoot.id === formData.category_id) return true;
        const inL2 = telephonieRoot.subcategories?.some(s => s.id === formData.category_id);
        if (inL2) return true;
        const inL3 = telephonieRoot.subcategories
          ?.flatMap(s => s.subcategories || [])
          .some(ss => ss.id === formData.category_id);
        return inL3 || (selectedSubcategoryL2 ? telephonieRoot.subcategories?.some(s => s.id === selectedSubcategoryL2) : false);
      })();
      
      if (isTelephonieSelection) {
        // Provide friendly defaults only if absent
        if (!newAttributes['storage'] && !newAttributes['Stockage']) {
          newAttributes['storage'] = ['64 Go', '128 Go', '256 Go', '512 Go', '1 To'];
        }
        if (!newAttributes['ram'] && !newAttributes['RAM']) {
          newAttributes['ram'] = ['4 Go', '6 Go', '8 Go', '12 Go', '16 Go'];
        }
        if (!newAttributes['battery_health'] && !newAttributes['Santé Batterie'] && !newAttributes['Sante Batterie']) {
          newAttributes['battery_health'] = [];
        }
      }
    } catch {
      // Silent fallback: attributes injection is optional
    }
    
    console.log("✅ Final Calculated Attributes:", newAttributes);
    setCurrentAttributes(newAttributes);
    
    // Clean up selected values that are no longer valid
    setSelectedAttributeValues(prev => {
      const validValues: Record<string, string | string[]> = {};
      Object.keys(prev).forEach(key => {
        if (key in newAttributes) {
          validValues[key] = prev[key];
        }
      });
      return validValues;
    });

  }, [selectedSubcategoryL2, formData.subcategory_id, formData.category_id, subcategories, subSubcategories, menuCategories]);

  const handleAttributeChange = (key: string, value: string | string[]) => {
    setSelectedAttributeValues(prev => ({ ...prev, [key]: value }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!user) {
      toast({
        title: t('auth.errors.loginFailed') || "Connexion requise",
        description: t('auth.errors.loginRequired') || "Vous devez être connecté pour publier une annonce",
        variant: 'destructive',
      });
      return;
    }

    // Validation
    if (!formData.title.trim() || !formData.category_id || !formData.price || !formData.wilaya) {
      toast({
        title: t('createAd.errors.createFailed') || "Champs obligatoires",
        description: t('createAd.errors.createFailedDesc') || "Veuillez remplir tous les champs obligatoires",
        variant: 'destructive',
      });
      return;
    }

    setLoading(true);

    try {
      // Append attributes to description
      let descriptionWithAttributes = formData.description;
      
      // Add subcategory information to description since we can't store it in a separate column yet
      if (formData.subcategory_id) {
        const sub = subcategories.find(s => s.id === formData.subcategory_id);
        if (sub) {
          descriptionWithAttributes += `\n\nType: ${sub.name}`;
          
          // Add sub-subcategory if selected
          if (formData.subcategory_id !== selectedSubcategoryL2) {
             // If subcategory_id is the leaf, we might need to find the L2 name too
             const l2 = subcategories.find(s => s.id === selectedSubcategoryL2);
             if (l2) {
                // Adjust logic: if we are here, sub is likely the L3 or L2.
                // Actually, logic is: formData.subcategory_id IS the selected ID.
                // If it's L3, we want to show L2 > L3.
             }
          }
        }
      }

      if (Object.keys(selectedAttributeValues).length > 0) {
        descriptionWithAttributes += '\n\n--- Détails ---\n';
        Object.entries(selectedAttributeValues).forEach(([key, value]) => {
          const formattedKey = t(`attributes.${key}`) !== `attributes.${key}` ? t(`attributes.${key}`) : key;
          const formattedValue = Array.isArray(value)
            ? value
                .map(v => (t(`attributes.values.${v}`) !== `attributes.values.${v}` ? t(`attributes.values.${v}`) : v))
                .join(', ')
            : (t(`attributes.values.${value}`) !== `attributes.values.${value}` ? t(`attributes.values.${value}`) : value);
          descriptionWithAttributes += `${formattedKey}: ${formattedValue}\n`;
        });
      }

      // Prepare the announcement data
      const announcementData = {
        title: formData.title,
        description: descriptionWithAttributes,
        price: parseFloat(formData.price),
        currency: formData.currency,
        condition: formData.condition,
        category_id: formData.category_id,
        wilaya: formData.wilaya,
        commune: formData.commune || null,
        address: formData.location, // Mapping location to address
        phone_number: formData.phone,
        email: formData.email,
        images: images, // Array of image URLs
        is_urgent: formData.is_urgent,
        attributes: selectedAttributeValues,
        user_id: user.id,
        status: 'active'
      };

      const { data, error } = await supabase
        .from('announcements')
        // eslint-disable-next-line @typescript-eslint/no-explicit-any
        .insert(announcementData as any)
        .select()
        .single();

      if (error) {
        throw error;
      }

      const selectedCategorySlug =
        menuCategories.find((c) => c.id === formData.category_id)?.slug ??
        menuCategories.find((c) => c.slug === formData.category_id)?.slug;
      const isVehicleCategory =
        typeof selectedCategorySlug === "string" &&
        (selectedCategorySlug.includes("vehicule") || selectedCategorySlug.includes("vehicules"));
      const vehicleDetailsInsert = buildVehicleDetailsInsert(selectedAttributeValues);

      if (isVehicleCategory && Object.keys(vehicleDetailsInsert).length > 0) {
        const { error: vehicleError } = await supabase.from("vehicle_details").insert({
          announcement_id: data.id,
          ...vehicleDetailsInsert,
        });

        if (vehicleError) {
          logger.error("Error creating vehicle_details:", vehicleError);
          toast({
            title: t('createAd.success.title'),
            description:
              t('createAd.success.description') +
              " " +
              (t('common.error') !== 'common.error'
                ? `(${t('common.error')}: détails véhicule non enregistrés)`
                : "(Erreur: détails véhicule non enregistrés)"),
          });
          navigate(`/annonce/${data.id}`);
          return;
        }
      }

      toast({
        title: t('createAd.success.title'),
        description: t('createAd.success.description'),
      });

      // Redirect to the new announcement
      navigate(`/annonce/${data.id}`);
      
    } catch (error) {
      logger.error('Error creating announcement:', error);
      toast({
        title: t('createAd.errors.createFailed') || "Erreur",
        description: t('createAd.errors.createFailedDesc') || "Impossible de publier l'annonce. Veuillez réessayer.",
        variant: 'destructive',
      });
    } finally {
      setLoading(false);
    }
  };

  if (authLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="flex items-center space-x-2">
          <Loader2 className="h-4 w-4 animate-spin" />
          <span>{t('common.loading')}</span>
        </div>
      </div>
    );
  }

  if (!user) {
    return <Navigate to="/" state={{ openAuth: 'login' }} replace />;
  }


  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 to-slate-100 dark:from-slate-900 dark:to-slate-800 py-8" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="container mx-auto px-4">
        <div className="max-w-4xl mx-auto">
          <div className="bg-white dark:bg-slate-800 rounded-2xl shadow-xl overflow-hidden">
            <div className={`bg-gradient-to-r from-green-600 to-emerald-600 p-6 text-white flex items-center justify-between w-full`} dir={isRTL ? 'rtl' : 'ltr'}>
              <div className="flex items-center gap-4">
                <div className="bg-white/20 backdrop-blur-sm p-3 rounded-xl">
                  <Plus className="h-8 w-8" />
                </div>
                <div className={isRTL ? 'text-right' : ''}>
                  <h1 className="text-3xl font-bold">{t('createAd.title')}</h1>
                  <p className="text-green-100 mt-1">{t('createAd.subtitle')}</p>
                </div>
              </div>
              <div className={isRTL ? 'w-0 h-0 invisible' : 'w-0 h-0 invisible'}></div>
            </div>

            <div className="p-6 md:p-8">
              <form onSubmit={handleSubmit} className="space-y-8">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
                  {/* Colonne gauche */}
                  <div className="space-y-6">
                    {/* Titre */}
                    <div className="space-y-2" dir={isRTL ? 'rtl' : 'ltr'}>
                      <Label
                        htmlFor="title"
                        className={`text-lg font-bold flex items-center justify-between gap-2 w-full ${isRTL ? 'flex-row-reverse text-right' : ''}`}
                      >
                        <div className={`flex items-center gap-2 ${isRTL ? 'flex-row-reverse' : ''}`}>
                          <FileText className="h-5 w-5 text-green-600" />
                          <span className="text-red-600">{t('createAd.titlePlaceholder')} *</span>
                        </div>
                        <span
                          dir="ltr"
                          className="text-sm font-medium px-2 py-0.5 rounded-md bg-slate-100 text-slate-600 dark:bg-slate-800 dark:text-slate-400"
                        >
                          {formData.title.length}/100
                        </span>
                      </Label>
                      <Input
                        id="title"
                        dir={isRTL ? 'rtl' : 'ltr'}
                        value={formData.title}
                        onChange={(event) => handleInputChange('title', event.target.value.slice(0, 100))}
                        placeholder={t('createAd.titlePlaceholder')}
                        required
                        className={`text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors ${isRTL ? 'text-right' : ''}`}
                      />
                    </div>

                    {/* Catégorie */}
                    <div className="space-y-2">
                      <Label htmlFor="category_id" className="text-lg font-bold flex items-center gap-2">
                        <Plus className="h-5 w-5 text-green-600" />
                        <span className="text-red-600">{t('createAd.category')} *</span>
                      </Label>
                      <Select value={formData.category_id} onValueChange={handleCategoryChange}>
                        <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                          <SelectValue placeholder={t('createAd.selectCategory')} />
                        </SelectTrigger>
                        <SelectContent>
                          {categories.map((category) => (
                            <SelectItem key={category.id} value={category.id}>
                              {t(`categories.${category.slug}`) === `categories.${category.slug}` ? category.name : t(`categories.${category.slug}`)}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                    </div>

                    {/* Sous-catégorie */}
                    <div className="space-y-2">
                      <Select
                        value={selectedSubcategoryL2}
                        onValueChange={handleSubcategoryL2Change}
                        disabled={!formData.category_id || subcategories.length === 0}
                      >
                        <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                          <SelectValue placeholder={
                            !formData.category_id
                              ? t('search.advanced.selectCategory')
                              : subcategories.length === 0
                                ? t('announcements.noResultsInSubcategory')
                                : t('search.advanced.selectSubCategory')
                          } />
                        </SelectTrigger>
                        <SelectContent>
                          {subcategories.map((subcategory) => (
                            <SelectItem key={subcategory.id} value={subcategory.id}>
                              {subcategory.name}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                    </div>

                    {subSubcategories.length > 0 && (
                      <div className="space-y-2">
                        <Select
                          value={subSubcategories.find(s => s.id === formData.subcategory_id) ? formData.subcategory_id : ''}
                          onValueChange={handleSubSubcategoryChange}
                        >
                          <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                            <SelectValue placeholder={t('createAd.selectSubcategory') || 'Sélectionner une spécialisation'} />
                          </SelectTrigger>
                          <SelectContent>
                            {subSubcategories.map((subsubcategory) => (
                              <SelectItem key={subsubcategory.id} value={subsubcategory.id}>
                                {subsubcategory.name}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </div>
                    )}

                    {(selectedSubcategoryL2 || (formData.category_id && Object.keys(currentAttributes).length > 0)) && (
                      <CategoryAttributesRenderer 
                        attributes={currentAttributes}
                        selectedAttributes={selectedAttributeValues}
                        onAttributeChange={handleAttributeChange}
                        title={
                          menuCategories.find(c => c.id === formData.category_id)?.slug === 'immobilier-maison'
                            ? t('createAd.realEstate.title')
                            : t('createAd.details')
                        }
                      />
                    )}
                    

                    {/* Description */}
                    <div className="space-y-2">
                      <Label htmlFor="description" className="text-lg font-bold">
                        <span className="text-red-600">{t('createAd.description')} *</span>
                      </Label>
                      <Textarea
                        id="description"
                        value={formData.description}
                        onChange={(e) => handleInputChange('description', e.target.value)}
                        placeholder={t('createAd.descriptionPlaceholder')}
                        rows={6}
                        required
                        className="text-base rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors resize-none"
                      />
                    </div>

                    {/* Localisation */}
                    <div className="space-y-4">
                      <div className="space-y-2">
                        <Label className="text-lg font-bold flex items-center gap-2">
                          <MapPin className="h-5 w-5 text-green-600" />
                          <span className="text-red-600">{t('createAd.location')}</span>
                        </Label>
                        <GeolocationPicker
                          onLocationSelect={(coords) => {
                            setSelectedLocation(coords);
                            handleInputChange('location', coords.address || `${coords.lat.toFixed(4)}, ${coords.lng.toFixed(4)}`);
                          }}
                          selectedLocation={selectedLocation?.address}
                        />
                        {selectedLocation && (
                          <div className="flex items-center gap-2 p-3 bg-green-50 rounded-lg">
                            <MapPin className="h-4 w-4 text-green-600" />
                            <p className="text-sm text-green-800">
                              📍 {selectedLocation.address}
                            </p>
                          </div>
                        )}
                      </div>
                      <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div className="space-y-2">
                          <Label htmlFor="wilaya" className="text-lg font-bold">
                            <span className="text-red-600">{t('createAd.wilaya')} *</span>
                          </Label>
                          <Select
                            value={formData.wilaya}
                            onValueChange={(value) => setFormData(prev => ({ ...prev, wilaya: value, commune: '' }))}
                          >
                            <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                              <SelectValue placeholder={t('createAd.selectWilaya')} />
                            </SelectTrigger>
                            <SelectContent>
                              {wilayas.map((wilaya) => (
                                <SelectItem key={wilaya.code} value={wilaya.name}>
                                  {wilaya.code.toString().padStart(2, '0')} - {language === 'ar' ? wilaya.name_ar : wilaya.name}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        </div>

                        <div className="space-y-2">
                          <Label htmlFor="commune" className="text-lg font-bold">
                            <span className="text-slate-700 dark:text-slate-200">{t('createAd.commune')}</span>
                          </Label>
                          <Select
                            value={formData.commune}
                            onValueChange={(value) => handleInputChange('commune', value)}
                            disabled={!selectedWilayaCode}
                          >
                            <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                              <SelectValue placeholder={t('createAd.communePlaceholder')} />
                            </SelectTrigger>
                            <SelectContent>
                              {availableCommunes.map((commune) => {
                                const displayName = language === 'ar' ? commune.ar : commune.fr;
                                return (
                                  <SelectItem key={`${selectedWilayaCode}-${commune.fr}`} value={commune.fr}>
                                    {displayName}
                                  </SelectItem>
                                );
                              })}
                            </SelectContent>
                          </Select>
                        </div>
                      </div>
                    </div>
                  </div>

                  {/* Colonne droite */}
                  <div className="space-y-6">
                    {/* Prix et devise */}
                    <div className="bg-green-50 p-6 rounded-xl border border-green-500 border-opacity-0 hover:border-opacity-100 transition-colors">
                      <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                        <DollarSign className="h-5 w-5 text-green-600" />
                        <span className="text-red-600">{t('createAd.price')}</span>
                      </h3>
                      <div className="grid grid-cols-3 gap-3">
                        <div className="col-span-2 space-y-2">
                          <Input
                            id="price"
                            type="number"
                            value={formData.price}
                            onChange={(e) => handleInputChange('price', e.target.value)}
                            placeholder="0"
                            required
                            min="0"
                            step="0.01"
                            className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors"
                          />
                        </div>
                        <div className="space-y-2">
                          <Label htmlFor="currency" className="text-lg font-bold">
                            <span className="text-red-600">{t('createAd.currency')}</span>
                          </Label>
                          <Select value={formData.currency} onValueChange={(value) => handleInputChange('currency', value)}>
                            <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                              <SelectValue />
                            </SelectTrigger>
                            <SelectContent>
                              <SelectItem value="DZD">DZD</SelectItem>
                              <SelectItem value="EUR">EUR</SelectItem>
                              <SelectItem value="USD">USD</SelectItem>
                            </SelectContent>
                          </Select>
                        </div>
                      </div>
                    </div>

                    {/* État */}
                    <div className="group bg-green-50 p-6 rounded-xl border border-green-500 border-opacity-0 hover:border-opacity-100 transition-colors">
                      <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                        <Star className="h-5 w-5 text-green-600" />
                        <span className="text-red-600">{t('createAd.condition')}</span>
                      </h3>
                      <Select value={formData.condition} onValueChange={(value) => handleInputChange('condition', value)}>
                        <SelectTrigger className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors">
                          <SelectValue />
                        </SelectTrigger>
                        <SelectContent>
                          {conditions.map((condition) => (
                            <SelectItem key={condition.value} value={condition.value}>
                              {condition.label}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                    </div>

                    {/* Images */}
                    <div className="bg-purple-50 p-6 rounded-xl border border-green-500 border-opacity-0 hover:border-opacity-100 transition-colors">
                      <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                        <Camera className="h-5 w-5 text-purple-600" />
                        <span className="text-red-600">{t('createAd.images')}</span>
                      </h3>
                      <ImageUpload
                        onImagesChange={setImages}
                        maxImages={8}
                        bucket="announcement-images"
                        initialImages={images}
                        applyWatermark={true}
                        watermarkText="Aladdin"
                        watermarkOpacity={0.3}
                      />
                    </div>

                    {/* Contact */}
                    <div className="space-y-6 bg-gray-50 p-6 rounded-xl border border-green-500 border-opacity-0 hover:border-opacity-100 transition-colors">
                      <h3 className="text-lg font-bold text-gray-900 flex items-center gap-2">
                        <Phone className="h-5 w-5 text-green-600" />
                        <span className="text-red-600">{t('createAd.phone')}</span>
                      </h3>
                      
                      <div className="space-y-4">
                        <div className="space-y-2">
                          <div className="relative">
                            <Phone className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-gray-400" />
                            <Input
                              id="phone"
                              type="tel"
                              value={formData.phone}
                              onChange={(e) => handleInputChange('phone', e.target.value)}
                              placeholder={t('createAd.phonePlaceholder')}
                              className="pl-10 h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors"
                            />
                          </div>
                        </div>
                        
                        <div className="space-y-2">
                          <Label htmlFor="email" className="text-lg font-bold flex items-center gap-2">
                            <Mail className="h-5 w-5 text-green-600" />
                            <span className="text-red-600">{t('createAd.email')}</span>
                          </Label>
                          <div className="relative">
                            <Mail className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-gray-400" />
                            <Input
                              id="email"
                              type="email"
                              value={formData.email}
                              onChange={(e) => handleInputChange('email', e.target.value)}
                              placeholder={t('createAd.emailPlaceholder')}
                              className="pl-10 h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors"
                            />
                          </div>
                        </div>
                      </div>
                    </div>

                    {/* Options */}
                    <div className="bg-amber-50 p-6 rounded-xl border border-green-500 border-opacity-0 hover:border-opacity-100 transition-colors">
                      <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                        <Clock className="h-5 w-5 text-amber-600" />
                        <span className="text-red-600">{t('createAd.urgent')}</span>
                      </h3>
                      <div className="space-y-4">
                        <div className="flex items-center justify-between p-3 bg-white rounded-lg border border-gray-200 hover:border-green-500 transition-colors">
                          <div className="flex items-center space-x-3">
                            <Checkbox
                              id="is_urgent"
                              checked={formData.is_urgent}
                              onCheckedChange={(checked) => handleInputChange('is_urgent', checked as boolean)}
                              className="h-5 w-5 border-gray-300 hover:border-green-500 focus-visible:ring-green-500 data-[state=checked]:bg-green-600 data-[state=checked]:border-green-600"
                            />
                            <div>
                              <Label htmlFor="is_urgent" className="text-lg font-bold cursor-pointer">
                                <span className="text-black">{t('createAd.urgent')}</span>
                              </Label>
                              <p className="text-sm text-gray-500">
                                <Badge variant="destructive" className="text-xs mt-1">
                                  <Clock className="h-3 w-3 mr-1" />
                                  {t('createAd.urgentBadge')}
                                </Badge>
                              </p>
                            </div>
                          </div>
                        </div>

                        <div className="space-y-2">
                          <Label htmlFor="expires_at" className="text-lg font-bold flex items-center gap-2">
                            <Clock className="h-5 w-5 text-amber-600" />
                            <span className="text-red-600">{t('createAd.expiresAt')} (optionnel)</span>
                          </Label>
                          <Input
                            id="expires_at"
                            type="date"
                            value={formData.expires_at}
                            onChange={(e) => handleInputChange('expires_at', e.target.value)}
                            min={new Date().toISOString().split('T')[0]}
                            className="text-base h-12 rounded-lg border-gray-200 hover:border-green-500 focus:border-green-500 focus:ring-green-500 focus-visible:border-green-500 focus-visible:ring-green-500 transition-colors"
                          />
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <div className="border-t pt-8">
                  <Alert className="bg-green-50 border-green-200 text-green-800">
                    <Check className="h-4 w-4" />
                    <AlertDescription>
                      {t('createAd.termsNotice')}
                    </AlertDescription>
                  </Alert>

                  <Button type="submit" className="w-full h-14 text-lg font-medium rounded-lg bg-gradient-to-r from-green-600 to-emerald-600 hover:from-green-700 hover:to-emerald-700 focus-visible:ring-green-500 transition-all mt-6" disabled={loading}>
                    {loading && <Loader2 className="mr-2 h-5 w-5 animate-spin" />}
                    {t('createAd.publish')}
                  </Button>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default DeposerAnnonce;
