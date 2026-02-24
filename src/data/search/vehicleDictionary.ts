
export type VehicleDictionaryType = 'brand' | 'model' | 'type' | 'fuel' | 'transmission' | 'condition' | 'paper' | 'color' | 'year';

export interface VehicleDictionaryItem {
  id: string;
  type: VehicleDictionaryType;
  values: {
    fr: string[];
    ar: string[];
    en: string[];
    [key: string]: string[];
  };
  metadata?: {
    brandId?: string;
    relatedIds?: string[];
    region?: 'eu' | 'us' | 'asia' | 'cn' | 'dz' | 'global';
    isAmbiguous?: boolean; // New flag for terms that need context (e.g., "Golf", "Focus", "Frigo")
  };
}

export const vehicleDictionary: VehicleDictionaryItem[] = [
  // ==================================================================================
  //                                  MARQUES (BRANDS)
  // ==================================================================================

  // ------------------------- EUROPE (EU) -------------------------
  { id: "brand_renault", type: "brand", values: { fr: ["Renault"], ar: ["رونو", "رينو"], en: ["Renault"] }, metadata: { region: 'eu' } },
  { id: "brand_peugeot", type: "brand", values: { fr: ["Peugeot"], ar: ["بيجو", "بجو"], en: ["Peugeot"] }, metadata: { region: 'eu' } },
  { id: "brand_volkswagen", type: "brand", values: { fr: ["Volkswagen", "VW"], ar: ["فولكسفاغن", "فولسفاغن"], en: ["Volkswagen", "VW"] }, metadata: { region: 'eu' } },
  { id: "brand_mercedes", type: "brand", values: { fr: ["Mercedes", "Mercedes-Benz"], ar: ["مرسيدس"], en: ["Mercedes", "Mercedes-Benz"] }, metadata: { region: 'eu' } },
  { id: "brand_bmw", type: "brand", values: { fr: ["BMW"], ar: ["بي ام دبليو", "بي ام"], en: ["BMW"] }, metadata: { region: 'eu' } },
  { id: "brand_audi", type: "brand", values: { fr: ["Audi"], ar: ["أودي", "اودي"], en: ["Audi"] }, metadata: { region: 'eu' } },
  { id: "brand_citroen", type: "brand", values: { fr: ["Citroën", "Citroen"], ar: ["سيتروين", "ستروين"], en: ["Citroen"] }, metadata: { region: 'eu' } },
  { id: "brand_fiat", type: "brand", values: { fr: ["Fiat"], ar: ["فيات"], en: ["Fiat"] }, metadata: { region: 'eu' } },
  { id: "brand_dacia", type: "brand", values: { fr: ["Dacia"], ar: ["داسيا"], en: ["Dacia"] }, metadata: { region: 'eu' } },
  { id: "brand_skoda", type: "brand", values: { fr: ["Skoda"], ar: ["سكودا"], en: ["Skoda"] }, metadata: { region: 'eu' } },
  { id: "brand_seat", type: "brand", values: { fr: ["Seat"], ar: ["سيات"], en: ["Seat"] }, metadata: { region: 'eu' } },
  { id: "brand_opel", type: "brand", values: { fr: ["Opel"], ar: ["أوبل", "اوبل"], en: ["Opel"] }, metadata: { region: 'eu' } },
  { id: "brand_porsche", type: "brand", values: { fr: ["Porsche"], ar: ["بورش"], en: ["Porsche"] }, metadata: { region: 'eu' } },
  { id: "brand_land_rover", type: "brand", values: { fr: ["Land Rover", "Range Rover"], ar: ["لاند روفر", "رنج روفر"], en: ["Land Rover"] }, metadata: { region: 'eu' } },
  { id: "brand_jaguar", type: "brand", values: { fr: ["Jaguar"], ar: ["جاغوار"], en: ["Jaguar"] }, metadata: { region: 'eu' } },
  { id: "brand_volvo", type: "brand", values: { fr: ["Volvo"], ar: ["فولفو"], en: ["Volvo"] }, metadata: { region: 'eu' } },
  { id: "brand_mini", type: "brand", values: { fr: ["Mini", "Mini Cooper"], ar: ["ميني", "ميني كوبر"], en: ["Mini"] }, metadata: { region: 'eu' } },
  { id: "brand_alfa_romeo", type: "brand", values: { fr: ["Alfa Romeo"], ar: ["ألفا روميو"], en: ["Alfa Romeo"] }, metadata: { region: 'eu' } },
  { id: "brand_ds", type: "brand", values: { fr: ["DS Automobiles", "DS"], ar: ["دي اس"], en: ["DS"] }, metadata: { region: 'eu' } },
  { id: "brand_cupra", type: "brand", values: { fr: ["Cupra"], ar: ["كوبرا"], en: ["Cupra"] }, metadata: { region: 'eu' } },

  // ------------------------- AMÉRIQUE (US) -------------------------
  { id: "brand_ford", type: "brand", values: { fr: ["Ford"], ar: ["فورد"], en: ["Ford"] }, metadata: { region: 'us' } },
  { id: "brand_chevrolet", type: "brand", values: { fr: ["Chevrolet", "Chevy"], ar: ["شيفروليه", "شوفرولي"], en: ["Chevrolet"] }, metadata: { region: 'us' } },
  { id: "brand_jeep", type: "brand", values: { fr: ["Jeep"], ar: ["جيب"], en: ["Jeep"] }, metadata: { region: 'us' } },
  { id: "brand_dodge", type: "brand", values: { fr: ["Dodge"], ar: ["دودج"], en: ["Dodge"] }, metadata: { region: 'us' } },
  { id: "brand_tesla", type: "brand", values: { fr: ["Tesla"], ar: ["تسلا"], en: ["Tesla"] }, metadata: { region: 'us' } },
  { id: "brand_gmc", type: "brand", values: { fr: ["GMC"], ar: ["جي ام سي"], en: ["GMC"] }, metadata: { region: 'us' } },
  { id: "brand_cadillac", type: "brand", values: { fr: ["Cadillac"], ar: ["كاديلاك"], en: ["Cadillac"] }, metadata: { region: 'us' } },
  { id: "brand_chrysler", type: "brand", values: { fr: ["Chrysler"], ar: ["كرايسلر"], en: ["Chrysler"] }, metadata: { region: 'us' } },
  { id: "brand_hummer", type: "brand", values: { fr: ["Hummer"], ar: ["همر"], en: ["Hummer"] }, metadata: { region: 'us' } },

  // ------------------------- ASIE (ASIA) -------------------------
  { id: "brand_toyota", type: "brand", values: { fr: ["Toyota"], ar: ["تويوتا"], en: ["Toyota"] }, metadata: { region: 'asia' } },
  { id: "brand_hyundai", type: "brand", values: { fr: ["Hyundai"], ar: ["هيونداي", "هونداي"], en: ["Hyundai"] }, metadata: { region: 'asia' } },
  { id: "brand_kia", type: "brand", values: { fr: ["Kia"], ar: ["كيا"], en: ["Kia"] }, metadata: { region: 'asia' } },
  { id: "brand_nissan", type: "brand", values: { fr: ["Nissan"], ar: ["نيسان"], en: ["Nissan"] }, metadata: { region: 'asia' } },
  { id: "brand_suzuki", type: "brand", values: { fr: ["Suzuki"], ar: ["سوزوكي"], en: ["Suzuki"] }, metadata: { region: 'asia' } },
  { id: "brand_mazda", type: "brand", values: { fr: ["Mazda"], ar: ["مازدا"], en: ["Mazda"] }, metadata: { region: 'asia' } },
  { id: "brand_honda", type: "brand", values: { fr: ["Honda"], ar: ["هوندا"], en: ["Honda"] }, metadata: { region: 'asia' } },
  { id: "brand_mitsubishi", type: "brand", values: { fr: ["Mitsubishi"], ar: ["ميتسوبيشي"], en: ["Mitsubishi"] }, metadata: { region: 'asia' } },
  { id: "brand_lexus", type: "brand", values: { fr: ["Lexus"], ar: ["لكزس"], en: ["Lexus"] }, metadata: { region: 'asia' } },
  { id: "brand_infiniti", type: "brand", values: { fr: ["Infiniti"], ar: ["انفينيتي"], en: ["Infiniti"] }, metadata: { region: 'asia' } },
  { id: "brand_subaru", type: "brand", values: { fr: ["Subaru"], ar: ["سوبارو"], en: ["Subaru"] }, metadata: { region: 'asia' } },
  { id: "brand_isuzu_car", type: "brand", values: { fr: ["Isuzu"], ar: ["ايسوزو"], en: ["Isuzu"] }, metadata: { region: 'asia' } },

  // ------------------------- CHINE (CN) -------------------------
  { id: "brand_chery", type: "brand", values: { fr: ["Chery"], ar: ["شيري"], en: ["Chery"] }, metadata: { region: 'cn' } },
  { id: "brand_geely", type: "brand", values: { fr: ["Geely"], ar: ["جيلي"], en: ["Geely"] }, metadata: { region: 'cn' } },
  { id: "brand_haval", type: "brand", values: { fr: ["Haval", "Great Wall"], ar: ["هافال", "غريت وول"], en: ["Haval"] }, metadata: { region: 'cn' } },
  { id: "brand_byd", type: "brand", values: { fr: ["BYD"], ar: ["بي واي دي"], en: ["BYD"] }, metadata: { region: 'cn' } },
  { id: "brand_mg", type: "brand", values: { fr: ["MG"], ar: ["ام جي"], en: ["MG"] }, metadata: { region: 'cn' } },
  { id: "brand_jac_cars", type: "brand", values: { fr: ["JAC"], ar: ["جاك"], en: ["JAC"] }, metadata: { region: 'cn' } },
  { id: "brand_baic", type: "brand", values: { fr: ["BAIC"], ar: ["بايك"], en: ["BAIC"] }, metadata: { region: 'cn' } },
  { id: "brand_dfsk", type: "brand", values: { fr: ["DFSK"], ar: ["دي اف اس كا"], en: ["DFSK"] }, metadata: { region: 'cn' } },
  { id: "brand_jetour", type: "brand", values: { fr: ["Jetour"], ar: ["جيتور"], en: ["Jetour"] }, metadata: { region: 'cn' } },

  // ------------------------- CAMIONS & POIDS LOURDS (TRUCKS) -------------------------
  { id: "brand_renault_trucks", type: "brand", values: { fr: ["Renault Trucks"], ar: ["رونو تراكس"], en: ["Renault Trucks"] }, metadata: { region: 'eu' } },
  { id: "brand_volvo_trucks", type: "brand", values: { fr: ["Volvo Trucks"], ar: ["شاحنات فولفو"], en: ["Volvo Trucks"] }, metadata: { region: 'eu' } },
  { id: "brand_mercedes_trucks", type: "brand", values: { fr: ["Mercedes Trucks"], ar: ["شاحنات مرسيدس"], en: ["Mercedes Trucks"] }, metadata: { region: 'eu' } },
  { id: "brand_man", type: "brand", values: { fr: ["MAN"], ar: ["مان"], en: ["MAN"] }, metadata: { region: 'eu' } },
  { id: "brand_scania", type: "brand", values: { fr: ["Scania"], ar: ["سكانيا"], en: ["Scania"] }, metadata: { region: 'eu' } },
  { id: "brand_daf", type: "brand", values: { fr: ["DAF"], ar: ["داف"], en: ["DAF"] }, metadata: { region: 'eu' } },
  { id: "brand_iveco", type: "brand", values: { fr: ["Iveco"], ar: ["ايفيكو"], en: ["Iveco"] }, metadata: { region: 'eu' } },
  { id: "brand_sinotruk", type: "brand", values: { fr: ["Sinotruk", "Howo"], ar: ["سينوتراك", "هووا"], en: ["Sinotruk"] }, metadata: { region: 'cn' } },
  { id: "brand_shacman", type: "brand", values: { fr: ["Shacman"], ar: ["شاكمان"], en: ["Shacman"] }, metadata: { region: 'cn' } },
  { id: "brand_daewoo_trucks", type: "brand", values: { fr: ["Daewoo Trucks"], ar: ["شاحنات دايو"], en: ["Daewoo"] }, metadata: { region: 'asia' } },
  { id: "brand_foton", type: "brand", values: { fr: ["Foton"], ar: ["فوطون"], en: ["Foton"] }, metadata: { region: 'cn' } },

  // ------------------------- MOTOS (BIKES) -------------------------
  { id: "brand_yamaha", type: "brand", values: { fr: ["Yamaha"], ar: ["ياماها"], en: ["Yamaha"] }, metadata: { region: 'asia' } },
  { id: "brand_honda_moto", type: "brand", values: { fr: ["Honda Moto"], ar: ["هوندا دراجات"], en: ["Honda"] }, metadata: { region: 'asia' } },
  { id: "brand_kawasaki", type: "brand", values: { fr: ["Kawasaki"], ar: ["كاوازاكي"], en: ["Kawasaki"] }, metadata: { region: 'asia' } },
  { id: "brand_suzuki_moto", type: "brand", values: { fr: ["Suzuki Moto"], ar: ["سوزوكي دراجات"], en: ["Suzuki"] }, metadata: { region: 'asia' } },
  { id: "brand_bmw_motorrad", type: "brand", values: { fr: ["BMW Motorrad"], ar: ["بي ام دبليو دراجات"], en: ["BMW Motorrad"] }, metadata: { region: 'eu' } },
  { id: "brand_ktm", type: "brand", values: { fr: ["KTM"], ar: ["كا تي ام"], en: ["KTM"] }, metadata: { region: 'eu' } },
  { id: "brand_ducati", type: "brand", values: { fr: ["Ducati"], ar: ["دوكاتي"], en: ["Ducati"] }, metadata: { region: 'eu' } },
  { id: "brand_triumph", type: "brand", values: { fr: ["Triumph"], ar: ["تريومف"], en: ["Triumph"] }, metadata: { region: 'eu' } },
  { id: "brand_harley", type: "brand", values: { fr: ["Harley-Davidson"], ar: ["هارلي ديفيدسون"], en: ["Harley-Davidson"] }, metadata: { region: 'us' } },
  { id: "brand_vms", type: "brand", values: { fr: ["VMS"], ar: ["في ام اس"], en: ["VMS"] }, metadata: { region: 'dz' } },
  { id: "brand_sym", type: "brand", values: { fr: ["SYM"], ar: ["سيم"], en: ["SYM"] }, metadata: { region: 'asia' } },
  { id: "brand_piaggio", type: "brand", values: { fr: ["Piaggio", "Vespa"], ar: ["بياجو"], en: ["Piaggio"] }, metadata: { region: 'eu' } },

  // ==================================================================================
  //                                  MODÈLES (MODELS)
  // ==================================================================================

  // --- RENAULT ---
  { id: "model_clio", type: "model", values: { fr: ["Clio", "Clio 4", "Clio 5", "Campus"], ar: ["كليو"], en: ["Clio"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_megane", type: "model", values: { fr: ["Megane", "Mégane"], ar: ["ميغان"], en: ["Megane"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_symbol", type: "model", values: { fr: ["Symbol"], ar: ["سامبول"], en: ["Symbol"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  { id: "model_kangoo", type: "model", values: { fr: ["Kangoo"], ar: ["كانغو"], en: ["Kangoo"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_scenic", type: "model", values: { fr: ["Scenic"], ar: ["سينيك"], en: ["Scenic"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  { id: "model_captur", type: "model", values: { fr: ["Captur"], ar: ["كابتير"], en: ["Captur"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_kadjar", type: "model", values: { fr: ["Kadjar"], ar: ["كادجار"], en: ["Kadjar"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_talisman", type: "model", values: { fr: ["Talisman"], ar: ["تاليسمان"], en: ["Talisman"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_arkana", type: "model", values: { fr: ["Arkana"], ar: ["اركانا"], en: ["Arkana"] }, metadata: { brandId: "brand_renault" } },
  { id: "model_master", type: "model", values: { fr: ["Master"], ar: ["ماستر"], en: ["Master"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  { id: "model_trafic", type: "model", values: { fr: ["Trafic"], ar: ["ترافيك"], en: ["Trafic"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },

  // --- PEUGEOT ---
  { id: "model_208", type: "model", values: { fr: ["208"], ar: ["208"], en: ["208"] }, metadata: { brandId: "brand_peugeot" } },
  { id: "model_308", type: "model", values: { fr: ["308"], ar: ["308"], en: ["308"] }, metadata: { brandId: "brand_peugeot" } },
  { id: "model_2008", type: "model", values: { fr: ["2008"], ar: ["2008"], en: ["2008"] }, metadata: { brandId: "brand_peugeot" } },
  { id: "model_3008", type: "model", values: { fr: ["3008"], ar: ["3008"], en: ["3008"] }, metadata: { brandId: "brand_peugeot" } },
  { id: "model_5008", type: "model", values: { fr: ["5008"], ar: ["5008"], en: ["5008"] }, metadata: { brandId: "brand_peugeot" } },
  { id: "model_508", type: "model", values: { fr: ["508"], ar: ["508"], en: ["508"] }, metadata: { brandId: "brand_peugeot" } },
  { id: "model_partner", type: "model", values: { fr: ["Partner", "Rifter"], ar: ["بارتنر"], en: ["Partner"] }, metadata: { brandId: "brand_peugeot", isAmbiguous: true } },
  { id: "model_expert", type: "model", values: { fr: ["Expert", "Traveller"], ar: ["اكسبار"], en: ["Expert"] }, metadata: { brandId: "brand_peugeot", isAmbiguous: true } },
  { id: "model_boxer", type: "model", values: { fr: ["Boxer"], ar: ["بوكسر"], en: ["Boxer"] }, metadata: { brandId: "brand_peugeot", isAmbiguous: true } },

  // --- VOLKSWAGEN ---
  { id: "model_golf", type: "model", values: { fr: ["Golf", "Golf 8", "Golf 7"], ar: ["غولف"], en: ["Golf"] }, metadata: { brandId: "brand_volkswagen", isAmbiguous: true } },
  { id: "model_polo", type: "model", values: { fr: ["Polo"], ar: ["بولو"], en: ["Polo"] }, metadata: { brandId: "brand_volkswagen", isAmbiguous: true } },
  { id: "model_tiguan", type: "model", values: { fr: ["Tiguan"], ar: ["تيغوان"], en: ["Tiguan"] }, metadata: { brandId: "brand_volkswagen" } },
  { id: "model_passat", type: "model", values: { fr: ["Passat"], ar: ["باسات"], en: ["Passat"] }, metadata: { brandId: "brand_volkswagen" } },
  { id: "model_touareg", type: "model", values: { fr: ["Touareg"], ar: ["طوارق"], en: ["Touareg"] }, metadata: { brandId: "brand_volkswagen" } },
  { id: "model_troc", type: "model", values: { fr: ["T-Roc"], ar: ["تي روك"], en: ["T-Roc"] }, metadata: { brandId: "brand_volkswagen" } },
  { id: "model_caddy", type: "model", values: { fr: ["Caddy"], ar: ["كادي"], en: ["Caddy"] }, metadata: { brandId: "brand_volkswagen", isAmbiguous: true } },
  { id: "model_amarok", type: "model", values: { fr: ["Amarok"], ar: ["أماروك"], en: ["Amarok"] }, metadata: { brandId: "brand_volkswagen" } },
  { id: "model_fox", type: "model", values: { fr: ["Fox"], ar: ["فوكس"], en: ["Fox"] }, metadata: { brandId: "brand_volkswagen", isAmbiguous: true } },
  { id: "model_up", type: "model", values: { fr: ["Up"], ar: ["اب"], en: ["Up"] }, metadata: { brandId: "brand_volkswagen", isAmbiguous: true } },

  // --- MERCEDES-BENZ ---
  { id: "model_a_class", type: "model", values: { fr: ["Classe A", "A-Class", "A180", "A200", "A45"], ar: ["كلاس أ", "A Class"], en: ["A-Class"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_c_class", type: "model", values: { fr: ["Classe C", "C-Class", "C220", "C63"], ar: ["كلاس سي"], en: ["C-Class"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_e_class", type: "model", values: { fr: ["Classe E", "E-Class", "E220", "E300"], ar: ["كلاس اي"], en: ["E-Class"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_s_class", type: "model", values: { fr: ["Classe S", "S-Class", "S500"], ar: ["كلاس اس"], en: ["S-Class"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_g_class", type: "model", values: { fr: ["Classe G", "G-Class", "G63", "G Wagon"], ar: ["جي كلاس"], en: ["G-Class"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_gla", type: "model", values: { fr: ["GLA"], ar: ["GLA"], en: ["GLA"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_glc", type: "model", values: { fr: ["GLC"], ar: ["GLC"], en: ["GLC"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_gle", type: "model", values: { fr: ["GLE"], ar: ["GLE"], en: ["GLE"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_cla", type: "model", values: { fr: ["CLA"], ar: ["CLA"], en: ["CLA"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_vito", type: "model", values: { fr: ["Vito"], ar: ["فيتو"], en: ["Vito"] }, metadata: { brandId: "brand_mercedes" } },
  { id: "model_sprinter", type: "model", values: { fr: ["Sprinter"], ar: ["سبرينتر"], en: ["Sprinter"] }, metadata: { brandId: "brand_mercedes", isAmbiguous: true } },

  // --- BMW ---
  { id: "model_1_series", type: "model", values: { fr: ["Série 1", "1 Series"], ar: ["سيري 1"], en: ["1 Series"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_3_series", type: "model", values: { fr: ["Série 3", "3 Series"], ar: ["سيري 3"], en: ["3 Series"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_5_series", type: "model", values: { fr: ["Série 5", "5 Series"], ar: ["سيري 5"], en: ["5 Series"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_x1", type: "model", values: { fr: ["X1"], ar: ["X1"], en: ["X1"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_x3", type: "model", values: { fr: ["X3"], ar: ["X3"], en: ["X3"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_x5", type: "model", values: { fr: ["X5"], ar: ["X5"], en: ["X5"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_x6", type: "model", values: { fr: ["X6"], ar: ["X6"], en: ["X6"] }, metadata: { brandId: "brand_bmw" } },
  { id: "model_m_series", type: "model", values: { fr: ["M3", "M4", "M5", "M Power"], ar: ["ام باور"], en: ["M Series"] }, metadata: { brandId: "brand_bmw" } },

  // --- AUDI ---
  { id: "model_a3", type: "model", values: { fr: ["A3", "S3", "RS3"], ar: ["A3"], en: ["A3"] }, metadata: { brandId: "brand_audi" } },
  { id: "model_a4", type: "model", values: { fr: ["A4"], ar: ["A4"], en: ["A4"] }, metadata: { brandId: "brand_audi" } },
  { id: "model_a6", type: "model", values: { fr: ["A6"], ar: ["A6"], en: ["A6"] }, metadata: { brandId: "brand_audi" } },
  { id: "model_q3", type: "model", values: { fr: ["Q3", "RSQ3"], ar: ["Q3"], en: ["Q3"] }, metadata: { brandId: "brand_audi" } },
  { id: "model_q5", type: "model", values: { fr: ["Q5"], ar: ["Q5"], en: ["Q5"] }, metadata: { brandId: "brand_audi" } },
  { id: "model_q7", type: "model", values: { fr: ["Q7"], ar: ["Q7"], en: ["Q7"] }, metadata: { brandId: "brand_audi" } },
  { id: "model_q8", type: "model", values: { fr: ["Q8", "RSQ8"], ar: ["Q8"], en: ["Q8"] }, metadata: { brandId: "brand_audi" } },

  // --- TOYOTA ---
  { id: "model_yaris", type: "model", values: { fr: ["Yaris"], ar: ["ياريس"], en: ["Yaris"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_corolla", type: "model", values: { fr: ["Corolla"], ar: ["كورولا"], en: ["Corolla"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_camry", type: "model", values: { fr: ["Camry"], ar: ["كامري"], en: ["Camry"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_hilux", type: "model", values: { fr: ["Hilux"], ar: ["هيلوكس"], en: ["Hilux"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_landcruiser", type: "model", values: { fr: ["Land Cruiser", "Station", "V8"], ar: ["لاند كروزر"], en: ["Land Cruiser"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_prado", type: "model", values: { fr: ["Prado", "Land Cruiser Prado"], ar: ["برادو"], en: ["Prado"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_rav4", type: "model", values: { fr: ["RAV4"], ar: ["راف 4"], en: ["RAV4"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_fortuner", type: "model", values: { fr: ["Fortuner"], ar: ["فورتشنر"], en: ["Fortuner"] }, metadata: { brandId: "brand_toyota" } },
  { id: "model_highlander", type: "model", values: { fr: ["Highlander"], ar: ["هايلاندر"], en: ["Highlander"] }, metadata: { brandId: "brand_toyota" } },

  // --- HYUNDAI ---
  { id: "model_accent", type: "model", values: { fr: ["Accent"], ar: ["اكسنت"], en: ["Accent"] }, metadata: { brandId: "brand_hyundai", isAmbiguous: true } },
  { id: "model_tucson", type: "model", values: { fr: ["Tucson"], ar: ["توكسون"], en: ["Tucson"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_santafe", type: "model", values: { fr: ["Santa Fe"], ar: ["سانتافي"], en: ["Santa Fe"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_creta", type: "model", values: { fr: ["Creta"], ar: ["كريتا"], en: ["Creta"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_i10", type: "model", values: { fr: ["i10", "Grand i10"], ar: ["i10"], en: ["i10"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_i20", type: "model", values: { fr: ["i20"], ar: ["i20"], en: ["i20"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_i30", type: "model", values: { fr: ["i30"], ar: ["i30"], en: ["i30"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_elantra", type: "model", values: { fr: ["Elantra"], ar: ["النترا"], en: ["Elantra"] }, metadata: { brandId: "brand_hyundai" } },
  { id: "model_sonata", type: "model", values: { fr: ["Sonata"], ar: ["سوناتا"], en: ["Sonata"] }, metadata: { brandId: "brand_hyundai", isAmbiguous: true } },
  { id: "model_h1", type: "model", values: { fr: ["H-1", "Starex"], ar: ["H1", "ستاركس"], en: ["H-1"] }, metadata: { brandId: "brand_hyundai" } },

  // --- FORD ---
  { id: "model_fiesta", type: "model", values: { fr: ["Fiesta"], ar: ["فييستا"], en: ["Fiesta"] }, metadata: { brandId: "brand_ford", isAmbiguous: true } },
  { id: "model_focus", type: "model", values: { fr: ["Focus"], ar: ["فوكس"], en: ["Focus"] }, metadata: { brandId: "brand_ford", isAmbiguous: true } },
  { id: "model_ranger", type: "model", values: { fr: ["Ranger", "Wildtrak"], ar: ["رينجر"], en: ["Ranger"] }, metadata: { brandId: "brand_ford", isAmbiguous: true } },
  { id: "model_kuga", type: "model", values: { fr: ["Kuga"], ar: ["كوغا"], en: ["Kuga"] }, metadata: { brandId: "brand_ford" } },
  { id: "model_mustang", type: "model", values: { fr: ["Mustang", "GT"], ar: ["موستانج"], en: ["Mustang"] }, metadata: { brandId: "brand_ford" } },
  { id: "model_explorer", type: "model", values: { fr: ["Explorer"], ar: ["اكسبلورر"], en: ["Explorer"] }, metadata: { brandId: "brand_ford" } },
  { id: "model_f150", type: "model", values: { fr: ["F-150", "F150", "Raptor"], ar: ["F150"], en: ["F-150"] }, metadata: { brandId: "brand_ford" } },
  { id: "model_transit", type: "model", values: { fr: ["Transit"], ar: ["ترانزيت"], en: ["Transit"] }, metadata: { brandId: "brand_ford" } },

  // --- CHEVROLET ---
  { id: "model_spark", type: "model", values: { fr: ["Spark"], ar: ["سبارك"], en: ["Spark"] }, metadata: { brandId: "brand_chevrolet", isAmbiguous: true } },
  { id: "model_sail", type: "model", values: { fr: ["Sail"], ar: ["سايل"], en: ["Sail"] }, metadata: { brandId: "brand_chevrolet", isAmbiguous: true } },
  { id: "model_aveo", type: "model", values: { fr: ["Aveo"], ar: ["افيو"], en: ["Aveo"] }, metadata: { brandId: "brand_chevrolet" } },
  { id: "model_cruze", type: "model", values: { fr: ["Cruze"], ar: ["كروز"], en: ["Cruze"] }, metadata: { brandId: "brand_chevrolet" } },
  { id: "model_captiva", type: "model", values: { fr: ["Captiva"], ar: ["كابتيفا"], en: ["Captiva"] }, metadata: { brandId: "brand_chevrolet" } },
  { id: "model_tahoe", type: "model", values: { fr: ["Tahoe"], ar: ["تاهو"], en: ["Tahoe"] }, metadata: { brandId: "brand_chevrolet" } },
  { id: "model_camaro", type: "model", values: { fr: ["Camaro"], ar: ["كامارو"], en: ["Camaro"] }, metadata: { brandId: "brand_chevrolet" } },
  { id: "model_silverado", type: "model", values: { fr: ["Silverado"], ar: ["سيلفرادو"], en: ["Silverado"] }, metadata: { brandId: "brand_chevrolet" } },

  // --- JEEP ---
  { id: "model_renegade", type: "model", values: { fr: ["Renegade"], ar: ["رينيغيد"], en: ["Renegade"] }, metadata: { brandId: "brand_jeep" } },
  { id: "model_compass", type: "model", values: { fr: ["Compass"], ar: ["كومباس"], en: ["Compass"] }, metadata: { brandId: "brand_jeep" } },
  { id: "model_cherokee", type: "model", values: { fr: ["Cherokee"], ar: ["شيروكي"], en: ["Cherokee"] }, metadata: { brandId: "brand_jeep" } },
  { id: "model_grand_cherokee", type: "model", values: { fr: ["Grand Cherokee"], ar: ["غراند شيروكي"], en: ["Grand Cherokee"] }, metadata: { brandId: "brand_jeep" } },
  { id: "model_wrangler", type: "model", values: { fr: ["Wrangler", "Rubicon", "Sahara"], ar: ["رانجلر"], en: ["Wrangler"] }, metadata: { brandId: "brand_jeep" } },

  // --- LAND ROVER ---
  { id: "model_range_rover", type: "model", values: { fr: ["Range Rover", "Vogue"], ar: ["رنج روفر"], en: ["Range Rover"] }, metadata: { brandId: "brand_land_rover" } },
  { id: "model_range_sport", type: "model", values: { fr: ["Range Rover Sport"], ar: ["رنج روفر سبورت"], en: ["Range Rover Sport"] }, metadata: { brandId: "brand_land_rover" } },
  { id: "model_evoque", type: "model", values: { fr: ["Evoque"], ar: ["ايفوك"], en: ["Evoque"] }, metadata: { brandId: "brand_land_rover" } },
  { id: "model_velar", type: "model", values: { fr: ["Velar"], ar: ["فيلار"], en: ["Velar"] }, metadata: { brandId: "brand_land_rover" } },
  { id: "model_defender", type: "model", values: { fr: ["Defender"], ar: ["ديفندر"], en: ["Defender"] }, metadata: { brandId: "brand_land_rover" } },

  // --- PORSCHE ---
  { id: "model_cayenne", type: "model", values: { fr: ["Cayenne"], ar: ["كايين"], en: ["Cayenne"] }, metadata: { brandId: "brand_porsche" } },
  { id: "model_macan", type: "model", values: { fr: ["Macan"], ar: ["ماكان"], en: ["Macan"] }, metadata: { brandId: "brand_porsche" } },
  { id: "model_panamera", type: "model", values: { fr: ["Panamera"], ar: ["باناميرا"], en: ["Panamera"] }, metadata: { brandId: "brand_porsche" } },
  { id: "model_911", type: "model", values: { fr: ["911", "Carrera", "Turbo"], ar: ["911"], en: ["911"] }, metadata: { brandId: "brand_porsche" } },

  // --- TESLA ---
  { id: "model_model_3", type: "model", values: { fr: ["Model 3"], ar: ["موديل 3"], en: ["Model 3"] }, metadata: { brandId: "brand_tesla" } },
  { id: "model_model_y", type: "model", values: { fr: ["Model Y"], ar: ["موديل Y"], en: ["Model Y"] }, metadata: { brandId: "brand_tesla" } },
  { id: "model_model_s", type: "model", values: { fr: ["Model S"], ar: ["موديل S"], en: ["Model S"] }, metadata: { brandId: "brand_tesla" } },
  { id: "model_model_x", type: "model", values: { fr: ["Model X"], ar: ["موديل X"], en: ["Model X"] }, metadata: { brandId: "brand_tesla" } },

  // --- NISSAN ---
  { id: "model_qashqai", type: "model", values: { fr: ["Qashqai"], ar: ["كاشكاي"], en: ["Qashqai"] }, metadata: { brandId: "brand_nissan" } },
  { id: "model_juke", type: "model", values: { fr: ["Juke"], ar: ["جوك"], en: ["Juke"] }, metadata: { brandId: "brand_nissan" } },
  { id: "model_navara", type: "model", values: { fr: ["Navara"], ar: ["نافارا"], en: ["Navara"] }, metadata: { brandId: "brand_nissan" } },
  { id: "model_patrol", type: "model", values: { fr: ["Patrol", "VTC", "Safari"], ar: ["باترول", "سفاري"], en: ["Patrol"] }, metadata: { brandId: "brand_nissan" } },
  { id: "model_sunny", type: "model", values: { fr: ["Sunny"], ar: ["صني"], en: ["Sunny"] }, metadata: { brandId: "brand_nissan" } },
  { id: "model_micra", type: "model", values: { fr: ["Micra"], ar: ["ميكرا"], en: ["Micra"] }, metadata: { brandId: "brand_nissan" } },

  // --- SUZUKI ---
  { id: "model_swift", type: "model", values: { fr: ["Swift"], ar: ["سويفت"], en: ["Swift"] }, metadata: { brandId: "brand_suzuki", isAmbiguous: true } },
  { id: "model_alto", type: "model", values: { fr: ["Alto", "Alto K10"], ar: ["التو"], en: ["Alto"] }, metadata: { brandId: "brand_suzuki" } },
  { id: "model_maruti", type: "model", values: { fr: ["Maruti", "800"], ar: ["ماروتي"], en: ["Maruti"] }, metadata: { brandId: "brand_suzuki" } },
  { id: "model_celerio", type: "model", values: { fr: ["Celerio"], ar: ["سيليريو"], en: ["Celerio"] }, metadata: { brandId: "brand_suzuki" } },
  { id: "model_baleno", type: "model", values: { fr: ["Baleno"], ar: ["بالينو"], en: ["Baleno"] }, metadata: { brandId: "brand_suzuki" } },
  { id: "model_jimny", type: "model", values: { fr: ["Jimny"], ar: ["جيمني"], en: ["Jimny"] }, metadata: { brandId: "brand_suzuki" } },
  { id: "model_vitara", type: "model", values: { fr: ["Vitara", "Grand Vitara"], ar: ["فيتارا"], en: ["Vitara"] }, metadata: { brandId: "brand_suzuki" } },

  // --- DACIA ---
  { id: "model_sandero", type: "model", values: { fr: ["Sandero"], ar: ["سانديرو"], en: ["Sandero"] }, metadata: { brandId: "brand_dacia" } },
  { id: "model_stepway", type: "model", values: { fr: ["Stepway"], ar: ["ستيبواي"], en: ["Stepway"] }, metadata: { brandId: "brand_dacia" } },
  { id: "model_duster", type: "model", values: { fr: ["Duster"], ar: ["داستر"], en: ["Duster"] }, metadata: { brandId: "brand_dacia" } },
  { id: "model_logan", type: "model", values: { fr: ["Logan"], ar: ["لوغان"], en: ["Logan"] }, metadata: { brandId: "brand_dacia" } },
  { id: "model_dokker", type: "model", values: { fr: ["Dokker"], ar: ["دوكر"], en: ["Dokker"] }, metadata: { brandId: "brand_dacia" } },

  // --- SEAT ---
  { id: "model_ibiza", type: "model", values: { fr: ["Ibiza"], ar: ["إيبيزا"], en: ["Ibiza"] }, metadata: { brandId: "brand_seat", isAmbiguous: true } },
  { id: "model_leon", type: "model", values: { fr: ["Leon"], ar: ["ليون"], en: ["Leon"] }, metadata: { brandId: "brand_seat", isAmbiguous: true } },
  { id: "model_arona", type: "model", values: { fr: ["Arona"], ar: ["أرونا"], en: ["Arona"] }, metadata: { brandId: "brand_seat" } },
  { id: "model_ateca", type: "model", values: { fr: ["Ateca"], ar: ["أتيكا"], en: ["Ateca"] }, metadata: { brandId: "brand_seat" } },

  // --- SKODA ---
  { id: "model_fabia", type: "model", values: { fr: ["Fabia"], ar: ["فابيا"], en: ["Fabia"] }, metadata: { brandId: "brand_skoda" } },
  { id: "model_octavia", type: "model", values: { fr: ["Octavia"], ar: ["اوكتافيا"], en: ["Octavia"] }, metadata: { brandId: "brand_skoda" } },
  { id: "model_rapid", type: "model", values: { fr: ["Rapid"], ar: ["رابيد"], en: ["Rapid"] }, metadata: { brandId: "brand_skoda" } },
  { id: "model_yeti", type: "model", values: { fr: ["Yeti"], ar: ["يتي"], en: ["Yeti"] }, metadata: { brandId: "brand_skoda" } },
  { id: "model_kodiaq", type: "model", values: { fr: ["Kodiaq"], ar: ["كودياك"], en: ["Kodiaq"] }, metadata: { brandId: "brand_skoda" } },

  // --- CAMIONS (TRUCKS) MODELS ---
  { id: "model_actros", type: "model", values: { fr: ["Actros"], ar: ["اكتروس"], en: ["Actros"] }, metadata: { brandId: "brand_mercedes_trucks" } },
  { id: "model_atego", type: "model", values: { fr: ["Atego"], ar: ["اتيغو"], en: ["Atego"] }, metadata: { brandId: "brand_mercedes_trucks" } },
  { id: "model_arocs", type: "model", values: { fr: ["Arocs"], ar: ["اروكس"], en: ["Arocs"] }, metadata: { brandId: "brand_mercedes_trucks" } },
  { id: "model_accelo", type: "model", values: { fr: ["Accelo"], ar: ["اسيلو"], en: ["Accelo"] }, metadata: { brandId: "brand_mercedes_trucks" } },
  
  { id: "model_fh", type: "model", values: { fr: ["FH", "FH16"], ar: ["FH"], en: ["FH"] }, metadata: { brandId: "brand_volvo_trucks" } },
  { id: "model_fm", type: "model", values: { fr: ["FM"], ar: ["FM"], en: ["FM"] }, metadata: { brandId: "brand_volvo_trucks" } },
  { id: "model_fmx", type: "model", values: { fr: ["FMX"], ar: ["FMX"], en: ["FMX"] }, metadata: { brandId: "brand_volvo_trucks" } },

  { id: "model_kerax", type: "model", values: { fr: ["Kerax"], ar: ["كيراكس"], en: ["Kerax"] }, metadata: { brandId: "brand_renault_trucks" } },
  { id: "model_premium", type: "model", values: { fr: ["Premium"], ar: ["بريميوم"], en: ["Premium"] }, metadata: { brandId: "brand_renault_trucks" } },
  { id: "model_range_t", type: "model", values: { fr: ["Série T", "Range T"], ar: ["سلسلة T"], en: ["Range T"] }, metadata: { brandId: "brand_renault_trucks" } },
  { id: "model_range_k", type: "model", values: { fr: ["Série K", "Range K"], ar: ["سلسلة K"], en: ["Range K"] }, metadata: { brandId: "brand_renault_trucks" } },
  { id: "model_range_c", type: "model", values: { fr: ["Série C", "Range C"], ar: ["سلسلة C"], en: ["Range C"] }, metadata: { brandId: "brand_renault_trucks" } },

  { id: "model_tgx", type: "model", values: { fr: ["TGX"], ar: ["TGX"], en: ["TGX"] }, metadata: { brandId: "brand_man" } },
  { id: "model_tgs", type: "model", values: { fr: ["TGS"], ar: ["TGS"], en: ["TGS"] }, metadata: { brandId: "brand_man" } },
  { id: "model_tga", type: "model", values: { fr: ["TGA"], ar: ["TGA"], en: ["TGA"] }, metadata: { brandId: "brand_man" } },

  { id: "model_r_series", type: "model", values: { fr: ["Série R", "R450", "R500"], ar: ["سلسلة R"], en: ["R Series"] }, metadata: { brandId: "brand_scania" } },
  { id: "model_s_series", type: "model", values: { fr: ["Série S"], ar: ["سلسلة S"], en: ["S Series"] }, metadata: { brandId: "brand_scania" } },
  { id: "model_g_series", type: "model", values: { fr: ["Série G"], ar: ["سلسلة G"], en: ["G Series"] }, metadata: { brandId: "brand_scania" } },

  { id: "model_xf", type: "model", values: { fr: ["XF"], ar: ["XF"], en: ["XF"] }, metadata: { brandId: "brand_daf" } },
  { id: "model_cf", type: "model", values: { fr: ["CF"], ar: ["CF"], en: ["CF"] }, metadata: { brandId: "brand_daf" } },

  { id: "model_stralis", type: "model", values: { fr: ["Stralis"], ar: ["ستراليس"], en: ["Stralis"] }, metadata: { brandId: "brand_iveco" } },
  { id: "model_daily", type: "model", values: { fr: ["Daily"], ar: ["ديلي"], en: ["Daily"] }, metadata: { brandId: "brand_iveco", isAmbiguous: true } },
  { id: "model_trakker", type: "model", values: { fr: ["Trakker"], ar: ["تراكر"], en: ["Trakker"] }, metadata: { brandId: "brand_iveco" } },

  // --- MOTOS (BIKES) MODELS ---
  { id: "model_tmax", type: "model", values: { fr: ["TMAX", "T-Max"], ar: ["تي ماكس"], en: ["TMAX"] }, metadata: { brandId: "brand_yamaha" } },
  { id: "model_xmax", type: "model", values: { fr: ["XMAX", "X-Max"], ar: ["اكس ماكس"], en: ["XMAX"] }, metadata: { brandId: "brand_yamaha" } },
  { id: "model_mt07", type: "model", values: { fr: ["MT-07", "MT07"], ar: ["MT07"], en: ["MT-07"] }, metadata: { brandId: "brand_yamaha" } },
  { id: "model_mt09", type: "model", values: { fr: ["MT-09", "MT09"], ar: ["MT09"], en: ["MT-09"] }, metadata: { brandId: "brand_yamaha" } },
  { id: "model_r1", type: "model", values: { fr: ["R1", "YZF-R1"], ar: ["R1"], en: ["R1"] }, metadata: { brandId: "brand_yamaha" } },
  { id: "model_r6", type: "model", values: { fr: ["R6", "YZF-R6"], ar: ["R6"], en: ["R6"] }, metadata: { brandId: "brand_yamaha" } },

  { id: "model_sh", type: "model", values: { fr: ["SH", "SH300", "SH150"], ar: ["SH"], en: ["SH"] }, metadata: { brandId: "brand_honda_moto" } },
  { id: "model_pcx", type: "model", values: { fr: ["PCX"], ar: ["PCX"], en: ["PCX"] }, metadata: { brandId: "brand_honda_moto" } },
  { id: "model_cbr", type: "model", values: { fr: ["CBR", "CBR1000RR", "CBR600RR"], ar: ["CBR"], en: ["CBR"] }, metadata: { brandId: "brand_honda_moto" } },
  { id: "model_africa_twin", type: "model", values: { fr: ["Africa Twin", "CRF1000L"], ar: ["افريكا توين"], en: ["Africa Twin"] }, metadata: { brandId: "brand_honda_moto" } },

  { id: "model_z900", type: "model", values: { fr: ["Z900", "Z800"], ar: ["Z900"], en: ["Z900"] }, metadata: { brandId: "brand_kawasaki" } },
  { id: "model_z1000", type: "model", values: { fr: ["Z1000"], ar: ["Z1000"], en: ["Z1000"] }, metadata: { brandId: "brand_kawasaki" } },
  { id: "model_ninja", type: "model", values: { fr: ["Ninja", "ZX-10R", "ZX-6R"], ar: ["نينجا"], en: ["Ninja"] }, metadata: { brandId: "brand_kawasaki" } },

  { id: "model_gs", type: "model", values: { fr: ["GS", "R1250GS", "R1200GS", "F850GS"], ar: ["GS"], en: ["GS"] }, metadata: { brandId: "brand_bmw_motorrad" } },
  { id: "model_s1000rr", type: "model", values: { fr: ["S1000RR"], ar: ["S1000RR"], en: ["S1000RR"] }, metadata: { brandId: "brand_bmw_motorrad" } },

  { id: "model_vstrom", type: "model", values: { fr: ["V-Strom", "DL650", "DL1000"], ar: ["في ستروم"], en: ["V-Strom"] }, metadata: { brandId: "brand_suzuki_moto" } },
  { id: "model_gsxr", type: "model", values: { fr: ["GSX-R", "GSXR"], ar: ["GSXR"], en: ["GSX-R"] }, metadata: { brandId: "brand_suzuki_moto" } },

  { id: "model_duke", type: "model", values: { fr: ["Duke", "Super Duke"], ar: ["ديوك"], en: ["Duke"] }, metadata: { brandId: "brand_ktm" } },

  { id: "model_sportster", type: "model", values: { fr: ["Sportster", "Iron 883"], ar: ["سبورتستر"], en: ["Sportster"] }, metadata: { brandId: "brand_harley" } },
  { id: "model_softail", type: "model", values: { fr: ["Softail", "Fat Boy"], ar: ["سوفتيل"], en: ["Softail"] }, metadata: { brandId: "brand_harley" } },

  // --- TYPES DE VÉHICULES (GLOBAL) ---
  { id: "type_car", type: "type", values: { fr: ["Voiture", "Auto", "Automobile", "Véhicule", "Tourisme"], ar: ["سيارة", "مركبة", "سياحية"], en: ["Car", "Auto", "Vehicle"], es: ["Coche", "Auto", "Automóvil"], de: ["Auto", "PKW", "Wagen"], it: ["Auto", "Macchina", "Automobile"] }, metadata: { region: 'global' } },
  { id: "type_truck", type: "type", values: { fr: ["Camion", "Poids lourd", "Semi-remorque", "Tracteur routier", "Benne"], ar: ["شاحنة", "كاميو", "رموك"], en: ["Truck", "Lorry", "Semi-trailer"], es: ["Camión", "Tráiler"], de: ["LKW", "Lastwagen"], it: ["Camion", "Autocarro"] }, metadata: { region: 'global' } },
  { id: "type_motorcycle", type: "type", values: { fr: ["Moto", "Motocyclette", "Scooter", "Maxi-Scooter", "Quad"], ar: ["دراجة نارية", "موتو", "سكوتر"], en: ["Motorcycle", "Bike", "Scooter"], es: ["Moto", "Motocicleta"], de: ["Motorrad", "Bike"], it: ["Moto", "Motocicletta"] }, metadata: { region: 'global' } },
  { id: "type_bus", type: "type", values: { fr: ["Bus", "Autobus", "Minibus", "Autocar"], ar: ["حافلة", "بيس", "كار"], en: ["Bus", "Coach"], es: ["Autobús", "Bus"], de: ["Bus", "Omnibus"], it: ["Autobus", "Bus"] }, metadata: { region: 'global' } },
  { id: "type_van", type: "type", values: { fr: ["Fourgon", "Fourgonnette", "Utilitaire", "VUL"], ar: ["فورڨون"], en: ["Van", "Utility"], es: ["Furgoneta", "Furgón"], de: ["Transporter", "Lieferwagen"], it: ["Furgone", "Veicolo commerciale"] }, metadata: { region: 'global' } },
  { id: "type_pickup", type: "type", values: { fr: ["Pick-up", "Pickup", "4x4 Benne"], ar: ["بيكوب", "كات كات"], en: ["Pickup", "Truck"], es: ["Pickup", "Camioneta"], de: ["Pickup"], it: ["Pickup"] }, metadata: { region: 'global' } },
  { id: "type_machinery", type: "type", values: { fr: ["Engin", "Travaux publics", "Tractopelle", "Niveleuse", "Chariot élévateur"], ar: ["آلة", "اشغال عمومية", "تراكس"], en: ["Machinery", "Construction Equipment"], es: ["Maquinaria", "Obra pública"], de: ["Baumaschinen"], it: ["Macchinari", "Macchine movimento terra"] }, metadata: { region: 'global' } },

  // --- CARBURANT (FUEL) ---
  { id: "fuel_gasoline", type: "fuel", values: { fr: ["Essence"], ar: ["بنزين", "ايصونص"], en: ["Gasoline", "Petrol"], es: ["Gasolina"], de: ["Benzin"], it: ["Benzina"] }, metadata: { region: 'global' } },
  { id: "fuel_diesel", type: "fuel", values: { fr: ["Diesel"], ar: ["ديزل", "مازوت"], en: ["Diesel"], es: ["Diésel"], de: ["Diesel"], it: ["Diesel"] }, metadata: { region: 'global' } },
  { id: "fuel_lpg", type: "fuel", values: { fr: ["GPL", "Sirghaz"], ar: ["غاز", "سيرغاز"], en: ["LPG"], es: ["GLP"], de: ["LPG", "Autogas"], it: ["GPL"] }, metadata: { region: 'global' } },
  { id: "fuel_hybrid", type: "fuel", values: { fr: ["Hybride"], ar: ["هجين"], en: ["Hybrid"], es: ["Híbrido"], de: ["Hybrid"], it: ["Ibrido"] }, metadata: { region: 'global' } },
  { id: "fuel_electric", type: "fuel", values: { fr: ["Électrique"], ar: ["كهربائي"], en: ["Electric"], es: ["Eléctrico"], de: ["Elektro"], it: ["Elettrico"] }, metadata: { region: 'global' } },

  // --- TRANSMISSION ---
  { id: "trans_manual", type: "transmission", values: { fr: ["Manuelle"], ar: ["يدوي", "مانويل"], en: ["Manual"], es: ["Manual"], de: ["Schaltgetriebe"], it: ["Manuale"] }, metadata: { region: 'global' } },
  { id: "trans_automatic", type: "transmission", values: { fr: ["Automatique", "Auto"], ar: ["أوتوماتيك"], en: ["Automatic"], es: ["Automático"], de: ["Automatik"], it: ["Automatico"] }, metadata: { region: 'global' } },

  // --- PAPIERS / ÉTAT (SPECIFIC TO ALGERIA BUT USEFUL) ---
  { id: "paper_safia", type: "paper", values: { fr: ["Safia", "Carte Grise Safia"], ar: ["صافية"], en: ["Clean Title"], es: ["Safia"], de: ["Safia"], it: ["Safia"] }, metadata: { region: 'dz' } },
  { id: "paper_licence", type: "paper", values: { fr: ["Licence", "Moudjahid"], ar: ["رخصة", "مجاهدين"], en: ["License"], es: ["Licencia"], de: ["Lizenz"], it: ["Licenza"] }, metadata: { region: 'dz' } },
  { id: "paper_credit", type: "paper", values: { fr: ["Crédit", "Par facilité"], ar: ["كريدي", "تقسيط"], en: ["Credit"], es: ["Crédito"], de: ["Kredit"], it: ["Credito"] }, metadata: { region: 'dz' } },

  // --- ÉTAT ---
  { id: "condition_new", type: "condition", values: { 
    fr: ["Neuf", "Nouveau"], 
    ar: ["جديد"], 
    en: ["New"],
    es: ["Nuevo"],
    de: ["Neu", "Neuwagen"],
    it: ["Nuovo"]
  }, metadata: { region: 'global' } },

  { id: "condition_used", type: "condition", values: { 
    fr: ["Occasion", "Ancien"], 
    ar: ["مستعمل"], 
    en: ["Used"],
    es: ["Usado", "Ocasión", "Segunda mano"],
    de: ["Gebraucht", "Gebrauchtwagen"],
    it: ["Usato"]
  }, metadata: { region: 'global' } },

  { id: "condition_accident", type: "condition", values: { 
    fr: ["Accidenté", "Endommagé"], 
    ar: ["معاود", "مصدوم"], 
    en: ["Damaged"],
    es: ["Accidentado", "Dañado"],
    de: ["Unfallwagen", "Beschädigt"],
    it: ["Incidentato", "Danneggiato"]
  }, metadata: { region: 'global' } },

  // ==================================================================================
  //                                  NOUVELLES EXTENSIONS (REQUESTED)
  // ==================================================================================

  // --- CUSTOMISATEURS & TUNERS (EU/US) ---
  { id: "brand_brabus", type: "brand", values: { fr: ["Brabus"], ar: ["برابوس"], en: ["Brabus"] }, metadata: { region: 'eu' } },
  { id: "brand_alpina", type: "brand", values: { fr: ["Alpina"], ar: ["البينا"], en: ["Alpina"] }, metadata: { region: 'eu' } },
  { id: "brand_mansory", type: "brand", values: { fr: ["Mansory"], ar: ["منصوري"], en: ["Mansory"] }, metadata: { region: 'eu' } },
  { id: "brand_abt", type: "brand", values: { fr: ["ABT", "ABT Sportsline"], ar: ["ابت"], en: ["ABT"] }, metadata: { region: 'eu' } },
  { id: "brand_shelby", type: "brand", values: { fr: ["Shelby"], ar: ["شيلبي"], en: ["Shelby"] }, metadata: { region: 'us' } },
  { id: "brand_roush", type: "brand", values: { fr: ["Roush"], ar: ["روش"], en: ["Roush"] }, metadata: { region: 'us' } },
  { id: "brand_hennessey", type: "brand", values: { fr: ["Hennessey"], ar: ["هينيسي"], en: ["Hennessey"] }, metadata: { region: 'us' } },
  { id: "brand_saleen", type: "brand", values: { fr: ["Saleen"], ar: ["سالين"], en: ["Saleen"] }, metadata: { region: 'us' } },
  { id: "brand_amg", type: "brand", values: { fr: ["AMG"], ar: ["اي ام جي"], en: ["AMG"] }, metadata: { region: 'eu' } }, // Often searched independently
  { id: "brand_m_power", type: "brand", values: { fr: ["M Power", "BMW M"], ar: ["ام باور"], en: ["M Power"] }, metadata: { region: 'eu' } },

  // --- TYPES DE REMORQUES (TRAILERS) ---
  { id: "type_trailer_generic", type: "type", values: { fr: ["Remorque"], ar: ["رموكة"], en: ["Trailer"], es: ["Remolque"], de: ["Anhänger"], it: ["Rimorchio"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_trailer_flatbed", type: "type", values: { fr: ["Remorque Plateau", "Plateau"], ar: ["رموكة بلاطو", "مسطحة"], en: ["Flatbed Trailer"], es: ["Plataforma"], de: ["Pritschenauflieger"], it: ["Pianale"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_trailer_fridge", type: "type", values: { fr: ["Remorque Frigo", "Frigorifique", "Frigo"], ar: ["رموكة فريغو", "تبريد"], en: ["Refrigerated Trailer", "Reefer", "Fridge"], es: ["Frigorífico"], de: ["Kühlauflieger"], it: ["Frigorifero"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_trailer_tanker", type: "type", values: { fr: ["Citerne", "Remorque Citerne"], ar: ["سيترنا", "صهريج"], en: ["Tanker Trailer"], es: ["Cisterna"], de: ["Tankauflieger"], it: ["Cisterna"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_trailer_tipper", type: "type", values: { fr: ["Remorque Benne", "Benne Basculante"], ar: ["بان", "قلابة"], en: ["Tipper Trailer", "Dump Trailer"], es: ["Volquete"], de: ["Kipper"], it: ["Ribaltabile"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_trailer_lowboy", type: "type", values: { fr: ["Porte-Engin", "Surbaissé"], ar: ["بورت شار", "حاملة آلات"], en: ["Lowboy Trailer", "Lowbed"], es: ["Góndola"], de: ["Tieflader"], it: ["Pianale ribassato"] }, metadata: { region: 'global' } },
  { id: "type_trailer_car_carrier", type: "type", values: { fr: ["Porte-Voitures"], ar: ["بورت أوتو", "حاملة سيارات"], en: ["Car Carrier"], es: ["Portacoches"], de: ["Autotransporter"], it: ["Bisarca"] }, metadata: { region: 'global' } },
  { id: "type_trailer_livestock", type: "type", values: { fr: ["Bétaillère"], ar: ["نقل مواشي"], en: ["Livestock Trailer"], es: ["Ganado"], de: ["Viehtransporter"], it: ["Bestiame"] }, metadata: { region: 'global' } },
  { id: "type_trailer_container", type: "type", values: { fr: ["Porte-Conteneur", "Squelette"], ar: ["بورت كونتونار", "حاملة حاويات"], en: ["Container Chassis"], es: ["Portacontenedores"], de: ["Containerchassis"], it: ["Portacontainer"] }, metadata: { region: 'global' } },

  // --- MOTOS ASIATIQUES & CHINOISES (ASIAN/CHINESE BIKES) ---
  { id: "brand_cfmoto", type: "brand", values: { fr: ["CFMOTO", "CF Moto"], ar: ["سي اف موتو"], en: ["CFMOTO"], es: ["CFMOTO"], de: ["CFMOTO"], it: ["CFMOTO"] }, metadata: { region: 'cn' } },
  { id: "brand_benelli", type: "brand", values: { fr: ["Benelli"], ar: ["بينيلي"], en: ["Benelli"], es: ["Benelli"], de: ["Benelli"], it: ["Benelli"] }, metadata: { region: 'cn' } }, // Owned by Qianjiang (CN)
  { id: "brand_zontes", type: "brand", values: { fr: ["Zontes"], ar: ["زونتس"], en: ["Zontes"], es: ["Zontes"], de: ["Zontes"], it: ["Zontes"] }, metadata: { region: 'cn' } },
  { id: "brand_voge", type: "brand", values: { fr: ["Voge"], ar: ["فوج"], en: ["Voge"], es: ["Voge"], de: ["Voge"], it: ["Voge"] }, metadata: { region: 'cn' } },
  { id: "brand_keeway", type: "brand", values: { fr: ["Keeway"], ar: ["كي واي"], en: ["Keeway"], es: ["Keeway"], de: ["Keeway"], it: ["Keeway"] }, metadata: { region: 'cn' } },
  { id: "brand_loncin", type: "brand", values: { fr: ["Loncin"], ar: ["لونسين"], en: ["Loncin"], es: ["Loncin"], de: ["Loncin"], it: ["Loncin"] }, metadata: { region: 'cn' } },
  { id: "brand_lifan", type: "brand", values: { fr: ["Lifan"], ar: ["ليفان"], en: ["Lifan"], es: ["Lifan"], de: ["Lifan"], it: ["Lifan"] }, metadata: { region: 'cn' } },
  { id: "brand_bajaj", type: "brand", values: { fr: ["Bajaj"], ar: ["باجاج"], en: ["Bajaj"], es: ["Bajaj"], de: ["Bajaj"], it: ["Bajaj"] }, metadata: { region: 'asia' } }, // India
  { id: "brand_tvs", type: "brand", values: { fr: ["TVS"], ar: ["تي في اس"], en: ["TVS"], es: ["TVS"], de: ["TVS"], it: ["TVS"] }, metadata: { region: 'asia' } }, // India
  { id: "brand_royal_enfield", type: "brand", values: { fr: ["Royal Enfield"], ar: ["رويال انفيلد"], en: ["Royal Enfield"], es: ["Royal Enfield"], de: ["Royal Enfield"], it: ["Royal Enfield"] }, metadata: { region: 'asia' } }, // India

  // --- TYPES DE MOTOS (BIKE TYPES) ---
  { id: "type_moto_roadster", type: "type", values: { fr: ["Roadster", "Naked"], ar: ["رودستر"], en: ["Roadster", "Naked Bike"], es: ["Roadster"], de: ["Roadster"], it: ["Roadster"] }, metadata: { region: 'global' } },
  { id: "type_moto_sport", type: "type", values: { fr: ["Sportive", "Superbike"], ar: ["سبورت", "رياضية"], en: ["Sportbike"], es: ["Deportiva"], de: ["Sportler"], it: ["Sportiva"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_moto_cross", type: "type", values: { fr: ["Cross", "Motocross", "Dirt Bike"], ar: ["كروس"], en: ["Motocross", "Dirt Bike"], es: ["Motocross"], de: ["Motocross"], it: ["Motocross"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_moto_enduro", type: "type", values: { fr: ["Enduro"], ar: ["اندورو"], en: ["Enduro"], es: ["Enduro"], de: ["Enduro"], it: ["Enduro"] }, metadata: { region: 'global' } },
  { id: "type_moto_trail", type: "type", values: { fr: ["Trail", "Adventure"], ar: ["ترايل", "مغامرات"], en: ["Trail", "Adventure"], es: ["Trail"], de: ["Trail"], it: ["Trail"] }, metadata: { region: 'global' } },
  { id: "type_moto_custom", type: "type", values: { fr: ["Custom", "Chopper", "Cruiser"], ar: ["كاستم"], en: ["Cruiser", "Custom"], es: ["Custom"], de: ["Custom"], it: ["Custom"] }, metadata: { region: 'global', isAmbiguous: true } },
  { id: "type_moto_scooter", type: "type", values: { fr: ["Scooter"], ar: ["سكوتر"], en: ["Scooter"], es: ["Scooter"], de: ["Scooter"], it: ["Scooter"] }, metadata: { region: 'global' } },
  { id: "type_moto_maxiscooter", type: "type", values: { fr: ["Maxi-Scooter"], ar: ["ماكسي سكوتر"], en: ["Maxi-Scooter"], es: ["Maxi-Scooter"], de: ["Maxi-Scooter"], it: ["Maxi-Scooter"] }, metadata: { region: 'global' } },
  { id: "type_moto_quad", type: "type", values: { fr: ["Quad", "ATV"], ar: ["كواد", "دراجة رباعية"], en: ["Quad", "ATV"], es: ["Quad"], de: ["Quad"], it: ["Quad"] }, metadata: { region: 'global' } },

  
  // --- MODÈLES AMBIGUS SUPPLÉMENTAIRES (AMBIGUOUS MODELS) ---
  { id: "model_campus", type: "model", values: { fr: ["Campus", "Clio Campus"], ar: ["كامبيس"], en: ["Campus"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  { id: "model_zoe", type: "model", values: { fr: ["Zoe"], ar: ["زوي"], en: ["Zoe"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  { id: "model_espace", type: "model", values: { fr: ["Espace"], ar: ["ايسباس"], en: ["Espace"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  { id: "model_laguna", type: "model", values: { fr: ["Laguna"], ar: ["لاغونا"], en: ["Laguna"] }, metadata: { brandId: "brand_renault", isAmbiguous: true } },
  
  { id: "model_adam", type: "model", values: { fr: ["Adam"], ar: ["ادم"], en: ["Adam"] }, metadata: { brandId: "brand_opel", isAmbiguous: true } },
  { id: "model_karl", type: "model", values: { fr: ["Karl"], ar: ["كارل"], en: ["Karl"] }, metadata: { brandId: "brand_opel", isAmbiguous: true } },
  
  { id: "model_note", type: "model", values: { fr: ["Note"], ar: ["نوت"], en: ["Note"] }, metadata: { brandId: "brand_nissan", isAmbiguous: true } },
  
  { id: "model_jazz", type: "model", values: { fr: ["Jazz"], ar: ["جاز"], en: ["Jazz"] }, metadata: { brandId: "brand_honda", isAmbiguous: true } },
  { id: "model_legend", type: "model", values: { fr: ["Legend"], ar: ["ليجند"], en: ["Legend"] }, metadata: { brandId: "brand_honda", isAmbiguous: true } },
  { id: "model_pilot", type: "model", values: { fr: ["Pilot"], ar: ["بايلوت"], en: ["Pilot"] }, metadata: { brandId: "brand_honda", isAmbiguous: true } },
  
  { id: "model_galaxy", type: "model", values: { fr: ["Galaxy"], ar: ["غالاكسي"], en: ["Galaxy"] }, metadata: { brandId: "brand_ford", isAmbiguous: true } },
  { id: "model_escort", type: "model", values: { fr: ["Escort"], ar: ["ايسكورت"], en: ["Escort"] }, metadata: { brandId: "brand_ford", isAmbiguous: true } },
  
  { id: "model_ram", type: "model", values: { fr: ["Ram"], ar: ["رام"], en: ["Ram"] }, metadata: { brandId: "brand_dodge", isAmbiguous: true } },
  { id: "model_charger", type: "model", values: { fr: ["Charger"], ar: ["تشارجر"], en: ["Charger"] }, metadata: { brandId: "brand_dodge", isAmbiguous: true } },
  
  { id: "model_wrangler", type: "model", values: { fr: ["Wrangler"], ar: ["رانجلر"], en: ["Wrangler"] }, metadata: { brandId: "brand_jeep", isAmbiguous: true } }, // Already in list but adding backup
  { id: "model_cherokee", type: "model", values: { fr: ["Cherokee"], ar: ["شيروكي"], en: ["Cherokee"] }, metadata: { brandId: "brand_jeep", isAmbiguous: true } }, // Already in list but adding backup
  
  { id: "model_defender", type: "model", values: { fr: ["Defender"], ar: ["ديفندر"], en: ["Defender"] }, metadata: { brandId: "brand_land_rover", isAmbiguous: true } },
  { id: "model_discovery", type: "model", values: { fr: ["Discovery"], ar: ["ديسكوفري"], en: ["Discovery"] }, metadata: { brandId: "brand_land_rover", isAmbiguous: true } },
  
  { id: "model_s3", type: "model", values: { fr: ["S3"], ar: ["S3"], en: ["S3"] }, metadata: { brandId: "brand_audi", isAmbiguous: true } },
  { id: "model_s4", type: "model", values: { fr: ["S4"], ar: ["S4"], en: ["S4"] }, metadata: { brandId: "brand_audi", isAmbiguous: true } },
  { id: "model_s5", type: "model", values: { fr: ["S5"], ar: ["S5"], en: ["S5"] }, metadata: { brandId: "brand_audi", isAmbiguous: true } },
];
