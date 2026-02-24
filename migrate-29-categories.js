// Script pour migrer les 29 catégories principales avec les 6 langues
const { createClient } = require('@supabase/supabase-js');

const supabaseUrl = 'https://smsvybphkdxzvgawzoru.supabase.co';
const supabaseKey = 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g';

const supabase = createClient(supabaseUrl, supabaseKey);

// Les 29 catégories avec leurs traductions dans les 6 langues
const categories = [
  {
    slug: 'immobilier-maison',
    translations: {
      fr: 'Immobilier & Maison',
      ar: 'العقارات والمنزل',
      en: 'Real Estate & Home',
      de: 'Immobilien & Haus',
      es: 'Inmobiliaria y Hogar',
      it: 'Immobiliare & Casa'
    }
  },
  {
    slug: 'telephonie',
    translations: {
      fr: 'Téléphonie',
      ar: 'الهاتف',
      en: 'Telephony',
      de: 'Telefonie',
      es: 'Telefonía',
      it: 'Telefonia'
    }
  },
  {
    slug: 'informatique-electronique',
    translations: {
      fr: 'Informatique & Électronique',
      ar: 'الحاسوب والإلكترونيات',
      en: 'Technology & Electronics',
      de: 'Computer & Elektronik',
      es: 'Informática & Electrónica',
      it: 'Informatica & Elettronica'
    }
  },
  {
    slug: 'vehicules-equipements',
    translations: {
      fr: 'Véhicules, Camions, Motos & Équipements',
      ar: 'المركبات والمعدات',
      en: 'Vehicles & Equipment',
      de: 'Fahrzeuge & Ausrüstung',
      es: 'Vehículos y Equipamientos',
      it: 'Veicoli & Attrezzature'
    }
  },
  {
    slug: 'velo-cyclisme-equipements',
    translations: {
      fr: 'Vélo, Cyclisme & Équipements',
      ar: 'الدراجات والمعدات',
      en: 'Bicycles & Equipment',
      de: 'Fahrräder & Ausrüstung',
      es: 'Bicicletas y Equipamiento',
      it: 'Biciclette & Attrezzature'
    }
  },
  {
    slug: 'nautisme',
    translations: {
      fr: 'Nautisme & Bateaux',
      ar: 'الملاحة البحرية والقوارب',
      en: 'Boating & Boats',
      de: 'Bootfahren & Boote',
      es: 'Náutica y Barcos',
      it: 'Nautica & Barche'
    }
  },
  {
    slug: 'btp-engins-construction',
    translations: {
      fr: 'BTP, Engins & Construction',
      ar: 'البناء والآلات والإنشاءات',
      en: 'Construction & Equipment',
      de: 'Bau & Ausrüstung',
      es: 'Construcción y Equipamiento',
      it: 'Edilizia & Attrezzature'
    }
  },
  {
    slug: 'mode-accessoires',
    translations: {
      fr: 'Vêtement Homme, Femme & sous-vêtement',
      ar: 'ملابس رجالية ونسائية وملابس داخلية',
      en: 'Men & Women Clothing & Underwear',
      de: 'Herren- und Damenbekleidung & Unterwäsche',
      es: 'Ropa de Hombre y Mujer & Ropa Interior',
      it: 'Abbigliamento Uomo e Donna & Intimo'
    }
  },
  {
    slug: 'bebe-puericulture',
    translations: {
      fr: 'Bébé & Puériculture',
      ar: 'الأطفال ورعاية الأطفال',
      en: 'Baby & Childcare',
      de: 'Baby & Kinderbetreuung',
      es: 'Bebé y Puericultura',
      it: 'Bebè & Puericultura'
    }
  },
  {
    slug: 'mode-et-accessoires',
    translations: {
      fr: 'Mode & Accessoires',
      ar: 'الموضة والإكسسوارات',
      en: 'Fashion & Accessories',
      de: 'Mode & Accessoires',
      es: 'Moda y Accesorios',
      it: 'Moda & Accessori'
    }
  },
  {
    slug: 'sacs-et-bagages',
    translations: {
      fr: 'Sacs & Bagages',
      ar: 'الحقائب والأمتعة',
      en: 'Bags & Luggage',
      de: 'Taschen & Gepäck',
      es: 'Bolsos y Equipajes',
      it: 'Borse & Bagagli'
    }
  },
  {
    slug: 'electromenager',
    translations: {
      fr: 'Électroménager',
      ar: 'الأجهزة المنزلية',
      en: 'Home Appliances',
      de: 'Haushaltsgeräte',
      es: 'Electrodomésticos',
      it: 'Elettrodomestici'
    }
  },
  {
    slug: 'mobilier-decoration',
    translations: {
      fr: 'Mobilier & Décoration',
      ar: 'الأثاث والديكور',
      en: 'Furniture & Decoration',
      de: 'Möbel & Dekoration',
      es: 'Muebles y Decoración',
      it: 'Mobili & Decorazione'
    }
  },
  {
    slug: 'image-son',
    translations: {
      fr: 'Image, Son & Équipement de Musique',
      ar: 'الصورة والصوت ومعدات الموسيقى',
      en: 'Image, Sound & Music Equipment',
      de: 'Bild, Ton & Musikausrüstung',
      es: 'Imagen, Sonido y Equipamiento Musical',
      it: 'Immagine, Suono & Attrezzatura Musicale'
    }
  },
  {
    slug: 'jeux-video-consoles',
    translations: {
      fr: 'Jeux Vidéo & Consoles',
      ar: 'ألعاب الفيديو وأجهزة الكونسول',
      en: 'Video Games & Consoles',
      de: 'Videospiele & Konsolen',
      es: 'Videojuegos y Consolas',
      it: 'Videogiochi & Console'
    }
  },
  {
    slug: 'quincaillerie-generale',
    translations: {
      fr: 'Quincaillerie Générale',
      ar: 'الأدوات العامة',
      en: 'General Hardware',
      de: 'Allgemeine Eisenwaren',
      es: 'Ferretería General',
      it: 'Ferramenta Generale'
    }
  },
  {
    slug: 'agriculture-agroalimentaire',
    translations: {
      fr: 'Agriculture & Agroalimentaire',
      ar: 'الزراعة والأغذية الزراعية',
      en: 'Agriculture & Agri-Food',
      de: 'Landwirtschaft & Agrar-Nahrung',
      es: 'Agricultura y Agroalimentario',
      it: 'Agricoltura & Agroalimentare'
    }
  },
  {
    slug: 'parapharmacie-produit-chimique',
    translations: {
      fr: 'Parapharmacie & Produit Chimique',
      ar: 'الصيدلة والمنتجات الكيميائية',
      en: 'Parapharmacy & Chemical Products',
      de: 'Parapharmazie & Chemische Produkte',
      es: 'Parafarmacia y Productos Químicos',
      it: 'Parafarmacia & Prodotti Chimici'
    }
  },
  {
    slug: 'sante-beaute',
    translations: {
      fr: 'Santé & Beauté',
      ar: 'الصحة والجمال',
      en: 'Health & Beauty',
      de: 'Gesundheit & Schönheit',
      es: 'Salud y Belleza',
      it: 'Salute & Bellezza'
    }
  },
  {
    slug: 'gastronomie-alimentation',
    translations: {
      fr: 'Gastronomie & Alimentation',
      ar: 'المطبخ والتغذية',
      en: 'Gastronomy & Food',
      de: 'Gastronomie & Ernährung',
      es: 'Gastronomía y Alimentación',
      it: 'Gastronomia & Alimentazione'
    }
  },
  {
    slug: 'artisanat-traditionnel-algerien',
    translations: {
      fr: 'Artisanat Traditionnel Algérien',
      ar: 'الحرف التقليدية الجزائرية',
      en: 'Algerian Traditional Crafts',
      de: 'Traditionelles Algerisches Handwerk',
      es: 'Artesanía Tradicional Argelina',
      it: 'Artigianato Tradizionale Algerino'
    }
  },
  {
    slug: 'voyages-tourisme',
    translations: {
      fr: 'Voyages & Tourisme',
      ar: 'السفرات والسياحة',
      en: 'Travel & Tourism',
      de: 'Reisen & Tourismus',
      es: 'Viajes y Turismo',
      it: 'Viaggi & Turismo'
    }
  },
  {
    slug: 'evenements-billetterie',
    translations: {
      fr: 'Événements & Billetterie',
      ar: 'الفعاليات والتذاكر',
      en: 'Events & Ticketing',
      de: 'Veranstaltungen & Ticketing',
      es: 'Eventos y Entradas',
      it: 'Eventi & Biglietteria'
    }
  },
  {
    slug: 'emploi-carriere',
    translations: {
      fr: 'Emploi & Carrière',
      ar: 'الوظائف والمسار المهني',
      en: 'Jobs & Career',
      de: 'Arbeit & Karriere',
      es: 'Empleo y Carrera',
      it: 'Lavoro & Carriera'
    }
  },
  {
    slug: 'education-loisirs',
    translations: {
      fr: 'Éducation & Loisirs',
      ar: 'التعليم والتسلية',
      en: 'Education & Leisure',
      de: 'Bildung & Freizeit',
      es: 'Educación y Ocio',
      it: 'Istruzione & Tempo Libero'
    }
  },
  {
    slug: 'animaux-accessoires',
    translations: {
      fr: 'Animales & Accessoires',
      ar: 'الحيوانات والإكسسوارات',
      en: 'Animals & Accessories',
      de: 'Tiere & Zubehör',
      es: 'Animales y Accesorios',
      it: 'Animali & Accessori'
    }
  },
  {
    slug: 'finance-monnaie-fiduciaire',
    translations: {
      fr: 'Finance & Monnaie Fiduciaire',
      ar: 'التمويل والعملة الورقية',
      en: 'Finance & Fiat Currency',
      de: 'Finanzen & Fiat-Währung',
      es: 'Finanzas y Moneda Fiduciaria',
      it: 'Finanza & Valuta Fiduciaria'
    }
  },
  {
    slug: 'services-support',
    translations: {
      fr: 'Services & Support',
      ar: 'الخدمات والدعم',
      en: 'Services & Support',
      de: 'Dienstleistungen & Support',
      es: 'Servicios y Soporte',
      it: 'Servizi & Supporto'
    }
  },
  {
    slug: 'echanges-partage',
    translations: {
      fr: 'Échanges & Partage',
      ar: 'التبادل والمشاركة',
      en: 'Exchange & Sharing',
      de: 'Austausch & Teilen',
      es: 'Intercambio y Compartir',
      it: 'Scambio & Condivisione'
    }
  }
];

