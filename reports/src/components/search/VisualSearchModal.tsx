import React, { useState } from 'react';
import { Camera, Loader2 } from 'lucide-react';
import { Dialog, DialogContent, DialogHeader, DialogTitle } from '@/components/ui/dialog';
import { useToast } from '@/components/ui/use-toast';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import CameraCapture from './visual/CameraCapture';
import ImageUploadZone from './visual/ImageUploadZone';
import AnalysisResults from './visual/AnalysisResults';
import { ImageAnalysis, VisualSearchResult } from './visual/ImageAnalysis';
import { Card } from '@/components/ui/card';
import { logger } from '@/utils/silentLogger';
import { compressImage } from '@/utils/mediaCompression';

interface VisualSearchModalProps {
  isOpen: boolean;
  onClose: () => void;
  onSearchQuery: (query: string) => void;
  categoryContext?: string;
}

const VisualSearchModal: React.FC<VisualSearchModalProps> = ({
  isOpen,
  onClose,
  onSearchQuery,
  categoryContext
}) => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [previewImage, setPreviewImage] = useState<string | null>(null);
  const [results, setResults] = useState<VisualSearchResult[]>([]);
  const [cameraMode, setCameraMode] = useState(false);
  const { toast } = useToast();
  const { t } = useSafeI18nWithRouter();
  const imageAnalysis = new ImageAnalysis();

  const processImage = async (file: File | Blob) => {
    setIsProcessing(true);
    setResults([]);

    try {
      const analysisResults = await imageAnalysis.analyzeImage(file, categoryContext);
      setResults(analysisResults);
      
      toast({
        title: "Image analysée avec succès",
        description: `${analysisResults.length} éléments détectés`,
      });

    } catch (error) {
      logger.error('Erreur traitement image:', error);
      toast({
        title: "Erreur de traitement",
        description: "Impossible d'analyser l'image. Réessayez.",
        variant: "destructive",
      });
    } finally {
      setIsProcessing(false);
    }
  };

  const handleImageSelect = async (file: File) => {
    try {
      const compressedFile = await compressImage(file);
      const url = URL.createObjectURL(compressedFile);
      setPreviewImage(url);
      processImage(compressedFile);
    } catch (err) {
      logger.error('Erreur compression image recherche:', err);
      const url = URL.createObjectURL(file);
      setPreviewImage(url);
      processImage(file);
    }
  };

  const handleImageCapture = async (blob: Blob) => {
    try {
      // Convert Blob to File for compression if needed, though compressImage handles Blob via FileReader
      const file = new File([blob], "capture.jpg", { type: blob.type });
      const compressedFile = await compressImage(file);
      const url = URL.createObjectURL(compressedFile);
      setPreviewImage(url);
      processImage(compressedFile);
    } catch (err) {
      logger.error('Erreur compression capture caméra:', err);
      const url = URL.createObjectURL(blob);
      setPreviewImage(url);
      processImage(blob);
    }
  };

  const handleSearchKeyword = (keyword: string, relatedTerms?: string[]) => {
    const searchQuery = relatedTerms && relatedTerms.length > 0 
      ? `${keyword} ${relatedTerms[0]}` 
      : keyword;
    
    onSearchQuery(searchQuery);
    onClose();
    
    toast({
      title: "Recherche lancée",
      description: `Recherche: ${searchQuery}`,
    });
  };

  const resetModal = () => {
    setPreviewImage(null);
    setResults([]);
    setIsProcessing(false);
    setCameraMode(false);
  };

  const handleClose = () => {
    resetModal();
    onClose();
  };

  return (
    <Dialog open={isOpen} onOpenChange={handleClose}>
      <DialogContent className="max-w-2xl max-h-[90vh] overflow-y-auto">
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            <Camera className="w-5 h-5 text-primary" />
            {t('search.advanced.visualSearch')} IA
          </DialogTitle>
        </DialogHeader>

        <div className="space-y-6">
          <CameraCapture
            onImageCapture={handleImageCapture}
            isActive={cameraMode}
            onToggle={() => setCameraMode(!cameraMode)}
          />

          {!cameraMode && (
            <ImageUploadZone
              previewImage={previewImage}
              onImageSelect={handleImageSelect}
              onCameraToggle={() => setCameraMode(true)}
              onReset={resetModal}
            />
          )}

          {isProcessing && (
            <Card className="p-6 text-center">
              <Loader2 className="w-8 h-8 animate-spin mx-auto mb-4 text-primary" />
              <h3 className="font-semibold mb-2">Analyse en cours...</h3>
              <p className="text-muted-foreground text-sm">
                L'IA analyse votre image pour détecter les objets et générer des mots-clés
              </p>
            </Card>
          )}

          <AnalysisResults
            results={results}
            onSearchKeyword={handleSearchKeyword}
          />
        </div>
      </DialogContent>
    </Dialog>
  );
};

export default VisualSearchModal;