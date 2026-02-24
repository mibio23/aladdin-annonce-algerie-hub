import React, { useState, useEffect, useRef, useCallback } from 'react';
import { Mic, MicOff, AlertCircle } from 'lucide-react';
import { useSmartSearch } from '@/hooks/useSmartSearch';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { logger } from '@/utils/silentLogger';

interface VoiceSearchEnhancedProps {
  onVoiceResult: (transcript: string) => void;
  onPhoneticSearch?: (phoneticQuery: string) => void;
  className?: string;
}

// Dictionnaire phonétique pour l'amélioration de la reconnaissance vocale
const phoneticDictionary = {
  // Corrections communes en français algérien
  'televesion': 'télévision',
  'oreloger': 'horloger',
  'machina': 'machine',
  'frigo': 'réfrigérateur',
  'ordi': 'ordinateur',
  'tel': 'téléphone',
  'voitur': 'voiture',
  'appart': 'appartement',
  'meubl': 'meuble',
  'vetment': 'vêtement',
  'tomobil': 'voiture',
  'karossa': 'voiture',
  'dar': 'maison',
  'batiment': 'appartement',
  'khadma': 'emploi',
  'service': 'emploi',
  'pc': 'ordinateur',
  'laptop': 'ordinateur portable',
  'tablette': 'tablette',
  'portabl': 'téléphone',
  'salon': 'meuble',
  'canape': 'canapé',
  'cuisine': 'équipement cuisine',
  'gaz': 'cuisinière',
  'four': 'cuisinière',
  'clim': 'climatiseur',
  'climatiseur': 'climatiseur',
  'froid': 'réfrigérateur',
  'machine a laver': 'lave-linge',
  'lave linge': 'lave-linge',
  'tv': 'télévision',
  'ecran': 'télévision',
  'micro': 'ordinateur',
  'bureau': 'mobilier bureau',
  'chaise': 'meuble',
  'lit': 'meuble',
  'armoire': 'meuble',
  'vetement': 'vêtement',
  'chaussure': 'vêtement',
  'sbabit': 'chaussures',
  'tril': 'vêtement',
  'tricou': 't-shirt',
  'serwal': 'pantalon',
  'robe': 'vêtement',
  'montre': 'accessoires',
  'sa3a': 'montre',
  'parfum': 'beauté',
  'maquillage': 'beauté',
  'cosmetique': 'beauté',
  'jeu': 'jeux vidéo',
  'jeux': 'jeux vidéo',
  'ps4': 'console de jeux',
  'ps5': 'console de jeux',
  'xbox': 'console de jeux',
  'nintendo': 'console de jeux',
  'manette': 'accessoires jeux',
  'cd': 'jeux vidéo',
  'livre': 'loisirs',
  'ktab': 'livre',
  'sport': 'sport',
  'velo': 'vélo',
  'bicyclette': 'vélo',
  'moto': 'moto',
  'motor': 'moto',
  'camion': 'camion',
  'engins': 'véhicules professionnels',
  'tracteur': 'véhicules agricoles',
  'piece': 'pièces détachées',
  'pneu': 'pièces auto',
  'roue': 'pièces auto',
  'moteur': 'pièces auto',
  'accessoire': 'accessoires',
  'telephone': 'téléphone',
  'iphone': 'téléphone',
  'samsung': 'téléphone',
  'huawei': 'téléphone',
  'xiaomi': 'téléphone',
  'oppo': 'téléphone',
  'condor': 'téléphone',
  'iris': 'téléphone',
  'brandt': 'électroménager',
  'geant': 'électroménager',
  'stream': 'électroménager',
  'lg': 'électroménager',
  'sony': 'électronique',
  'canon': 'appareil photo',
  'nikon': 'appareil photo',
  'camera': 'appareil photo',
  'imprimante': 'informatique',
  'souris': 'informatique',
  'clavier': 'informatique',
  'wifi': 'réseau',
  'modem': 'réseau',
  'routeur': 'réseau',
  '4g': 'réseau',
  'internet': 'réseau',
  'electricien': 'services',
  'plombier': 'services',
  'mecanicien': 'services',
  'peintre': 'services',
  'macon': 'services',
  'transport': 'services',
  'demenagement': 'services',
  'menage': 'services',
  'cours': 'services',
  'formation': 'services',
  'voyage': 'services',
  'omra': 'voyage',
  'hajj': 'voyage',
  'billet': 'voyage',
  'hotel': 'voyage',
  'vacance': 'voyage',
  'location': 'immobilier',
  'vente': 'immobilier',
  'echange': 'immobilier',
  'terrain': 'immobilier',
  'villa': 'immobilier',
  'maison': 'immobilier',
  'studio': 'immobilier',
  'f1': 'immobilier',
  'f2': 'immobilier',
  'f3': 'immobilier',
  'f4': 'immobilier',
  'f5': 'immobilier',
  'garage': 'immobilier',
  'local': 'immobilier',
  'hangar': 'immobilier',
  'depot': 'immobilier',
  'usine': 'immobilier',
  'ferme': 'immobilier',
  'agricole': 'immobilier',
  'animaux': 'animaux',
  'chat': 'animaux',
  'chien': 'animaux',
  'oiseau': 'animaux',
  'mouton': 'animaux',
  'vache': 'animaux',
  'cheval': 'animaux',
  'poule': 'animaux',
  'lapin': 'animaux',
  'nourriture': 'alimentation',
  'miel': 'alimentation',
  'huile': 'alimentation',
  'datte': 'alimentation',
  'gateau': 'alimentation',
  'plat': 'alimentation',
  'traiteur': 'services',
  'mariage': 'événements',
  'fete': 'événements',
  'salle': 'événements',
  'robe blanche': 'mariage',
  'costume': 'vêtement homme',
  'caftan': 'vêtement femme',
  'karakou': 'vêtement femme',
  'djebba': 'vêtement femme',
  'blouza': 'vêtement femme',
  'burnous': 'vêtement homme',
  'kachabia': 'vêtement homme',
  // Ajoutez d'autres corrections selon les besoins
};