async function migrateCategories() {
  console.log('🚀 Début de la migration des 29 catégories dans 6 langues...\n');
  
  let successCount = 0;
  let errorCount = 0;
  const languages = ['fr', 'ar', 'en', 'de', 'es', 'it'];

  for (const category of categories) {
    console.log(`\n📁 Migration de: ${category.slug}`);
    
    for (const lang of languages) {
      try {
        // Vérifier si la catégorie existe déjà
        const { data: existing, error: checkError } = await supabase
          .from('categories')
          .select('id')
          .eq('slug', category.slug)
          .eq('langue', lang)
          .maybeSingle();
        
        if (existing) {
          console.log(`  ⏭️  ${lang}: Déjà existante`);
          continue;
        }
        
        // Insérer la nouvelle catégorie
        const { data, error } = await supabase
          .from('categories')
          .insert({
            slug: category.slug,
            name: category.translations[lang],
            langue: lang,
            level: 0,
            is_active: true,
            position_order: categories.indexOf(category) + 1
          })
          .select()
          .single();
        
        if (error) {
          console.log(`  ❌ ${lang}: Erreur - ${error.message}`);
          errorCount++;
        } else {
          console.log(`  ✅ ${lang}: Créée avec succès (ID: ${data.id})`);
          successCount++;
        }
        
        // Petite pause pour éviter de surcharger l'API
        await new Promise(resolve => setTimeout(resolve, 100));
        
      } catch (err) {
        console.log(`  ❌ ${lang}: Exception - ${err.message}`);
        errorCount++;
      }
    }
  }
  
  console.log(`\n📊 RÉSUMÉ DE LA MIGRATION:`);
  console.log(`   ✅ Succès: ${successCount} catégories`);
  console.log(`   ❌ Échecs: ${errorCount} catégories`);
  console.log(`   🎯 Total attendu: ${categories.length * languages.length} catégories (29 × 6 langues)`);
}

// Exécuter la migration
migrateCategories()
  .then(() => console.log('\n✨ Migration terminée!'))
  .catch(err => console.error('\n💥 Erreur fatale:', err));
