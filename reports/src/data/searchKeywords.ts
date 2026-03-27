export type ProfessionKey =
  | 'plumber'
  | 'electrician'
  | 'mechanic'
  | 'woodworker'
  | 'painter'
  | 'mason'
  | 'roofer'
  | 'tiler'
  | 'gardener'
  | 'tailor'
  | 'cook'
  | 'hairdresser'
  | 'beautician'
  | 'computerTechnician'
  | 'heatingTechnician'
  | 'applianceRepairman'
  | 'welder'
  | 'ironworker'
  | 'glazier'
  | 'bodyworker'
  | 'cabinetmaker'
  | 'upholsterer'
  | 'airConditioningTechnician'
  | 'photographer'
  | 'videographer'
  | 'translator'
  | 'secretary'
  | 'accountant'
  | 'privateTeacher'
  | 'otherProfessions';

export const PROFESSION_KEYS: ProfessionKey[] = [
  'plumber',
  'electrician',
  'mechanic',
  'woodworker',
  'painter',
  'mason',
  'roofer',
  'tiler',
  'gardener',
  'tailor',
  'cook',
  'hairdresser',
  'beautician',
  'computerTechnician',
  'heatingTechnician',
  'applianceRepairman',
  'welder',
  'ironworker',
  'glazier',
  'bodyworker',
  'cabinetmaker',
  'upholsterer',
  'airConditioningTechnician',
  'photographer',
  'videographer',
  'translator',
  'secretary',
  'accountant',
  'privateTeacher',
  'otherProfessions',
];

