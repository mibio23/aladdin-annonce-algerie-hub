import React, { useState, useEffect, useCallback } from 'react';
import { WifiOff, Wifi, Download, HardDrive, RefreshCw } from 'lucide-react';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Progress } from '@/components/ui/progress';
import { useToast } from '@/hooks/use-toast';
import { safeStringify } from '@/utils/safeStringify';
import { logger } from '@/utils/silentLogger';
import { supabase } from '@/integrations/supabase/client';
import { fetchCategoriesFromSupabase } from '@/services/supabaseCategoriesService';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

type OfflineAnnouncement = {
  id: string;
  title: string | null;
  price: number | null;
  currency: string | null;
  category_slug: string | null;
  subcategory_id: string | null;
  created_at: string | null;
  image_url: string | null;
  view_count: number | null;
};

type OfflineFavorite = {
  type: 'announcement' | 'shop' | 'pro';
  target_id: string;
  created_at: string | null;
};

interface CachedData {
  announcements: OfflineAnnouncement[];
  categories: Array<{ id: string; slug: string; name: string; subcategories?: unknown[] }>;
  favorites: OfflineFavorite[];
  lastSync: string;
  version: string;
}

export const OfflineMode: React.FC = () => {
  const { t, language } = useSafeI18nWithRouter();
  const { toast } = useToast();
  const { user } = useAuth();
  const [isOnline, setIsOnline] = useState(navigator.onLine);
  const [cachedData, setCachedData] = useState<CachedData | null>(null);

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const translated = t(key);
    if (translated && translated !== key) return translated;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };
  const [storageUsage, setStorageUsage] = useState<{ used: number; total: number } | null>(null);
  const [syncProgress, setSyncProgress] = useState(0);
  const [isSyncing, setIsSyncing] = useState(false);

  const loadCachedData = useCallback(() => {
    try {
      const cached = localStorage.getItem('aladdin_offline_data');
      if (cached) {
        setCachedData(JSON.parse(cached));
      }
    } catch (error) {
      logger.error('Error loading cached data:', error);
    }
  }, []);

  const checkStorageUsage = useCallback(async () => {
    if ('storage' in navigator && 'estimate' in navigator.storage) {
      try {
        const estimate = await navigator.storage.estimate();
        setStorageUsage({
          used: estimate.usage || 0,
          total: estimate.quota || 0,
        });
      } catch (error) {
        logger.error('Error checking storage:', error);
      }
    }
  }, []);

  const syncData = useCallback(async (force = false) => {
    if (!force && !isOnline) return;

    setIsSyncing(true);
    setSyncProgress(0);

    try {
      setSyncProgress(20);
      const [announcementsRes, categoriesRes, announcementFavoritesRes, shopFavoritesRes, proFavoritesRes] = await Promise.all([
        supabase
          .from('announcements_public')
          .select('id,title,price,currency,category_slug,subcategory_id,created_at,image_url,view_count')
          .eq('status', 'active')
          .order('created_at', { ascending: false })
          .limit(300),
        fetchCategoriesFromSupabase('fr'),
        user
          ? supabase
              .from('announcement_favorites')
              .select('announcement_id, created_at')
              .eq('user_id', user.id)
          : Promise.resolve({ data: [] as Array<{ announcement_id: string; created_at: string | null }>, error: null }),
        user
          ? supabase
              .from('shop_favorites')
              .select('shop_id, created_at')
              .eq('user_id', user.id)
          : Promise.resolve({ data: [] as Array<{ shop_id: string; created_at: string | null }>, error: null }),
        user
          ? supabase
              .from('pro_favorites')
              .select('pro_id, created_at')
              .eq('user_id', user.id)
          : Promise.resolve({ data: [] as Array<{ pro_id: string; created_at: string | null }>, error: null }),
      ]);

      setSyncProgress(70);

      if (announcementsRes.error) throw announcementsRes.error;
      if (announcementFavoritesRes.error) throw announcementFavoritesRes.error;
      if (shopFavoritesRes.error) throw shopFavoritesRes.error;
      if (proFavoritesRes.error) throw proFavoritesRes.error;

      const favorites: OfflineFavorite[] = [
        ...((announcementFavoritesRes.data || []).map((fav) => ({
          type: 'announcement' as const,
          target_id: fav.announcement_id,
          created_at: fav.created_at,
        }))),
        ...((shopFavoritesRes.data || []).map((fav) => ({
          type: 'shop' as const,
          target_id: fav.shop_id,
          created_at: fav.created_at,
        }))),
        ...((proFavoritesRes.data || []).map((fav) => ({
          type: 'pro' as const,
          target_id: fav.pro_id,
          created_at: fav.created_at,
        }))),
      ];

      const categoriesFlat = categoriesRes.map((cat) => ({
        id: cat.id,
        slug: cat.slug,
        name: cat.name,
        subcategories: cat.subcategories || [],
      }));

      const syncedData: CachedData = {
        announcements: (announcementsRes.data || []) as OfflineAnnouncement[],
        categories: categoriesFlat,
        favorites,
        lastSync: new Date().toISOString(),
        version: '2.0.0',
      };

      localStorage.setItem('aladdin_offline_data', safeStringify(syncedData));
      setCachedData(syncedData);
      setSyncProgress(100);

      toast({
        title: tr('offline.syncComplete', {
          fr: 'Synchronisation terminée',
          en: 'Synchronization complete',
          es: 'Sincronización completada',
          it: 'Sincronizzazione completata',
          de: 'Synchronisierung abgeschlossen',
          ar: 'اكتملت المزامنة',
        }),
        description: tr('offline.syncCompleteDesc', {
          fr: `${syncedData.announcements.length} annonces, ${syncedData.categories.length} catégories, ${syncedData.favorites.length} favoris`,
          en: `${syncedData.announcements.length} listings, ${syncedData.categories.length} categories, ${syncedData.favorites.length} favorites`,
          es: `${syncedData.announcements.length} anuncios, ${syncedData.categories.length} categorías, ${syncedData.favorites.length} favoritos`,
          it: `${syncedData.announcements.length} annunci, ${syncedData.categories.length} categorie, ${syncedData.favorites.length} preferiti`,
          de: `${syncedData.announcements.length} Anzeigen, ${syncedData.categories.length} Kategorien, ${syncedData.favorites.length} Favoriten`,
          ar: `${syncedData.announcements.length} إعلاناً، ${syncedData.categories.length} فئة، ${syncedData.favorites.length} مفضلة`,
        }),
      });
    } catch (error) {
      logger.error('Sync error:', error);
      toast({
        title: tr('offline.syncError', {
          fr: 'Erreur de synchronisation',
          en: 'Synchronization error',
          es: 'Error de sincronización',
          it: 'Errore di sincronizzazione',
          de: 'Synchronisierungsfehler',
          ar: 'خطأ في المزامنة',
        }),
        description: tr('offline.syncErrorDesc', {
          fr: 'Impossible de synchroniser les données',
          en: 'Unable to synchronize data',
          es: 'No se pueden sincronizar los datos',
          it: 'Impossibile sincronizzare i dati',
          de: 'Daten konnten nicht synchronisiert werden',
          ar: 'تعذر مزامنة البيانات',
        }),
        variant: "destructive",
      });
    } finally {
      setIsSyncing(false);
      setSyncProgress(0);
      checkStorageUsage();
    }
  }, [checkStorageUsage, isOnline, toast, user]);

  useEffect(() => {
    const handleOnline = () => {
      setIsOnline(true);
      toast({
        title: tr('offline.connectionRestored', {
          fr: 'Connexion rétablie',
          en: 'Connection restored',
          es: 'Conexión restablecida',
          it: 'Connessione ristabilita',
          de: 'Verbindung wiederhergestellt',
          ar: 'تمت استعادة الاتصال',
        }),
        description: tr('offline.syncInProgress', {
          fr: 'Synchronisation des données en cours...',
          en: 'Data synchronization in progress...',
          es: 'Sincronización de datos en curso...',
          it: 'Sincronizzazione dei dati in corso...',
          de: 'Datensynchronisierung läuft...',
          ar: 'جارٍ مزامنة البيانات...',
        }),
      });
      syncData(true);
    };

    const handleOffline = () => {
      setIsOnline(false);
      toast({
        title: tr('offline.offline', {
          fr: 'Hors ligne',
          en: 'Offline',
          es: 'Sin conexión',
          it: 'Offline',
          de: 'Offline',
          ar: 'غير متصل',
        }),
        description: tr('offline.offlineDesc', {
          fr: 'Mode hors ligne activé. Vos données locales sont disponibles.',
          en: 'Offline mode enabled. Your local data is available.',
          es: 'Modo sin conexión activado. Tus datos locales están disponibles.',
          it: 'Modalità offline attivata. I tuoi dati locali sono disponibili.',
          de: 'Offline-Modus aktiviert. Ihre lokalen Daten sind verfügbar.',
          ar: 'تم تفعيل وضع عدم الاتصال. بياناتك المحلية متاحة.',
        }),
        variant: "destructive",
      });
    };

    window.addEventListener('online', handleOnline);
    window.addEventListener('offline', handleOffline);

    loadCachedData();
    checkStorageUsage();

    return () => {
      window.removeEventListener('online', handleOnline);
      window.removeEventListener('offline', handleOffline);
    };
  }, [checkStorageUsage, loadCachedData, syncData, toast]);

  const clearCache = () => {
    localStorage.removeItem('aladdin_offline_data');
    setCachedData(null);
    toast({
      title: tr('offline.cacheCleared', {
        fr: 'Cache vidé',
        en: 'Cache cleared',
        es: 'Caché borrada',
        it: 'Cache svuotata',
        de: 'Cache geleert',
        ar: 'تم مسح التخزين المؤقت',
      }),
      description: tr('offline.cacheClearedDesc', {
        fr: 'Toutes les données locales ont été supprimées',
        en: 'All local data has been removed',
        es: 'Todos los datos locales han sido eliminados',
        it: 'Tutti i dati locali sono stati rimossi',
        de: 'Alle lokalen Daten wurden entfernt',
        ar: 'تمت إزالة جميع البيانات المحلية',
      }),
    });
    checkStorageUsage();
  };

  const formatBytes = (bytes: number) => {
    if (bytes === 0) return '0 B';
    const k = 1024;
    const sizes = ['B', 'KB', 'MB', 'GB'];
    const i = Math.floor(Math.log(bytes) / Math.log(k));
    return parseFloat((bytes / Math.pow(k, i)).toFixed(2)) + ' ' + sizes[i];
  };

  const getStoragePercentage = () => {
    if (!storageUsage) return 0;
    return (storageUsage.used / storageUsage.total) * 100;
  };

  return (
    <div className="space-y-6">
      {/* Connection Status */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            {isOnline ? (
              <Wifi className="h-5 w-5 text-green-500" />
            ) : (
              <WifiOff className="h-5 w-5 text-red-500" />
            )}
            {tr('offline.connectionStatus', {
              fr: 'Statut de connexion',
              en: 'Connection status',
              es: 'Estado de conexión',
              it: 'Stato della connessione',
              de: 'Verbindungsstatus',
              ar: 'حالة الاتصال',
            })}
          </CardTitle>
          <CardDescription>
            {isOnline 
              ? tr('offline.onlineDesc', {
                  fr: 'Vous êtes connecté à Internet',
                  en: 'You are connected to the internet',
                  es: 'Estás conectado a Internet',
                  it: 'Sei connesso a Internet',
                  de: 'Sie sind mit dem Internet verbunden',
                  ar: 'أنت متصل بالإنترنت',
                })
              : tr('offline.currentlyOffline', {
                  fr: 'Vous êtes actuellement hors ligne',
                  en: 'You are currently offline',
                  es: 'Actualmente estás sin conexión',
                  it: 'Sei attualmente offline',
                  de: 'Sie sind derzeit offline',
                  ar: 'أنت غير متصل حالياً',
                })}
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="flex items-center gap-2">
            <Badge variant={isOnline ? "default" : "destructive"}>
              {isOnline
                ? tr('messages.online', { fr: 'En ligne', en: 'Online', es: 'En línea', it: 'Online', de: 'Online', ar: 'متصل' })
                : tr('offline.offline', { fr: 'Hors ligne', en: 'Offline', es: 'Sin conexión', it: 'Offline', de: 'Offline', ar: 'غير متصل' })}
            </Badge>
            
            {isOnline && (
              <Button 
                variant="outline" 
                size="sm" 
                onClick={() => syncData()}
                disabled={isSyncing}
                className="ml-auto"
              >
                <RefreshCw className="h-4 w-4 mr-2" />
                Synchroniser
              </Button>
            )}
          </div>

          {isSyncing && (
            <div className="mt-4">
              <div className="flex items-center justify-between mb-2">
                <span className="text-sm text-muted-foreground">
                  Synchronisation en cours...
                </span>
                <span className="text-sm font-medium">{syncProgress}%</span>
              </div>
              <Progress value={syncProgress} className="h-2" />
            </div>
          )}
        </CardContent>
      </Card>

      {/* Cached Data */}
      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Download className="h-5 w-5" />
            Données en cache
          </CardTitle>
          <CardDescription>
            Données disponibles hors ligne
          </CardDescription>
        </CardHeader>
        <CardContent>
          {cachedData ? (
            <div className="space-y-4">
              <div className="grid grid-cols-3 gap-4 text-center">
                <div>
                  <div className="text-2xl font-bold text-primary">
                    {cachedData.announcements?.length || 0}
                  </div>
                  <div className="text-sm text-muted-foreground">Annonces</div>
                </div>
                
                <div>
                  <div className="text-2xl font-bold text-primary">
                    {cachedData.categories?.length || 0}
                  </div>
                  <div className="text-sm text-muted-foreground">Catégories</div>
                </div>
                
                <div>
                  <div className="text-2xl font-bold text-primary">
                    {cachedData.favorites?.length || 0}
                  </div>
                  <div className="text-sm text-muted-foreground">Favoris</div>
                </div>
              </div>

              {cachedData.lastSync && (
                <div className="text-sm text-muted-foreground text-center">
                  Dernière synchronisation : {new Date(cachedData.lastSync).toLocaleString('fr-FR')}
                </div>
              )}

              <Button 
                variant="outline" 
                onClick={clearCache}
                className="w-full"
              >
                Vider le cache
              </Button>
            </div>
          ) : (
            <div className="text-center py-6">
              <p className="text-muted-foreground mb-4">
                Aucune donnée en cache
              </p>
              <Button onClick={() => syncData()} disabled={!isOnline || isSyncing}>
                <Download className="h-4 w-4 mr-2" />
                Télécharger les données
              </Button>
            </div>
          )}
        </CardContent>
      </Card>

      {/* Storage Usage */}
      {storageUsage && (
        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <HardDrive className="h-5 w-5" />
              Utilisation du stockage
            </CardTitle>
            <CardDescription>
              Espace utilisé par l'application
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="space-y-3">
              <div className="flex items-center justify-between">
                <span className="text-sm">Espace utilisé</span>
                <span className="text-sm font-medium">
                  {formatBytes(storageUsage.used)} / {formatBytes(storageUsage.total)}
                </span>
              </div>
              
              <Progress value={getStoragePercentage()} className="h-2" />
              
              <div className="text-xs text-muted-foreground">
                {getStoragePercentage().toFixed(1)}% de l'espace disponible utilisé
              </div>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Offline Features */}
      <Card>
        <CardHeader>
          <CardTitle>Fonctionnalités hors ligne</CardTitle>
          <CardDescription>
            Ce qui reste disponible sans connexion Internet
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="grid gap-3">
            <div className="flex items-center gap-3 p-3 rounded-lg bg-muted/50">
              <div className="w-2 h-2 bg-green-500 rounded-full"></div>
              <span className="text-sm">Consultation des annonces en cache</span>
            </div>
            
            <div className="flex items-center gap-3 p-3 rounded-lg bg-muted/50">
              <div className="w-2 h-2 bg-green-500 rounded-full"></div>
              <span className="text-sm">Navigation dans les catégories</span>
            </div>
            
            <div className="flex items-center gap-3 p-3 rounded-lg bg-muted/50">
              <div className="w-2 h-2 bg-green-500 rounded-full"></div>
              <span className="text-sm">Consultation des favoris</span>
            </div>
            
            <div className="flex items-center gap-3 p-3 rounded-lg bg-muted/50">
              <div className="w-2 h-2 bg-yellow-500 rounded-full"></div>
              <span className="text-sm">Recherche limitée (données locales uniquement)</span>
            </div>
            
            <div className="flex items-center gap-3 p-3 rounded-lg bg-muted/50">
              <div className="w-2 h-2 bg-red-500 rounded-full"></div>
              <span className="text-sm">Création d'annonces (nécessite une connexion)</span>
            </div>
            
            <div className="flex items-center gap-3 p-3 rounded-lg bg-muted/50">
              <div className="w-2 h-2 bg-red-500 rounded-full"></div>
              <span className="text-sm">Messagerie (nécessite une connexion)</span>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
};
