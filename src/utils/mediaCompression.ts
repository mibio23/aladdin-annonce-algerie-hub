import { logger } from './silentLogger';
import { supabase } from '@/integrations/supabase/client';

interface MediaSettings {
  imageQuality: number;
  imageMaxWidth: number;
  videoMaxSizeBytes: number;
  isVideoEnabled: boolean;
}

let cachedSettings: MediaSettings | null = null;

/**
 * Récupère les paramètres de compression depuis la base de données.
 */
export const getMediaSettings = async (): Promise<MediaSettings> => {
  if (cachedSettings) return cachedSettings;

  try {
    const { data, error } = await supabase
      .from('site_settings')
      .select('setting_value')
      .eq('setting_key', 'media_compression')
      .maybeSingle();

    if (error) throw error;

    if (data && data.setting_value) {
      cachedSettings = data.setting_value as unknown as MediaSettings;
      return cachedSettings;
    }
  } catch (error) {
    logger.error('Erreur lors de la récupération des paramètres média:', error);
  }

  // Valeurs par défaut si échec
  return {
    imageQuality: 0.8,
    imageMaxWidth: 1200,
    videoMaxSizeBytes: 15 * 1024 * 1024,
    isVideoEnabled: true,
  };
};

/**
 * Compresse une image côté client et la convertit au format WebP.
 * @param file Le fichier image original
 * @param quality Qualité de compression (optionnel, écrase le paramètre global)
 * @param maxWidth Largeur maximale de l'image (optionnel, écrase le paramètre global)
 * @returns Promesse résolue avec le fichier WebP compressé
 */
export const compressImage = async (file: File, quality?: number, maxWidth?: number): Promise<File> => {
  // Récupérer les paramètres globaux si non fournis
  const settings = await getMediaSettings();
  const finalQuality = quality ?? settings.imageQuality;
  const finalMaxWidth = maxWidth ?? settings.imageMaxWidth;

  return new Promise((resolve, reject) => {
    // Vérifier si c'est une image
    if (!file.type.startsWith('image/')) {
      return resolve(file);
    }

    const reader = new FileReader();
    reader.readAsDataURL(file);
    reader.onload = (event) => {
      const img = new Image();
      img.src = event.target?.result as string;
      img.onload = () => {
        const canvas = document.createElement('canvas');
        let width = img.width;
        let height = img.height;

        // Redimensionnement proportionnel si nécessaire
        if (width > finalMaxWidth) {
          height = (finalMaxWidth / width) * height;
          width = finalMaxWidth;
        }

        canvas.width = width;
        canvas.height = height;

        const ctx = canvas.getContext('2d');
        if (!ctx) {
          reject(new Error('Impossible d\'obtenir le contexte Canvas'));
          return;
        }

        // Dessiner l'image sur le canvas
        ctx.drawImage(img, 0, 0, width, height);

        // Convertir en WebP
        canvas.toBlob(
          (blob) => {
            if (blob) {
              const compressedFile = new File([blob], file.name.replace(/\.[^/.]+$/, "") + ".webp", {
                type: 'image/webp',
                lastModified: Date.now(),
              });
              
              const originalSize = (file.size / 1024).toFixed(2);
              const newSize = (compressedFile.size / 1024).toFixed(2);
              logger.info(`Compression Image: ${originalSize}KB -> ${newSize}KB (WebP) à ${Math.round(finalQuality * 100)}% qualité`);
              
              resolve(compressedFile);
            } else {
              reject(new Error('Erreur lors de la création du Blob WebP'));
            }
          },
          'image/webp',
          finalQuality
        );
      };
      img.onerror = (err) => reject(err);
    };
    reader.onerror = (err) => reject(err);
  });
};

/**
 * Optimise une vidéo en vérifiant sa taille et son format.
 * @param file Le fichier vidéo original
 * @param maxSizeBytes Taille maximale autorisée (optionnel)
 * @returns Promesse résolue avec le fichier (éventuellement validé)
 */
export const optimizeVideo = async (file: File, maxSizeBytes?: number): Promise<File> => {
  const settings = await getMediaSettings();
  const finalMaxSize = maxSizeBytes ?? settings.videoMaxSizeBytes;

  if (file.size > finalMaxSize) {
    logger.warn(`Vidéo lourde détectée: ${(file.size / 1024 / 1024).toFixed(2)}MB (Limite: ${finalMaxSize / (1024 * 1024)}MB)`);
  }
  return file;
};
