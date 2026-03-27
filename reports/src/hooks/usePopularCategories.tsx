
import React from "react";
import { useCategories } from "@/services/supabaseCategoriesService";
import { ExplorerCategory, MenuCategory } from "@/data/categoryTypes";
import { iconMappingManager } from "@/data/categories/optimized/iconMappingManager";
import { Image as ImageIcon } from "lucide-react";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { allCategoryMenus } from "@/data/megaMenu/categoryMenu";
import placeholderImage from "@/assets/placeholder-image.svg";

// On construit dynamiquement la liste des catégories à afficher
// L'ordre doit correspondre exactement à celui du menu principal (categoryMenu.ts)

export const usePopularCategories = () => {
  const { language } = useSafeI18nWithRouter();
  // Nous utilisons toujours useCategories pour bénéficier du cache et des données Supabase si disponibles
  useCategories(language);

  // Utiliser l'ordre défini dans categoryMenu.ts comme source de vérité
  const menuCategories = allCategoryMenus[language] || allCategoryMenus['fr'];

  // Transformer les catégories du menu en ExplorerCategory
  const explorerCategories: ExplorerCategory[] = menuCategories
    .map((cat: MenuCategory) => {
      // Essayer de trouver la catégorie correspondante dans Supabase pour récupérer l'ID si nécessaire
      // Note: cat vient du menu, donc l'ordre est préservé
      
      // Utiliser d'abord le mapping des nouvelles images téléchargées
      let imageUrl = iconMappingManager.getIconUrl(cat.slug);
      
      // Si pas d'image dans le mapping, utiliser les images par défaut selon certains slugs
      if (!imageUrl) {
        if (cat.slug === "meubles") imageUrl = "https://images.unsplash.com/photo-1555041469-a586c61ea9bc";
        else if (cat.slug === "maison-mobilier-electromenager") imageUrl = "https://images.unsplash.com/photo-1555041469-a586c61ea9bc";
        else if (cat.slug === "decoration") imageUrl = "https://images.unsplash.com/photo-1513506003901-1e6a229e2d15";
        else if (cat.slug === "jeux-video-consoles") imageUrl = "https://images.unsplash.com/photo-1580327332925-a6a2a5b11baa";
        else if (cat.slug === "informatique") imageUrl = "https://images.unsplash.com/photo-1517430818847-5569f32d6df1";
        else if (cat.slug === "telephonie") imageUrl = "https://images.unsplash.com/photo-1511707171634-5f897ff02aa9";
        else if (cat.slug === "image-son") imageUrl = "https://images.unsplash.com/photo-1596468427678-4a5a68237ed1";
        else if (cat.slug === "vehicules") imageUrl = "https://images.unsplash.com/photo-1552519507-da3b142c6e3d";
        else if (cat.slug === "immobilier") imageUrl = "https://images.unsplash.com/photo-1560448204-e02f11c3d0e2";
        else if (cat.slug === "parapharmacie-produit-chimique") imageUrl = "https://images.unsplash.com/photo-1584308669425-3234b6e3c9a6";
        else imageUrl = placeholderImage;
      }

      return {
        ...cat,
        icon: cat.icon || React.createElement(ImageIcon, { className: "h-5 w-5 text-gray-400" }),
        imageUrl: imageUrl,
      } as ExplorerCategory;
    })
    // Ensure uniqueness by ID to prevent duplicates
    .filter((category, index, self) => 
      index === self.findIndex((t) => t.id === category.id)
    );

  return explorerCategories;
};
