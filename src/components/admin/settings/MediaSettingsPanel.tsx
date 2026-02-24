import React, { useCallback, useEffect, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Label } from "@/components/ui/label";
import { Slider } from "@/components/ui/slider";
import { Input } from "@/components/ui/input";
import { useToast } from "@/hooks/use-toast";
import { supabase } from "@/integrations/supabase/client";
import { logger } from "@/utils/silentLogger";
import { Image, Video, Save, RefreshCw } from "lucide-react";

import { Switch } from "@/components/ui/switch";

interface MediaSettings {
  imageQuality: number;
  imageMaxWidth: number;
  videoMaxSizeBytes: number;
  isVideoEnabled: boolean;
}

const defaultSettings: MediaSettings = {
  imageQuality: 0.8,
  imageMaxWidth: 1200,
  videoMaxSizeBytes: 15 * 1024 * 1024, // 15MB
  isVideoEnabled: true,
};

const MediaSettingsPanel: React.FC = () => {
  const { toast } = useToast();
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [settings, setSettings] = useState<MediaSettings>(defaultSettings);

  const fetchSettings = useCallback(async () => {
    try {
      setLoading(true);
      const { data, error } = await supabase
        .from("site_settings")
        .select("*")
        .eq("setting_key", "media_compression")
        .maybeSingle();

      if (error && error.code !== "PGRST116") throw error;

      if (data) {
        setSettings(data.setting_value as unknown as MediaSettings);
      }
    } catch (error) {
      logger.error("Erreur lors de la récupération des paramètres média:", error);
      toast({
        title: "Erreur",
        description: "Impossible de charger les paramètres de compression.",
        variant: "destructive",
      });
    } finally {
      setLoading(false);
    }
  }, [toast]);

  useEffect(() => {
    fetchSettings();
  }, [fetchSettings]);

  const saveSettings = async () => {
    try {
      setSaving(true);
      const { error } = await supabase
        .from("site_settings")
        .upsert({
          setting_key: "media_compression",
          setting_value: settings as any,
          is_active: true,
          updated_at: new Date().toISOString(),
        }, { onConflict: "setting_key" });

      if (error) throw error;

      toast({
        title: "Paramètres enregistrés",
        description: "Les nouveaux réglages de compression sont maintenant actifs.",
      });
    } catch (error) {
      logger.error("Erreur lors de l'enregistrement des paramètres média:", error);
      toast({
        title: "Erreur",
        description: "Impossible d'enregistrer les paramètres.",
        variant: "destructive",
      });
    } finally {
      setSaving(false);
    }
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center p-12">
        <RefreshCw className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <Card>
        <CardHeader>
          <div className="flex items-center gap-2">
            <Image className="h-5 w-5 text-primary" />
            <CardTitle>Compression d'Images</CardTitle>
          </div>
          <CardDescription>
            Ajustez la qualité et les dimensions maximales pour toutes les images uploadées.
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-8">
          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <Label htmlFor="quality">Qualité de compression (WebP)</Label>
              <span className="font-mono font-bold text-primary">{Math.round(settings.imageQuality * 100)}%</span>
            </div>
            <Slider
              id="quality"
              min={0.1}
              max={1.0}
              step={0.05}
              value={[settings.imageQuality]}
              onValueChange={(val) => setSettings({ ...settings, imageQuality: val[0] })}
            />
            <p className="text-xs text-muted-foreground">
              Une qualité de 0.8 (80%) est recommandée pour un équilibre parfait entre poids et clarté.
            </p>
          </div>

          <div className="space-y-4">
            <div className="flex justify-between items-center">
              <Label htmlFor="maxWidth">Largeur maximale (pixels)</Label>
              <span className="font-mono font-bold text-primary">{settings.imageMaxWidth}px</span>
            </div>
            <Slider
              id="maxWidth"
              min={600}
              max={2500}
              step={100}
              value={[settings.imageMaxWidth]}
              onValueChange={(val) => setSettings({ ...settings, imageMaxWidth: val[0] })}
            />
            <p className="text-xs text-muted-foreground">
              Les images plus larges que cette valeur seront automatiquement redimensionnées.
            </p>
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Video className="h-5 w-5 text-primary" />
              <CardTitle>Optimisation Vidéo</CardTitle>
            </div>
            <div className="flex items-center gap-2">
              <Label htmlFor="video-toggle" className="text-sm font-medium">
                {settings.isVideoEnabled ? "Activé" : "Désactivé"}
              </Label>
              <Switch
                id="video-toggle"
                checked={settings.isVideoEnabled}
                onCheckedChange={(checked) => setSettings({ ...settings, isVideoEnabled: checked })}
              />
            </div>
          </div>
          <CardDescription>
            Gérez l'autorisation et les limites de taille pour les vidéos utilisateurs.
          </CardDescription>
        </CardHeader>
        <CardContent className={`space-y-6 transition-opacity duration-200 ${!settings.isVideoEnabled ? 'opacity-50 pointer-events-none' : ''}`}>
          <div className="space-y-2">
            <Label htmlFor="maxVideoSize">Taille maximale autorisée (Mo)</Label>
            <div className="flex items-center gap-4">
              <Input
                id="maxVideoSize"
                type="number"
                disabled={!settings.isVideoEnabled}
                value={settings.videoMaxSizeBytes / (1024 * 1024)}
                onChange={(e) => setSettings({ ...settings, videoMaxSizeBytes: Number(e.target.value) * 1024 * 1024 })}
                className="max-w-[120px]"
              />
              <span className="text-sm text-muted-foreground">Mo par vidéo</span>
            </div>
            <p className="text-xs text-muted-foreground mt-2">
              Les vidéos dépassant cette taille seront bloquées avant l'upload pour protéger votre stockage.
            </p>
          </div>
        </CardContent>
      </Card>

      <div className="flex justify-between items-center">
        <Button 
          variant="outline" 
          onClick={() => setSettings(defaultSettings)} 
          disabled={saving}
          className="text-muted-foreground"
        >
          Réinitialiser par défaut
        </Button>
        <Button onClick={saveSettings} disabled={saving} className="gap-2">
          {saving ? <RefreshCw className="h-4 w-4 animate-spin" /> : <Save className="h-4 w-4" />}
          Sauvegarder les réglages média
        </Button>
      </div>
    </div>
  );
};

export default MediaSettingsPanel;
