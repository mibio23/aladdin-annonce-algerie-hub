// Script pour tester la détection d'intention véhicule
import { detectVehicleIntent } from './src/utils/vehicleIntentDetector.ts';

const testQuery = 'Peugeot 208 Allure wilaya blida';
console.log('Test de détection pour:', testQuery);

try {
  const result = detectVehicleIntent(testQuery);
  console.log('✅ Résultat de détection:');
  console.log(JSON.stringify(result, null, 2));
  
  console.log('\n📊 Détails:');
  console.log('Is Vehicle Search:', result.isVehicleSearch);
  console.log('Confidence:', result.confidence);
  console.log('Brands détectés:', result.filters.brand);
  console.log('Models détectés:', result.filters.model);
  console.log('Wilayas détectées:', result.filters.wilaya);
  console.log('Query restante:', result.remainingQuery);
  
} catch (error) {
  console.error('❌ Erreur lors de la détection:', error.message);
}