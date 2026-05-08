// Mapping des icônes réalistes générées pour les catégories principales
// Les images sont stockées dans /public/icons/categories/

export const realisticCategoryIcons: Record<string, string> = {
  // Catégories principales (slug → fichier image)
  'immobilier-maison': '/icons/categories/immobilier-maison.png',
  'telephonie': '/icons/categories/telephonie.png',
  'informatique-electronique': '/icons/categories/informatique-electronique.png',
  'vehicules-equipements': '/icons/categories/vehicules-equipements.png',
  'velo-cyclisme-equipements': '/icons/categories/velo-cyclisme-equipements.png',
  'nautisme': '/icons/categories/nautisme.png',
  'btp-engins-construction': '/icons/categories/btp-engins-construction.png',
  'mode-accessoires': '/icons/categories/mode-accessoires.png',
  'bebe-puericulture': '/icons/categories/bebe-puericulture.png',
  'mode-et-accessoires': '/icons/categories/mode-et-accessoires.png',
  'sacs-et-bagages': '/icons/categories/sacs-et-bagages.png',
  'electromenager': '/icons/categories/electromenager.png',
  'mobilier-et-decoration': '/icons/categories/mobilier-et-decoration.png',
  'image-son-equipement-musique': '/icons/categories/image-son-equipement-musique.png',
  'jeux-video-consoles': '/icons/categories/jeux-video-consoles.png',
  'quincaillerie-generale': '/icons/categories/quincaillerie-generale.png',
  'agriculture-agroalimentaire': '/icons/categories/agriculture-agroalimentaire.png',
  'parapharmacie-produit-chimique': '/icons/categories/parapharmacie-produit-chimique.png',
  'sante-beaute': '/icons/categories/sante-beaute.png',
  'gastronomie-alimentation': '/icons/categories/gastronomie-alimentation.png',
  'artisanat-traditionnel-algerien': '/icons/categories/artisanat-traditionnel-algerien.png',
  'voyages-tourisme': '/icons/categories/voyages-tourisme.png',
  'evenements-billetterie': '/icons/categories/evenements-billetterie.png',
  'emploi-carriere': '/icons/categories/emploi-carriere.png',
  'education-loisirs': '/icons/categories/education-loisirs.png',
  'animaux-accessoires': '/icons/categories/animaux-accessoires.png',
  'finance': '/icons/categories/finance.png',
  'services-support': '/icons/categories/services-support.png',
  'echanges-partage': '/icons/categories/echanges-partage.png',
};

export const getRealisticIcon = (slug: string): string | null => {
  return realisticCategoryIcons[slug] || null;
};
