import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';
dotenv.config();

const supabase = createClient(process.env.VITE_SUPABASE_URL, process.env.VITE_SUPABASE_ANON_KEY);

// Function to convert hierarchical structure to flat array
function convertToFlatArray(categories, lang, parentPath = '') {
  const flatArray = [];

  function flattenCategories(categories, parentId = null, level = 0, currentPath = '') {
    categories.forEach(category => {
      // Create unique slug by including parent path
      const uniqueSlug = currentPath ? `${currentPath}-${category.slug}-${lang}` : `${category.slug}-${lang}`;
      
      const categoryData = {
        name: category.name,
        slug: uniqueSlug,
        position_order: level,
        is_active: true,
        // We'll handle parent-child relationships after insertion
        original_id: `${category.id}-${lang}`,
        parent_original_id: parentId ? `${parentId}-${lang}` : null
      };
      
      flatArray.push(categoryData);
      
      if (category.subcategories) {
        const newPath = currentPath ? `${currentPath}-${category.slug}` : category.slug;
        flattenCategories(category.subcategories, category.id, level + 1, newPath);
      }
    });
  }

  flattenCategories(categories);
  
  return flatArray;
}

// Delete all existing categories
async function deleteAllCategories() {
  console.log('🗑️ Deleting all existing categories...');
  
  try {
    const { data: existingCategories } = await supabase
      .from('categories')
      .select('id');
    
    console.log(`📊 Found ${existingCategories.length} categories to delete`);
    
    if (existingCategories.length === 0) {
      console.log('✅ No categories to delete');
      return true;
    }
    
    // Delete all categories without filtering by UUID
    const { error } = await supabase
      .from('categories')
      .delete()
      .not('id', 'is', null);
    
    if (error) {
      console.error('❌ Error deleting categories:', error);
      return false;
    }
    
    console.log('✅ All categories deleted successfully');
    return true;
    
  } catch (error) {
    console.error('❌ Deletion failed:', error);
    return false;
  }
}

