import React, { useState, useCallback } from 'react';
import { useDropzone } from 'react-dropzone';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { useToast } from '@/hooks/use-toast';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { Button } from '@/components/ui/button';
import { Progress } from '@/components/ui/progress';
import { X, Upload, Image as ImageIcon, Loader2 } from 'lucide-react';
import { logger } from '@/utils/silentLogger';
import { compressImage } from '@/utils/mediaCompression';

interface ImageUploadProps {
  onImagesChange: (imageUrls: string[]) => void;
  maxImages?: number;
  bucket?: string;
  initialImages?: string[];
  applyWatermark?: boolean;
  watermarkText?: string;
  watermarkOpacity?: number;
  maxWidth?: number;
  compressionQuality?: number;
  minWidth?: number;
  maxSizeInMB?: number;
  hideStats?: boolean;
  placeholder?: string;
}

const ImageUpload: React.FC<ImageUploadProps> = ({
  onImagesChange,
  maxImages = 5,
  bucket = 'announcement-images',
  initialImages = [],
  applyWatermark = false,
  watermarkText = 'Aladdin',
  watermarkOpacity = 0.3,
  maxWidth: _maxWidth,
  compressionQuality: _compressionQuality,
  minWidth,
  maxSizeInMB = 2,
  hideStats = false,
  placeholder
}) => {
  const { t } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { toast } = useToast();
  const [images, setImages] = useState<string[]>(initialImages);
  const [uploading, setUploading] = useState(false);
  const [uploadProgress, setUploadProgress] = useState(0);

  const checkDimensions = useCallback((file: File): Promise<boolean> => {
    if (!minWidth) return Promise.resolve(true);
    
    return new Promise((resolve) => {
      const img = new Image();
      img.onload = () => {
        URL.revokeObjectURL(img.src);
        if (img.width < minWidth) {
          toast({
            title: t('imageUpload.tooSmall'),
            description: t('imageUpload.minWidth').replace('{width}', minWidth.toString()).replace('{actual}', img.width.toString()),
            variant: "destructive"
          });
          resolve(false);
        } else {
          resolve(true);
        }
      };
      img.onerror = () => {
        URL.revokeObjectURL(img.src);
        resolve(true); // Let it pass if we can't check
      };
      img.src = URL.createObjectURL(file);
    });
  }, [minWidth, toast, t]);

  const applyWatermarkToFile = useCallback((file: File): Promise<Blob> => {
    return new Promise((resolve, reject) => {
      const img = new Image();
      img.onload = () => {
        const canvas = document.createElement('canvas');
        canvas.width = img.width;
        canvas.height = img.height;
        const ctx = canvas.getContext('2d');
        if (!ctx) {
          reject(new Error('ctx'));
          return;
        }
        ctx.drawImage(img, 0, 0);
        const size = Math.max(12, Math.floor(Math.min(canvas.width, canvas.height) * 0.04));
        ctx.globalAlpha = watermarkOpacity;
        ctx.fillStyle = '#ffffff';
        ctx.font = `${size}px sans-serif`;
        ctx.textBaseline = 'bottom';
        const padding = Math.max(8, Math.floor(size * 0.6));
        const textWidth = ctx.measureText(watermarkText).width;
        const x = canvas.width - textWidth - padding;
        const y = canvas.height - padding;
        ctx.fillText(watermarkText, x, y);
        const type = file.type.includes('png') ? 'image/png' : 'image/jpeg';
        canvas.toBlob(blob => {
          if (blob) resolve(blob);
          else reject(new Error('blob'));
        }, type, 0.92);
      };
      img.onerror = () => reject(new Error('img'));
      img.src = URL.createObjectURL(file);
    });
  }, [watermarkOpacity, watermarkText]);

  const onDrop = useCallback(async (acceptedFiles: File[]) => {
    if (!user) {
      toast({
        title: t('imageUpload.loginRequired'),
        description: t('imageUpload.loginRequiredDesc'),
        variant: "destructive"
      });
      return;
    }

    if (images.length + acceptedFiles.length > maxImages) {
      toast({
        title: t('imageUpload.limitExceeded'),
        description: t('imageUpload.limitExceededDesc').replace('{max}', maxImages.toString()),
        variant: "destructive"
      });
      return;
    }

    setUploading(true);
    setUploadProgress(0);
    const startTs = performance.now();

    try {
      const uploadPromises = acceptedFiles.map(async (file, index) => {
        const passesDimensions = await checkDimensions(file);
        if (!passesDimensions) return null;

        // Compresser l'image d'abord
        const compressedFile = await compressImage(file);
        
        // Create unique filename
        const fileExt = compressedFile.name.split('.').pop();
        const fileName = `${user.id}/${Date.now()}-${Math.random().toString(36).substring(2)}.${fileExt}`;

        // Upload to Supabase Storage
        const payload = applyWatermark ? await applyWatermarkToFile(compressedFile as File) : compressedFile;
        const { data, error } = await supabase.storage
          .from(bucket)
          .upload(fileName, payload, {
            cacheControl: '3600',
            upsert: false
          });

        if (error) throw error;

        // Get public URL
        const { data: urlData } = supabase.storage
          .from(bucket)
          .getPublicUrl(data.path);

        setUploadProgress(((index + 1) / acceptedFiles.length) * 100);

        return urlData.publicUrl;
      });

      const uploadedUrls = (await Promise.all(uploadPromises)).filter(Boolean) as string[];
      const newImages = [...images, ...uploadedUrls];
      
      setImages(newImages);
      onImagesChange(newImages);

      const duration = performance.now() - startTs;
      toast({
        title: t('imageUpload.uploadSuccess'),
        description: t('imageUpload.uploadSuccessDesc').replace('{count}', acceptedFiles.length.toString()) + ` · ${Math.max(0, duration/1000).toFixed(2)}s`,
      });

    } catch (error) {
      logger.error('Error uploading images:', error);
      toast({
        title: t('imageUpload.uploadError'),
        description: t('imageUpload.uploadErrorDesc'),
        variant: "default",
        className: "bg-white border-red-200 text-red-600"
      });
    } finally {
      setUploading(false);
      setUploadProgress(0);
    }
  }, [user, images, maxImages, bucket, onImagesChange, toast, t, applyWatermark, applyWatermarkToFile, checkDimensions]);

  const { getRootProps, getInputProps, isDragActive } = useDropzone({
    onDrop,
    accept: {
      'image/*': ['.jpeg', '.jpg', '.png', '.webp', '.gif']
    },
    maxSize: maxSizeInMB * 1024 * 1024,
    disabled: uploading || images.length >= maxImages
  });

  const removeImage = async (imageUrl: string, index: number) => {
    try {
      // Extract file path from URL for deletion
      const urlParts = imageUrl.split('/');
      const fileName = urlParts[urlParts.length - 1];
      const filePath = `${user?.id}/${fileName}`;

      // Delete from Supabase Storage
      const { error } = await supabase.storage
        .from(bucket)
        .remove([filePath]);

      if (error) {
        logger.warn('Error deleting image from storage:', error);
        // Continue anyway to remove from UI
      }

      const newImages = images.filter((_, i) => i !== index);
      setImages(newImages);
      onImagesChange(newImages);

      toast({
        title: t('imageUpload.imageDeleted'),
        description: t('imageUpload.imageDeletedDesc'),
      });

    } catch (error) {
      logger.error('Error removing image:', error);
      toast({
        title: t('imageUpload.deleteError'),
        description: t('imageUpload.deleteErrorDesc'),
        variant: "destructive"
      });
    }
  };

  return (
    <div className="space-y-4">
      {/* Upload Zone */}
      {images.length < maxImages && (
        <div
          {...getRootProps()}
          className={`border-2 border-dashed rounded-lg p-6 text-center transition-colors cursor-pointer
            ${isDragActive ? 'border-green-500 bg-green-50' : 'border-muted-foreground/25 hover:border-green-500'}
            ${uploading ? 'pointer-events-none opacity-50' : ''}
          `}
        >
          <input {...getInputProps()} />
          <div className="space-y-2">
            {uploading ? (
              <>
                <Loader2 className="h-8 w-8 mx-auto animate-spin text-green-600" />
                <p className="text-sm text-muted-foreground">{t('imageUpload.uploading')}</p>
                <Progress value={uploadProgress} className="w-full max-w-xs mx-auto" />
              </>
            ) : (
              <>
                <Upload className="h-8 w-8 mx-auto text-muted-foreground" />
                {placeholder ? (
                  <p className="text-sm text-muted-foreground mt-2 text-center px-4">
                    {placeholder}
                  </p>
                ) : (
                  !hideStats && (
                    <>
                      <p className="text-sm text-muted-foreground">
                        {isDragActive
                          ? t('imageUpload.dropHere')
                          : t('imageUpload.dragDrop').replace('{current}', images.length.toString()).replace('{max}', maxImages.toString())
                        }
                      </p>
                      <p className="text-xs text-muted-foreground">
                        {t('imageUpload.formats').replace('{size}', maxSizeInMB.toString())}
                      </p>
                    </>
                  )
                )}
              </>
            )}
          </div>
        </div>
      )}

      {/* Image Preview Grid */}
      {images.length > 0 && (
        <div className="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-4">
          {images.map((imageUrl, index) => (
            <div key={index} className="relative group">
              <div className="aspect-square rounded-lg overflow-hidden bg-muted">
                <img
                  src={imageUrl}
                  alt={`Image ${index + 1}`}
                  className="w-full h-full object-cover group-hover:scale-105 transition-transform"
                />
              </div>
              <Button
                variant="destructive"
                size="sm"
                className="absolute top-2 right-2 h-6 w-6 p-0 opacity-0 group-hover:opacity-100 transition-opacity"
                onClick={() => removeImage(imageUrl, index)}
              >
                <X className="h-3 w-3" />
              </Button>
              <div className="absolute bottom-2 left-2 bg-black/50 text-white text-xs px-2 py-1 rounded">
                {index + 1}
              </div>
            </div>
          ))}
        </div>
      )}

      {images.length === 0 && (
        <div className="text-center py-8 text-muted-foreground">
          <ImageIcon className="h-12 w-12 mx-auto mb-2 opacity-50" />
          <p className="text-sm">{t('imageUpload.noImage')}</p>
        </div>
      )}
    </div>
  );
};

export default ImageUpload;