export const PROFESSION_KEYWORDS: Record<ProfessionKey, string[]> = {
  plumber: [
    'fuite', 'eau', 'tuyau', 'robinet', 'evier', 'lavabo', 'bain', 'douche', 'wc', 'toilette', 'canalisation', 'debouchage', 'plomberie', 'sanitaire', 'chauffe-bain', 'chauffe-eau', 'gaz', 'tuyauterie',
    'leak', 'water', 'pipe', 'tap', 'sink', 'basin', 'bath', 'shower', 'toilet', 'drain', 'unclogging', 'plumbing', 'sanitary', 'heater', 'gas', 'piping',
    'تسرب', 'ماء', 'انبوب', 'حنفية', 'حوض', 'مغسلة', 'حمام', 'دش', 'مرحاض', 'صرف', 'تسليك', 'سباكة', 'صحي', 'سخان', 'غاز', 'بلومبي', 'تيو'
  ],
  electrician: [
    'electricite', 'courant', 'panne', 'prise', 'interrupteur', 'lampe', 'eclairage', 'tableau', 'fusible', 'cablage', 'disjoncteur', 'compteur', 'installation', 'masse',
    'electricity', 'current', 'outage', 'socket', 'switch', 'lamp', 'lighting', 'panel', 'fuse', 'wiring', 'breaker', 'meter', 'installation', 'ground',
    'كهرباء', 'تيار', 'عطل', 'مقبس', 'مفتاح', 'مصباح', 'إضاءة', 'لوحة', 'فيوز', 'توصيل', 'قاطع', 'عداد', 'تريسيتي', 'تريسيان', 'ماس'
  ],
  mechanic: [
    'voiture', 'auto', 'moteur', 'frein', 'vidange', 'pneu', 'roue', 'batterie', 'amortisseur', 'suspension', 'embrayage', 'automobile', 'diag', 'scanner', 'boite', 'vitesse', 'plaquette',
    'car', 'engine', 'brake', 'oil change', 'tire', 'wheel', 'battery', 'shock absorber', 'suspension', 'clutch', 'automotive', 'diagnosis', 'scanner', 'gearbox', 'speed', 'pad',
    'سيارة', 'محرك', 'فرامل', 'تغيير زيت', 'اطار', 'عجلة', 'بطارية', 'ممتص الصدمات', 'تعليق', 'دبرياج', 'سيارات', 'سكانer', 'علبة سرعة', 'فيتاس', 'ميكانيسيان', 'ميكانو'
  ],
  woodworker: [
    'bois', 'meuble', 'porte', 'fenetre', 'placard', 'etagere', 'charpente', 'menuiserie', 'dressing', 'cuisine', 'reparation',
    'wood', 'furniture', 'door', 'window', 'closet', 'shelf', 'framework', 'carpentry', 'dressing', 'kitchen', 'repair',
    'خشب', 'اثاث', 'باب', 'نافذة', 'خزانة', 'رف', 'هيكل', 'نجارة', 'مطبخ', 'تصليح'
  ],
  painter: [
    'peinture', 'mur', 'plafond', 'facade', 'enduit', 'papier peint', 'deco', 'pinceau', 'rouleau', 'satiné', 'vinyl', 'mat',
    'paint', 'wall', 'ceiling', 'facade', 'coating', 'wallpaper', 'decoration', 'brush', 'roller', 'satin', 'vinyl', 'matte',
    'دهان', 'جدار', 'سقف', 'واجهة', 'طلاء', 'ورق جدران', 'ديكور', 'بنتورة', 'بانتر'
  ],
  mason: [
    'mur', 'brique', 'ciment', 'beton', 'construction', 'dalle', 'fondation', 'maconnerie', 'poteau', 'faïence',
    'wall', 'brick', 'cement', 'concrete', 'construction', 'slab', 'foundation', 'masonry', 'pillar', 'tiling',
    'جدار', 'طوب', 'اسمنت', 'خرسانة', 'بناء', 'بلاطة', 'ساس', 'بناء', 'عمود', 'فايونس', 'بني', 'ماصون'
  ],
  roofer: [
    'toit', 'tuile', 'etancheite', 'fuite toit', 'gouttiere', 'couverture', 'terrasse',
    'roof', 'tile', 'waterproofing', 'roof leak', 'gutter', 'roofing', 'terrace',
    'سقف', 'قرميد', 'عزل', 'تسرب سقف', 'مزراب', 'تغطية', 'سطح', 'تراس'
  ],
  tiler: [
    'carrelage', 'faience', 'sol', 'mur', 'mosaique', 'dalle de sol', 'cuisine', 'salle de bain',
    'tiling', 'earthenware', 'floor', 'wall', 'mosaic', 'floor tile', 'kitchen', 'bathroom',
    'بلاط', 'قيشاني', 'ارضية', 'جدار', 'فسيفساء', 'دال دو سول', 'كوزينة', 'دوش', 'فايونسي'
  ],
  gardener: [
    'jardin', 'plante', 'arbre', 'taille', 'tonte', 'pelouse', 'fleur', 'amenagement', 'arrosage',
    'garden', 'plant', 'tree', 'pruning', 'mowing', 'lawn', 'flower', 'landscaping', 'watering',
    'حديقة', 'نبات', 'شجرة', 'تقليم', 'جز', 'عشب', 'زهرة', 'تنسيق حدائق', 'سقي', 'جردينيا'
  ],
  tailor: [
    'couture', 'vetement', 'retouche', 'ourlet', 'robe', 'pantalon', 'costume', 'sur mesure',
    'sewing', 'clothing', 'alteration', 'hem', 'dress', 'pants', 'suit', 'custom',
    'خياطة', 'ملابس', 'تعديل', 'كفة', 'فستان', 'بنطلون', 'بدلة', 'خياط'
  ],
  cook: [
    'cuisine', 'repas', 'traiteur', 'gateau', 'patisserie', 'chef', 'salé', 'sucré',
    'cooking', 'meal', 'caterer', 'cake', 'pastry', 'chef', 'salty', 'sweet',
    'طبخ', 'وجبة', 'تموين', 'كعكة', 'حلويات', 'طباخ', 'مملحات'
  ],
  hairdresser: [
    'coiffure', 'cheveux', 'coupe', 'coloration', 'brushing', 'lissage', 'barbe', 'keratine', 'proteine',
    'hairdressing', 'hair', 'cut', 'coloring', 'blow dry', 'straightening', 'beard', 'keratin', 'protein',
    'حلاقة', 'شعر', 'قص', 'صبغة', 'سيشوار', 'تمليس', 'لحية', 'كيراتين', 'بروتين', 'حفاف'
  ],
  beautician: [
    'maquillage', 'soin', 'visage', 'ongle', 'epilation', 'manucure', 'pedicure', 'massage',
    'makeup', 'care', 'face', 'nail', 'hair removal', 'manicure', 'pedicure', 'massage',
    'مكياج', 'عناية', 'وجه', 'ظفر', 'ازالة شعر', 'مانيكير', 'باديكير', 'تدليك', 'تجميل'
  ],
  computerTechnician: [
    'pc', 'ordinateur', 'windows', 'formatage', 'virus', 'ecran', 'clavier', 'souris', 'internet', 'wifi', 'reseau', 'imprimante',
    'pc', 'computer', 'windows', 'formatting', 'virus', 'screen', 'keyboard', 'mouse', 'internet', 'wifi', 'network', 'printer',
    'كمبيوتر', 'حاسوب', 'ويندوز', 'فرمتة', 'فيروس', 'شاشة', 'لوحة مفاتيح', 'فارة', 'انترنت', 'وايفاي', 'شبكة', 'طابعة', 'انفورماتيك'
  ],
  heatingTechnician: [
    'chauffage', 'chaudiere', 'radiateur', 'gaz', 'panne chauffage', 'entretien',
    'heating', 'boiler', 'radiator', 'gas', 'heating failure', 'maintenance',
    'تدفئة', 'مرجل', 'مشعاع', 'غاز', 'عطل تدفئة', 'صيانة', 'شوفاج'
  ],
  applianceRepairman: [
    'machine a laver', 'frigo', 'refrigerateur', 'lave-vaisselle', 'four', 'micro-onde', 'reparation electromenager', 'climatiseur',
    'washing machine', 'fridge', 'refrigerator', 'dishwasher', 'oven', 'microwave', 'appliance repair', 'air conditioner',
    'غسالة', 'ثلاجة', 'غسالة صحون', 'فرن', 'ميكروويف', 'تصليح اجهزة', 'مكيف', 'فريبجيدار'
  ],
  welder: [
    'soudure', 'fer', 'metal', 'portail', 'grille', 'barreaudage', 'arc', 'tig', 'mig',
    'welding', 'iron', 'metal', 'gate', 'grid', 'bars', 'arc', 'tig', 'mig',
    'لحام', 'حديد', 'معدن', 'بوابة', 'شبكة', 'قضبان', 'سودور'
  ],
  ironworker: [
    'ferronnerie', 'rampe', 'escalier', 'balcon', 'fer forge',
    'ironwork', 'railing', 'stairs', 'balcony', 'wrought iron',
    'حدادة', 'درابزين', 'سلم', 'شرفة', 'حديد مطاوع', 'فيرونري'
  ],
  glazier: [
    'vitre', 'verre', 'miroir', 'fenetre', 'cassé', 'remplacement', 'double vitrage',
    'pane', 'glass', 'mirror', 'window', 'broken', 'replacement', 'double glazing',
    'زجاج', 'مراة', 'نافذة', 'مكسور', 'استبدال', 'زجاج مزدوج', 'فيتري'
  ],
  bodyworker: [
    'tole', 'peinture auto', 'choc', 'rayure', 'bosselage', 'pare-choc',
    'bodywork', 'car paint', 'shock', 'scratch', 'dent', 'bumper',
    'هيكل', 'دهان سيارات', 'صدمة', 'خدش', 'طعجة', 'مصد', 'تولي'
  ],
  cabinetmaker: [
    'ebenisterie', 'meuble ancien', 'restauration', 'vernis', 'sculpture',
    'cabinetmaking', 'antique furniture', 'restoration', 'varnish', 'sculpture',
    'نجارة فنية', 'اثاث قديم', 'ترميم', 'ورنيش', 'نحت'
  ],
  upholsterer: [
    'fauteuil', 'canape', 'chaise', 'tissu', 'cuir', 'rembourrage', 'sedari',
    'armchair', 'sofa', 'chair', 'fabric', 'leather', 'upholstery', 'sedari',
    'اريكة', 'كنبة', 'كرسي', 'قماش', 'جلد', 'تنجيد', 'سداري', 'غلاف'
  ],
  airConditioningTechnician: [
    'climatisation', 'clim', 'froid', 'charge gaz', 'fuite eau clim', 'installation clim', 'nettoyage',
    'air conditioning', 'ac', 'cold', 'gas charge', 'ac leak', 'ac installation', 'cleaning',
    'تكييف', 'كليم', 'تبريد', 'شحن غاز', 'تسرب ماء', 'تركيب مكيف', 'تنظيف'
  ],
  photographer: [
    'photo', 'mariage', 'shooting', 'portrait', 'album', 'evenement', 'camera',
    'photo', 'wedding', 'shooting', 'portrait', 'album', 'event', 'camera',
    'صور', 'زفاف', 'تصوير', 'بورتريه', 'البوم', 'حدث', 'كاميرا', 'فوتوغراف'
  ],
  videographer: [
    'video', 'film', 'montage', 'clip', 'publicite', 'drone', '4k',
    'video', 'film', 'editing', 'clip', 'advertising', 'drone', '4k',
    'فيديو', 'فيلم', 'مونتاج', 'كليب', 'اعلان', 'درون', 'كاميرا مان'
  ],
  translator: [
    'traduction', 'document', 'langue', 'arabe', 'francais', 'anglais', 'assermente',
    'translation', 'document', 'language', 'arabic', 'french', 'english', 'sworn',
    'ترجمة', 'وثيقة', 'لغة', 'عربية', 'فرنسية', 'انجليزية', 'محلف'
  ],
  secretary: [
    'saisie', 'redaction', 'courrier', 'classement', 'administratif', 'cv',
    'typing', 'writing', 'mail', 'filing', 'administrative', 'cv',
    'كتابة', 'تحرير', 'بريد', 'تصنيف', 'اداري', 'سيرة ذاتية'
  ],
  accountant: [
    'comptabilite', 'bilan', 'impot', 'facture', 'declaration', 'fiscalite',
    'accounting', 'balance sheet', 'tax', 'invoice', 'declaration', 'taxation',
    'محاسبة', 'ميزانية', 'ضرائب', 'فاتورة', 'تصريح', 'جبائية', 'كونطابل'
  ],
  privateTeacher: [
    'cours', 'soutien', 'math', 'physique', 'langue', 'primaire', 'cem', 'lycee', 'universite',
    'lessons', 'support', 'math', 'physics', 'language', 'primary', 'middle school', 'high school', 'university',
    'دروس', 'دعم', 'رياضيات', 'فيزياء', 'لغة', 'ابتدائي', 'متوسط', 'ثانوي', 'جامعة', 'ليكور'
  ],
  otherProfessions: []
};