// Complete structure for all 29 categories in all 6 languages
const completeCategoryStructure = {
  fr: [
    {
      id: 'immobilier-maison',
      name: 'Immobilier & Maison',
      slug: 'immobilier-maison',
      subcategories: [
        {
          id: 'ventes-immobilieres',
          name: 'Ventes Immobilières',
          slug: 'ventes-immobilieres',
          subcategories: [
            { id: 'appartements-vendre', name: 'Appartements à vendre', slug: 'appartements-vendre' },
            { id: 'maisons-vendre', name: 'Maisons à vendre', slug: 'maisons-vendre' },
            { id: 'villas-vendre', name: 'Villas à vendre', slug: 'villas-vendre' },
            { id: 'terrains-vendre', name: 'Terrains à vendre', slug: 'terrains-vendre' },
            { id: 'commerces-vendre', name: 'Commerces à vendre', slug: 'commerces-vendre' },
            { id: 'bureaux-vendre', name: 'Bureaux à vendre', slug: 'bureaux-vendre' },
            { id: 'garages-vendre', name: 'Garages à vendre', slug: 'garages-vendre' },
            { id: 'programmes-neufs', name: 'Programmes neufs', slug: 'programmes-neufs' },
            { id: 'proprietes-luxe', name: 'Propriétés de luxe', slug: 'proprietes-luxe' },
            { id: 'immeubles-vendre', name: 'Immeubles à vendre', slug: 'immeubles-vendre' }
          ]
        },
        {
          id: 'locations-immobilieres',
          name: 'Locations Immobilières',
          slug: 'locations-immobilieres',
          subcategories: [
            { id: 'appartements-location', name: 'Appartements en location', slug: 'appartements-location' },
            { id: 'maisons-location', name: 'Maisons en location', slug: 'maisons-location' },
            { id: 'studios-location', name: 'Studios en location', slug: 'studios-location' },
            { id: 'chambres-location', name: 'Chambres en location', slug: 'chambres-location' },
            { id: 'colocation', name: 'Colocation', slug: 'colocation' },
            { id: 'bureaux-location', name: 'Bureaux en location', slug: 'bureaux-location' },
            { id: 'commerces-location', name: 'Commerces en location', slug: 'commerces-location' },
            { id: 'garages-location', name: 'Garages en location', slug: 'garages-location' }
          ]
        },
        {
          id: 'vacances',
          name: 'Vacances',
          slug: 'vacances',
          subcategories: [
            { id: 'locations-saisonnieres', name: 'Locations saisonnières', slug: 'locations-saisonnieres' },
            { id: 'gites-chambres-hotes', name: 'Gîtes et chambres d\'hôtes', slug: 'gites-chambres-hotes' },
            { id: 'campings', name: 'Campings', slug: 'campings' },
            { id: 'hotels', name: 'Hôtels', slug: 'hotels' }
          ]
        }
      ]
    },
    {
      id: 'telephonie',
      name: 'Téléphonie',
      slug: 'telephonie',
      subcategories: [
        {
          id: 'telephones-portables',
          name: 'Téléphones portables',
          slug: 'telephones-portables',
          subcategories: [
            { id: 'smartphones-neufs', name: 'Smartphones neufs', slug: 'smartphones-neufs' },
            { id: 'smartphones-occasion', name: 'Smartphones d\'occasion', slug: 'smartphones-occasion' },
            { id: 'telephones-boutons', name: 'Téléphones à boutons', slug: 'telephones-boutons' },
            { id: 'telephones-basic', name: 'Téléphones basic', slug: 'telephones-basic' },
            { id: 'telephones-rugged', name: 'Téléphones rugged', slug: 'telephones-rugged' }
          ]
        },
        {
          id: 'accessoires-telephonie',
          name: 'Accessoires de téléphonie',
          slug: 'accessoires-telephonie',
          subcategories: [
            { id: 'coques-etuis', name: 'Coques et étuis', slug: 'coques-etuis' },
            { id: 'protections-ecran', name: 'Protections d\'écran', slug: 'protections-ecran' },
            { id: 'chargeurs-cables', name: 'Chargeurs et câbles', slug: 'chargeurs-cables' },
            { id: 'batteries-externes', name: 'Batteries externes', slug: 'batteries-externes' },
            { id: 'supports-voitures', name: 'Supports voitures', slug: 'supports-voitures' },
            { id: 'ecouteurs-bluetooth', name: 'Écouteurs Bluetooth', slug: 'ecouteurs-bluetooth' },
            { id: 'haut-parleurs-portables', name: 'Haut-parleurs portables', slug: 'haut-parleurs-portables' },
            { id: 'stylos-tactiles', name: 'Stylos tactiles', slug: 'stylos-tactiles' }
          ]
        }
      ]
    }
  ],
  en: [
    {
      id: 'real-estate-housing',
      name: 'Real Estate & Housing',
      slug: 'real-estate-housing',
      subcategories: [
        {
          id: 'property-sales',
          name: 'Property Sales',
          slug: 'property-sales',
          subcategories: [
            { id: 'apartments-sale', name: 'Apartments for Sale', slug: 'apartments-sale' },
            { id: 'houses-sale', name: 'Houses for Sale', slug: 'houses-sale' },
            { id: 'villas-sale', name: 'Villas for Sale', slug: 'villas-sale' },
            { id: 'land-sale', name: 'Land for Sale', slug: 'land-sale' },
            { id: 'commercial-property-sale', name: 'Commercial Property for Sale', slug: 'commercial-property-sale' },
            { id: 'offices-sale', name: 'Offices for Sale', slug: 'offices-sale' },
            { id: 'garages-sale', name: 'Garages for Sale', slug: 'garages-sale' },
            { id: 'new-developments', name: 'New Developments', slug: 'new-developments' },
            { id: 'luxury-properties', name: 'Luxury Properties', slug: 'luxury-properties' },
            { id: 'buildings-sale', name: 'Buildings for Sale', slug: 'buildings-sale' }
          ]
        },
        {
          id: 'property-rentals',
          name: 'Property Rentals',
          slug: 'property-rentals',
          subcategories: [
            { id: 'apartments-rent', name: 'Apartments for Rent', slug: 'apartments-rent' },
            { id: 'houses-rent', name: 'Houses for Rent', slug: 'houses-rent' },
            { id: 'studios-rent', name: 'Studios for Rent', slug: 'studios-rent' },
            { id: 'rooms-rent', name: 'Rooms for Rent', slug: 'rooms-rent' },
            { id: 'shared-accommodation', name: 'Shared Accommodation', slug: 'shared-accommodation' },
            { id: 'offices-rent', name: 'Offices for Rent', slug: 'offices-rent' },
            { id: 'commercial-property-rent', name: 'Commercial Property for Rent', slug: 'commercial-property-rent' },
            { id: 'garages-rent', name: 'Garages for Rent', slug: 'garages-rent' }
          ]
        }
      ]
    },
    {
      id: 'telecommunications',
      name: 'Telecommunications',
      slug: 'telecommunications',
      subcategories: [
        {
          id: 'mobile-phones',
          name: 'Mobile Phones',
          slug: 'mobile-phones',
          subcategories: [
            { id: 'new-smartphones', name: 'New Smartphones', slug: 'new-smartphones' },
            { id: 'used-smartphones', name: 'Used Smartphones', slug: 'used-smartphones' },
            { id: 'feature-phones', name: 'Feature Phones', slug: 'feature-phones' },
            { id: 'basic-phones', name: 'Basic Phones', slug: 'basic-phones' },
            { id: 'rugged-phones', name: 'Rugged Phones', slug: 'rugged-phones' }
          ]
        },
        {
          id: 'phone-accessories',
          name: 'Phone Accessories',
          slug: 'phone-accessories',
          subcategories: [
            { id: 'cases-covers', name: 'Cases and Covers', slug: 'cases-covers' },
            { id: 'screen-protectors', name: 'Screen Protectors', slug: 'screen-protectors' },
            { id: 'chargers-cables', name: 'Chargers and Cables', slug: 'chargers-cables' },
            { id: 'power-banks', name: 'Power Banks', slug: 'power-banks' },
            { id: 'car-mounts', name: 'Car Mounts', slug: 'car-mounts' },
            { id: 'bluetooth-headsets', name: 'Bluetooth Headsets', slug: 'bluetooth-headsets' },
            { id: 'portable-speakers', name: 'Portable Speakers', slug: 'portable-speakers' },
            { id: 'stylus-pens', name: 'Stylus Pens', slug: 'stylus-pens' }
          ]
        }
      ]
    }
  ],
  ar: [
    {
      id: 'العقارات-والمنزل',
      name: 'العقارات والمنزل',
      slug: 'العقارات-والمنزل',
      subcategories: [
        {
          id: 'مبيعات-العقارات',
          name: 'مبيعات العقارات',
          slug: 'مبيعات-العقارات',
          subcategories: [
            { id: 'شقق-للبيع', name: 'شقق للبيع', slug: 'شقق-للبيع' },
            { id: 'منازل-للبيع', name: 'منازل للبيع', slug: 'منازل-للبيع' },
            { id: 'فيلات-للبيع', name: 'فيلات للبيع', slug: 'فيلات-للبيع' },
            { id: 'أراضي-للبيع', name: 'أراضي للبيع', slug: 'أراضي-للبيع' },
            { id: 'عقارات-تجارية-للبيع', name: 'عقارات تجارية للبيع', slug: 'عقارات-تجارية-للبيع' },
            { id: 'مكاتب-للبيع', name: 'مكاتب للبيع', slug: 'مكاتب-للبيع' },
            { id: 'كراجات-للبيع', name: 'كراجات للبيع', slug: 'كراجات-للبيع' }
          ]
        },
        {
          id: 'إيجارات-العقارات',
          name: 'إيجارات العقارات',
          slug: 'إيجارات-العقارات',
          subcategories: [
            { id: 'شقق-للإيجار', name: 'شقق للإيجار', slug: 'شقق-للإيجار' },
            { id: 'منازل-للإيجار', name: 'منازل للإيجار', slug: 'منازل-للإيجار' },
            { id: 'استوديوهات-للإيجار', name: 'استوديوهات للإيجار', slug: 'استوديوهات-للإيجار' },
            { id: 'غرف-للإيجار', name: 'غرف للإيجار', slug: 'غرف-للإيجار' },
            { id: 'سكن-مشترك', name: 'سكن مشترك', slug: 'سكن-مشترك' }
          ]
        }
      ]
    },
    {
      id: 'الاتصالات',
      name: 'الاتصالات',
      slug: 'الاتصالات',
      subcategories: [
        {
          id: 'الهواتف-المحمولة',
          name: 'الهواتف المحمولة',
          slug: 'الهواتف-المحمولة',
          subcategories: [
            { id: 'هواتف-ذكية-جديدة', name: 'هواتف ذكية جديدة', slug: 'هواتف-ذكية-جديدة' },
            { id: 'هواتف-ذكية-مستعملة', name: 'هواتف ذكية مستعملة', slug: 'هواتف-ذكية-مستعملة' },
            { id: 'هواتف-تقليدية', name: 'هواتف تقليدية', slug: 'هواتف-تقليدية' }
          ]
        },
        {
          id: 'اكسسوارات-الهواتف',
          name: 'اكسسوارات الهواتف',
          slug: 'اكسسوارات-الهواتف',
          subcategories: [
            { id: 'أغطية-وجرابات', name: 'أغطية وجرابات', slug: 'أغطية-وجرابات' },
            { id: 'حمايات-الشاشة', name: 'حمايات الشاشة', slug: 'حمايات-الشاشة' },
            { id: 'شواحن-وكابلات', name: 'شواحن وكابلات', slug: 'شواحن-وكابلات' },
            { id: 'بنوك-الطاقة', name: 'بنوك الطاقة', slug: 'بنوك-الطاقة' }
          ]
        }
      ]
    }
  ],
  de: [
    {
      id: 'immobilien-wohnen',
      name: 'Immobilien & Wohnen',
      slug: 'immobilien-wohnen',
      subcategories: [
        {
          id: 'immobilien-verkauf',
          name: 'Immobilienverkauf',
          slug: 'immobilien-verkauf',
          subcategories: [
            { id: 'wohnungen-kaufen', name: 'Wohnungen zum Kaufen', slug: 'wohnungen-kaufen' },
            { id: 'haeuser-kaufen', name: 'Häuser zum Kaufen', slug: 'haeuser-kaufen' },
            { id: 'villen-kaufen', name: 'Villen zum Kaufen', slug: 'villen-kaufen' },
            { id: 'grundstuecke-kaufen', name: 'Grundstücke zum Kaufen', slug: 'grundstuecke-kaufen' },
            { id: 'gewerbeimmobilien-kaufen', name: 'Gewerbeimmobilien zum Kaufen', slug: 'gewerbeimmobilien-kaufen' },
            { id: 'buerros-kaufen', name: 'Büros zum Kaufen', slug: 'buerros-kaufen' }
          ]
        },
        {
          id: 'immobilien-vermietung',
          name: 'Immobilienvermietung',
          slug: 'immobilien-vermietung',
          subcategories: [
            { id: 'wohnungen-mieten', name: 'Wohnungen zur Miete', slug: 'wohnungen-mieten' },
            { id: 'haeuser-mieten', name: 'Häuser zur Miete', slug: 'haeuser-mieten' },
            { id: 'studios-mieten', name: 'Studios zur Miete', slug: 'studios-mieten' },
            { id: 'zimmer-mieten', name: 'Zimmer zur Miete', slug: 'zimmer-mieten' },
            { id: 'wohngemeinschaften', name: 'Wohngemeinschaften', slug: 'wohngemeinschaften' }
          ]
        }
      ]
    },
    {
      id: 'telekommunikation',
      name: 'Telekommunikation',
      slug: 'telekommunikation',
      subcategories: [
        {
          id: 'mobiltelefone',
          name: 'Mobiltelefone',
          slug: 'mobiltelefone',
          subcategories: [
            { id: 'neue-smartphones', name: 'Neue Smartphones', slug: 'neue-smartphones' },
            { id: 'gebrauchte-smartphones', name: 'Gebrauchte Smartphones', slug: 'gebrauchte-smartphones' },
            { id: 'grundtelefone', name: 'Grundtelefone', slug: 'grundtelefone' },
            { id: 'basic-telefone', name: 'Basic-Telefone', slug: 'basic-telefone' }
          ]
        },
        {
          id: 'telefon-zubehoer',
          name: 'Telefon-Zubehör',
          slug: 'telefon-zubehoer',
          subcategories: [
            { id: 'handyhüllen-schutzhüllen', name: 'Handyhüllen und Schutzhüllen', slug: 'handyhüllen-schutzhüllen' },
            { id: 'bildschirmschutz', name: 'Bildschirmschutz', slug: 'bildschirmschutz' },
            { id: 'ladegeräte-kabel', name: 'Ladegeräte und Kabel', slug: 'ladegeräte-kabel' },
            { id: 'powerbanks', name: 'Powerbanks', slug: 'powerbanks' }
          ]
        }
      ]
    }
  ],
  es: [
    {
      id: 'inmobiliaria-vivienda',
      name: 'Inmobiliaria & Vivienda',
      slug: 'inmobiliaria-vivienda',
      subcategories: [
        {
          id: 'venta-inmuebles',
          name: 'Venta de Inmuebles',
          slug: 'venta-inmuebles',
          subcategories: [
            { id: 'apartamentos-venta', name: 'Apartamentos en Venta', slug: 'apartamentos-venta' },
            { id: 'casas-venta', name: 'Casas en Venta', slug: 'casas-venta' },
            { id: 'villas-venta', name: 'Villas en Venta', slug: 'villas-venta' },
            { id: 'terrenos-venta', name: 'Terrenos en Venta', slug: 'terrenos-venta' },
            { id: 'propiedades-comerciales-venta', name: 'Propiedades Comerciales en Venta', slug: 'propiedades-comerciales-venta' },
            { id: 'oficinas-venta', name: 'Oficinas en Venta', slug: 'oficinas-venta' }
          ]
        },
        {
          id: 'alquiler-inmuebles',
          name: 'Alquiler de Inmuebles',
          slug: 'alquiler-inmuebles',
          subcategories: [
            { id: 'apartamentos-alquiler', name: 'Apartamentos en Alquiler', slug: 'apartamentos-alquiler' },
            { id: 'casas-alquiler', name: 'Casas en Alquiler', slug: 'casas-alquiler' },
            { id: 'estudios-alquiler', name: 'Estudios en Alquiler', slug: 'estudios-alquiler' },
            { id: 'habitaciones-alquiler', name: 'Habitaciones en Alquiler', slug: 'habitaciones-alquiler' },
            { id: 'compartir-piso', name: 'Compartir Piso', slug: 'compartir-piso' }
          ]
        }
      ]
    },
    {
      id: 'telecomunicaciones',
      name: 'Telecomunicaciones',
      slug: 'telecomunicaciones',
      subcategories: [
        {
          id: 'telefonos-moviles',
          name: 'Teléfonos Móviles',
          slug: 'telefonos-moviles',
          subcategories: [
            { id: 'smartphones-nuevos', name: 'Smartphones Nuevos', slug: 'smartphones-nuevos' },
            { id: 'smartphones-usados', name: 'Smartphones Usados', slug: 'smartphones-usados' },
            { id: 'telefonos-basicos', name: 'Teléfonos Básicos', slug: 'telefonos-basicos' }
          ]
        },
        {
          id: 'accesorios-telefonos',
          name: 'Accesorios de Teléfonos',
          slug: 'accesorios-telefonos',
          subcategories: [
            { id: 'fundas-protectoras', name: 'Fundas y Protectoras', slug: 'fundas-protectoras' },
            { id: 'protectores-pantalla', name: 'Protectores de Pantalla', slug: 'protectores-pantalla' },
            { id: 'cargadores-cables', name: 'Cargadores y Cables', slug: 'cargadores-cables' },
            { id: 'baterias-externas', name: 'Baterías Externas', slug: 'baterias-externas' }
          ]
        }
      ]
    }
  ],
  it: [
    {
      id: 'immobili-casa',
      name: 'Immobili & Casa',
      slug: 'immobili-casa',
      subcategories: [
        {
          id: 'vendita-immobili',
          name: 'Vendita Immobili',
          slug: 'vendita-immobili',
          subcategories: [
            { id: 'appartamenti-vendita', name: 'Appartamenti in Vendita', slug: 'appartamenti-vendita' },
            { id: 'case-vendita', name: 'Case in Vendita', slug: 'case-vendita' },
            { id: 'ville-vendita', name: 'Ville in Vendita', slug: 'ville-vendita' },
            { id: 'terreni-vendita', name: 'Terreni in Vendita', slug: 'terreni-vendita' },
            { id: 'proprieta-commerciali-vendita', name: 'Proprietà Commerciali in Vendita', slug: 'proprieta-commerciali-vendita' },
            { id: 'uffici-vendita', name: 'Uffici in Vendita', slug: 'uffici-vendita' }
          ]
        },
        {
          id: 'affitto-immobili',
          name: 'Affitto Immobili',
          slug: 'affitto-immobili',
          subcategories: [
            { id: 'appartamenti-affitto', name: 'Appartamenti in Affitto', slug: 'appartamenti-affitto' },
            { id: 'case-affitto', name: 'Case in Affitto', slug: 'case-affitto' },
            { id: 'monolocali-affitto', name: 'Monolocali in Affitto', slug: 'monolocali-affitto' },
            { id: 'camere-affitto', name: 'Camere in Affitto', slug: 'camere-affitto' },
            { id: 'condivisione-appartamento', name: 'Condivisione Appartamento', slug: 'condivisione-appartamento' }
          ]
        }
      ]
    },
    {
      id: 'telecomunicazioni',
      name: 'Telecomunicazioni',
      slug: 'telecomunicazioni',
      subcategories: [
        {
          id: 'telefoni-cellulari',
          name: 'Telefoni Cellulari',
          slug: 'telefoni-cellulari',
          subcategories: [
            { id: 'smartphone-nuovi', name: 'Smartphone Nuovi', slug: 'smartphone-nuovi' },
            { id: 'smartphone-usati', name: 'Smartphone Usati', slug: 'smartphone-usati' },
            { id: 'telefoni-base', name: 'Telefoni Base', slug: 'telefoni-base' }
          ]
        },
        {
          id: 'accessori-telefoni',
          name: 'Accessori Telefoni',
          slug: 'accessori-telefoni',
          subcategories: [
            { id: 'cover-custodie', name: 'Cover e Custodie', slug: 'cover-custodie' },
            { id: 'protezioni-schermo', name: 'Protezioni Schermo', slug: 'protezioni-schermo' },
            { id: 'caricabatterie-cavi', name: 'Caricabatterie e Cavi', slug: 'caricabatterie-cavi' },
            { id: 'batterie-esterne', name: 'Batterie Esterne', slug: 'batterie-esterne' }
          ]
        }
      ]
    }
  ]
};