const VoiceSearchEnhanced: React.FC<VoiceSearchEnhancedProps> = ({
  onVoiceResult,
  onPhoneticSearch,
  className
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { trackCorrection } = useSmartSearch();
  const [isListening, setIsListening] = useState(false);
  const [showUnsupportedMessage, setShowUnsupportedMessage] = useState(false);
  const recognitionRef = useRef<any>(null);

  // Fonction pour corriger phonétiquement le texte
  const correctPhonetically = useCallback((text: string): string => {
    let correctedText = text.toLowerCase();
    
    // Appliquer les corrections du dictionnaire
    Object.entries(phoneticDictionary).forEach(([incorrect, correct]) => {
      const regex = new RegExp(`\\b${incorrect}\\b`, 'gi');
      if (regex.test(correctedText)) {
        correctedText = correctedText.replace(regex, correct);
        // Tracker la correction pour l'apprentissage
        trackCorrection(text, correctedText);
      }
    });

    return correctedText;
  }, [trackCorrection]);

  // Fonction pour normaliser la reconnaissance vocale en dialecte
  const normalizeDialect = useCallback((text: string): string => {
    // Corrections spécifiques au dialecte algérien/français
    const dialectCorrections = {
      'wesh rak': 'comment ça va',
      'chkoun': 'qui',
      'waqtash': 'quand',
      'win': 'où',
      'kifash': 'comment',
      'qadash': 'combien',
      // Ajoutez d'autres traductions selon les besoins
    };

    let normalizedText = text.toLowerCase();
    Object.entries(dialectCorrections).forEach(([dialect, french]) => {
      const regex = new RegExp(`\\b${dialect}\\b`, 'gi');
      normalizedText = normalizedText.replace(regex, french);
    });

    return normalizedText;
  }, []);

  useEffect(() => {
    const isSupported = 'webkitSpeechRecognition' in window || 'SpeechRecognition' in window;
    
    if (isSupported) {
      const SpeechRecognition = (window as any).SpeechRecognition || (window as any).webkitSpeechRecognition;
      recognitionRef.current = new SpeechRecognition();
      
      if (recognitionRef.current) {
        recognitionRef.current.continuous = true;
        recognitionRef.current.interimResults = true;
        
        // Configuration multilingue
        const speechLang = language === 'ar' ? 'ar-DZ' : 
                          language === 'en' ? 'en-US' : 'fr-DZ';
        recognitionRef.current.lang = speechLang;

        recognitionRef.current.onresult = (event: any) => {
          let finalTranscript = '';
          let interimTranscript = '';

          for (let i = event.resultIndex; i < event.results.length; i++) {
            const result = event.results[i];
            if (result.isFinal) {
              finalTranscript += result[0].transcript;
            } else {
              interimTranscript += result[0].transcript;
            }
          }

          if (finalTranscript) {
            // Appliquer les corrections phonétiques et dialectales
            let correctedTranscript = normalizeDialect(finalTranscript);
            correctedTranscript = correctPhonetically(correctedTranscript);
            
            onVoiceResult(correctedTranscript);
            
            // Optionnel: recherche phonétique avancée
            if (onPhoneticSearch) {
              onPhoneticSearch(correctedTranscript);
            }
          } else if (interimTranscript) {
            // Appliquer les corrections phonétiques et dialectales même pour les résultats intermédiaires
            let correctedTranscript = normalizeDialect(interimTranscript);
            correctedTranscript = correctPhonetically(correctedTranscript);
            
            onVoiceResult(correctedTranscript);
          }
        };

        recognitionRef.current.onerror = (event: any) => {
          logger.error('Erreur de reconnaissance vocale:', event.error);
          setIsListening(false);
        };

        recognitionRef.current.onend = () => {
          setIsListening(false);
        };
      }
    }

    return () => {
      if (recognitionRef.current) {
        recognitionRef.current.stop();
      }
    };
  }, [language, onVoiceResult, onPhoneticSearch, correctPhonetically, normalizeDialect]);

  const startListening = () => {
    if (recognitionRef.current && !isListening) {
      recognitionRef.current.start();
      setIsListening(true);
    }
  };

  const stopListening = () => {
    if (recognitionRef.current && isListening) {
      recognitionRef.current.stop();
      setIsListening(false);
    }
  };

  const isSupported = 'webkitSpeechRecognition' in window || 'SpeechRecognition' in window;

  const handleMicClick = () => {
    if (!isSupported) {
      setShowUnsupportedMessage(true);
      setTimeout(() => setShowUnsupportedMessage(false), 3000);
      return;
    }

    if (isListening) {
      stopListening();
    } else {
      startListening();
    }
  };

  return (
    <div className={`flex items-center gap-2 ${className || ''}`}>
      <button
        type="button"
        onClick={handleMicClick}
        className={`p-2 rounded-md border transition-all duration-200 ${
          !isSupported 
            ? 'bg-gray-100 dark:bg-slate-700 border-gray-300 dark:border-slate-600 text-gray-400 dark:text-slate-500 cursor-not-allowed opacity-70' 
            : isListening 
              ? 'bg-red-50 dark:bg-red-900/20 border-red-200 dark:border-red-800 text-red-600 dark:text-red-400 animate-pulse' 
              : 'bg-gray-50 dark:bg-slate-700 border-gray-200 dark:border-slate-600 text-gray-600 dark:text-slate-400 hover:bg-gray-100 dark:hover:bg-slate-600'
        }`}
        title={
          !isSupported 
            ? "La recherche vocale n'est pas supportée par votre navigateur" 
            : isListening 
              ? t('search.voice.stop') 
              : t('search.voice.start')
        }
      >
        {isListening ? (
          <MicOff className="h-4 w-4" />
        ) : (
          <Mic className="h-4 w-4" />
        )}
      </button>

      {/* Message d'information si le navigateur ne supporte pas la reconnaissance vocale */}
      {showUnsupportedMessage && (
        <div className="absolute top-full left-0 mt-1 p-2 bg-gray-800 text-white text-xs rounded shadow-lg z-50 max-w-xs">
          <div className="flex items-center gap-2">
            <AlertCircle className="h-4 w-4" />
            <span>La recherche vocale n'est pas supportée par votre navigateur. Essayez avec Chrome ou Edge.</span>
          </div>
        </div>
      )}
    </div>
  );
};

export default VoiceSearchEnhanced;
