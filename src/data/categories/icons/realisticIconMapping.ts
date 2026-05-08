// Mapping des icônes réalistes générées pour les catégories principales
// Les images sont stockées dans /public/icons/categories/

export const realisticCategoryIcons: Record<string, string> = {
  // Catégories principales (slug → fichier image)
  'immobilier-maison': '/icons/categories/immobilier-maison.webp',
  'telephonie': '/icons/categories/telephonie.webp',
  'informatique-electronique': '/icons/categories/informatique-electronique.webp',
  'vehicules-equipements': '/icons/categories/vehicules-equipements.webp',
  'velo-cyclisme-equipements': '/icons/categories/velo-cyclisme-equipements.webp',
  'nautisme': '/icons/categories/nautisme.webp',
  'btp-engins-construction': '/icons/categories/btp-engins-construction.webp',
  'mode-accessoires': '/icons/categories/mode-accessoires.webp',
  'bebe-puericulture': '/icons/categories/bebe-puericulture.webp',
  'mode-et-accessoires': '/icons/categories/mode-et-accessoires.webp',
  'sacs-et-bagages': '/icons/categories/sacs-et-bagages.webp',
  'electromenager': '/icons/categories/electromenager.webp',
  'mobilier-et-decoration': '/icons/categories/mobilier-et-decoration.webp',
  'image-son-equipement-musique': '/icons/categories/image-son-equipement-musique.webp',
  'jeux-video-consoles': '/icons/categories/jeux-video-consoles.webp',
  'quincaillerie-generale': '/icons/categories/quincaillerie-generale.webp',
  'agriculture-agroalimentaire': '/icons/categories/agriculture-agroalimentaire.webp',
  'parapharmacie-produit-chimique': '/icons/categories/parapharmacie-produit-chimique.webp',
  'sante-beaute': '/icons/categories/sante-beaute.webp',
  'gastronomie-alimentation': '/icons/categories/gastronomie-alimentation.webp',
  'artisanat-traditionnel-algerien': '/icons/categories/artisanat-traditionnel-algerien.webp',
  'voyages-tourisme': '/icons/categories/voyages-tourisme.webp',
  'evenements-billetterie': '/icons/categories/evenements-billetterie.webp',
  'emploi-carriere': '/icons/categories/emploi-carriere.webp',
  'education-loisirs': '/icons/categories/education-loisirs.webp',
  'animaux-accessoires': '/icons/categories/animaux-accessoires.webp',
  'finance': '/icons/categories/finance.webp',
  'services-support': '/icons/categories/services-support.webp',
  'echanges-partage': '/icons/categories/echanges-partage.webp',
};

export const getRealisticIcon = (slug: string): string | null => {
  return realisticCategoryIcons[slug] || null;
};