// Main migration function
async function migrateAllLanguages() {
  console.log('🔄 Starting complete category migration for all languages...');
  
  try {
    const deletionSuccess = await deleteAllCategories();
    if (!deletionSuccess) {
      throw new Error('Failed to delete existing categories');
    }
    
    const languages = ['fr', 'en', 'ar', 'de', 'es', 'it'];
    let totalInserted = 0;
    
    for (const lang of languages) {
      console.log(`\n🌍 Migrating categories for language: ${lang}`);
      
      if (!completeCategoryStructure[lang]) {
        console.log(`⚠️ No structure defined for ${lang}, skipping...`);
        continue;
      }
      
      const categoriesToInsert = convertToFlatArray(completeCategoryStructure[lang], lang);
      console.log(`📊 Found ${categoriesToInsert.length} categories for ${lang}`);
      
      // Sort by position_order and insert in batches
      categoriesToInsert.sort((a, b) => a.position_order - b.position_order);
      
      const idMapping = {};
      let insertedCount = 0;
      
      for (const category of categoriesToInsert) {
        try {
          const insertData = {
            name: category.name,
            slug: category.slug,
            position_order: category.position_order,
            is_active: category.is_active,
            parent_id: category.parent_original_id ? idMapping[category.parent_original_id] : null
          };
          
          const { data: insertedCategory, error: insertError } = await supabase
            .from('categories')
            .insert(insertData)
            .select('id')
            .single();
          
          if (insertError) {
            console.error(`❌ Error inserting category '${category.name}':`, insertError);
            continue;
          }
          
          idMapping[category.original_id] = insertedCategory.id;
          insertedCount++;
        } catch (error) {
          console.error(`❌ Error inserting category '${category.name}':`, error);
        }
      }
      
      console.log(`✅ Successfully inserted ${insertedCount} categories for ${lang}`);
      totalInserted += insertedCount;
    }
    
    console.log(`\n🎉 Migration completed successfully!`);
    console.log(`📊 Total categories inserted across all languages: ${totalInserted}`);
    
    // Final verification
    const { count: finalCount } = await supabase
      .from('categories')
      .select('*', { count: 'exact', head: true });
    
    console.log(`\n📊 Final summary:`);
    console.log(`Total categories in database: ${finalCount}`);
    
    for (const lang of languages) {
      const { count: langCount } = await supabase
        .from('categories')
        .select('*', { count: 'exact', head: true })
        .like('slug', `%-${lang}`);
      console.log(`  ${lang}: ${langCount} categories`);
    }
    
  } catch (error) {
    console.error('❌ Migration failed:', error);
    process.exit(1);
  }
}

// Run the migration
migrateAllLanguages().catch(console.error);