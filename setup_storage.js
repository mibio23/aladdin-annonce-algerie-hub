
import { createClient } from '@supabase/supabase-js';
import dotenv from 'dotenv';

dotenv.config();

// Configuration Supabase
// Nécessite la clé de service (SUPABASE_SERVICE_KEY) pour créer des buckets
const supabaseUrl = process.env.VITE_SUPABASE_URL;
const supabaseServiceKey = process.env.SUPABASE_SERVICE_KEY;

if (!supabaseUrl || !supabaseServiceKey) {
  console.error('❌ Les variables VITE_SUPABASE_URL ou SUPABASE_SERVICE_KEY sont manquantes dans le fichier .env');
  console.log('Pour créer des buckets, la clé de service (service_role) est requise.');
  process.exit(1);
}

const supabase = createClient(supabaseUrl, supabaseServiceKey);

async function setupStorage() {
  console.log('🔧 Vérification et configuration du stockage Supabase...');

  const bucketsToEnsure = [
    { name: 'job-offer-images', public: true },
    { name: 'announcement-images', public: true }
  ];

  // 1. Lister les buckets existants
  const { data: buckets, error: listError } = await supabase.storage.listBuckets();

  if (listError) {
    console.error('❌ Erreur lors de la récupération des buckets:', listError.message);
    return;
  }

  const existingBucketNames = buckets.map(b => b.name);
  console.log('📦 Buckets actuels:', existingBucketNames);

  // 2. Créer les buckets manquants
  for (const bucketConfig of bucketsToEnsure) {
    if (!existingBucketNames.includes(bucketConfig.name)) {
      console.log(`⚠️ Le bucket '${bucketConfig.name}' est manquant. Création en cours...`);
      
      const { data, error: createError } = await supabase.storage.createBucket(bucketConfig.name, {
        public: bucketConfig.public,
        fileSizeLimit: 5242880, // 5MB
        allowedMimeTypes: ['image/png', 'image/jpeg', 'image/webp', 'image/jpg']
      });

      if (createError) {
        console.error(`❌ Échec de la création du bucket '${bucketConfig.name}':`, createError.message);
      } else {
        console.log(`✅ Bucket '${bucketConfig.name}' créé avec succès.`);
      }
    } else {
      console.log(`✅ Le bucket '${bucketConfig.name}' existe déjà.`);
    }
  }
  
  console.log('\n✨ Configuration du stockage terminée.');
}

setupStorage();
