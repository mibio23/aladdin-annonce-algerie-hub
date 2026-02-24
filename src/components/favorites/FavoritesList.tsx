
import React, { useEffect, useState } from 'react';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Heart, Loader2, Share2, Trash2, Store, Wrench, MapPin } from 'lucide-react';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { useToast } from '@/hooks/use-toast';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { logger } from '@/utils/silentLogger';
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import { Shop } from '@/types/shop';
import ShopCard from '@/components/home/ShopCard';

// Fonction de mapping entre DB (snake_case) et interface Shop (camelCase)
const mapDbToShop = (db: any): Shop => ({
  id: db.id,
  name: db.name,
  description: db.description || '',
  wilaya: db.wilaya,
  commune: db.commune,
  phoneNumbers: db.phone_numbers || [],
  logoUrl: db.logo_url || '',
  bannerUrl: db.banner_url,
  productImageUrls: db.product_image_urls || [],
  isOnline: db.is_online ?? false,
  isPhysical: db.is_physical,
  isVerified: db.is_verified,
  rating: db.rating,
  reviewCount: db.review_count,
  followerCount: db.followers_count,
  mainCategory: db.main_category,
});

type FavoriteRow = {
  id: string;
  created_at: string;
  announcement: {
    id: string;
    title: string;
    price: number | null;
    currency: string | null;
    location: string | null;
    wilaya: string | null;
    images: string[] | null;
    image_urls: string[] | null;
    is_urgent: boolean;
    created_at: string;
    category_id: string | null;
    categories?: { name: string; slug: string } | null;
  } | null;
};

const FavoritesList: React.FC = () => {
  const { t } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { toast } = useToast();
  const { navigateWithLanguage, getLocalizedPath } = useLanguageNavigation();

  const [loading, setLoading] = useState(true);
  const [favorites, setFavorites] = useState<FavoriteRow[]>([]);
  const [shopFavorites, setShopFavorites] = useState<Shop[]>([]);
  const [proFavorites, setProFavorites] = useState<any[]>([]);
  const [loadingShops, setLoadingShops] = useState(false);
  const [loadingPros, setLoadingPros] = useState(false);

  // Fetch Announcement Favorites
  useEffect(() => {
    const fetchFavorites = async () => {
      if (!user) {
        setFavorites([]);
        setLoading(false);
        return;
      }

      setLoading(true);
      try {
        const { data, error } = await supabase
          .from('announcement_favorites')
          .select(
            `
            id,
            created_at,
            announcement:announcements (
              id,
              title,
              price,
              currency,
              location,
              wilaya,
              images,
              image_urls,
              is_urgent,
              created_at,
              category_id,
              categories:categories!fk_announcements_category (name, slug)
            )
          `,
          )
          .eq('user_id', user.id)
          .order('created_at', { ascending: false });

        if (error) throw error;

        const valid = (data || []).filter((f: any) => f.announcement) as unknown as FavoriteRow[];
        setFavorites(valid);
      } catch (err) {
        logger.error('Erreur lors du chargement des favoris:', err);
        toast({
          title: t('common.error'),
          description: t('mesFavoris.loadError'),
          variant: 'destructive',
        });
        setFavorites([]);
      } finally {
        setLoading(false);
      }
    };

    fetchFavorites();
  }, [toast, user, t]);

  // Fetch Shop Favorites from LocalStorage and DB
  useEffect(() => {
    const fetchShopFavorites = async () => {
      setLoadingShops(true);
      let shopsData: Shop[] = [];
      const localIds = JSON.parse(localStorage.getItem('favoriteShops') || '[]');

      // 1. Essayer de récupérer depuis la DB si connecté
      if (user) {
        try {
          const { data, error } = await supabase
            .from('shop_favorites')
            .select(`
              shop_id,
              shops (*)
            `)
            .eq('user_id', user.id);

          if (!error && data) {
            // Extraire les boutiques de la relation
            const dbShops = data.map((item: any) => item.shops).filter(Boolean);
            
            // Fusionner avec le local si nécessaire (éviter doublons)
            const dbIds = dbShops.map(s => s.id);
            const missingInDb = localIds.filter((id: string) => !dbIds.includes(id));
            
            shopsData = [...dbShops];

            // Si on a des favoris locaux qui ne sont pas en DB, on pourrait vouloir les ajouter en DB
            // ou juste les afficher. Pour l'instant, on les ajoute à la liste affichée.
            if (missingInDb.length > 0) {
               const { data: localShopsData } = await supabase
                 .from('shops')
                 .select('*')
                 .in('id', missingInDb);
               
               if (localShopsData) {
                 shopsData = [...shopsData, ...localShopsData.map(mapDbToShop)];
               }
            }
          }
        } catch (err) {
          console.error('Error fetching shop favorites from DB:', err);
          // Fallback to local only handled below if shopsData is empty
        }
      }

      // 2. Si pas de données DB (ou pas connecté), utiliser uniquement localStorage
      if (shopsData.length === 0 && localIds.length > 0) {
        try {
          const { data, error } = await supabase
            .from('shops')
            .select('*')
            .in('id', localIds);

          if (!error && data) {
            shopsData = data.map(mapDbToShop);
          }
        } catch (err) {
          console.error('Error fetching shop favorites from local IDs:', err);
        }
      }

      // Déduplication finale au cas où
      const uniqueShops = Array.from(new Map(shopsData.map(item => [item.id, item])).values());
      setShopFavorites(uniqueShops);
      setLoadingShops(false);
    };

    fetchShopFavorites();
  }, [user]);

  // Fetch Pro Favorites
  useEffect(() => {
    const fetchProFavorites = async () => {
      if (!user) {
        setProFavorites([]);
        return;
      }
      setLoadingPros(true);
      try {
        const { data, error } = await supabase
          .from('pro_favorites')
          .select(`
            id,
            created_at,
            professional_job_offers (*)
          `)
          .eq('user_id', user.id);

        if (error) throw error;
        
        const valid = (data || [])
          .filter((f: any) => f.professional_job_offers)
          .map((f: any) => ({
            ...f.professional_job_offers,
            favorite_id: f.id,
            favorite_created_at: f.created_at
          }));
        
        setProFavorites(valid);
      } catch (err) {
        console.error('Error fetching pro favorites:', err);
      } finally {
        setLoadingPros(false);
      }
    };

    fetchProFavorites();
  }, [user]);

  const handleRemoveFavorite = async (favoriteId: string) => {
    if (!user) {
      toast({ title: t('auth.loginRequired'), description: t('auth.loginRequiredDesc') });
      return;
    }

    try {
      const { error } = await supabase.from('announcement_favorites').delete().eq('id', favoriteId).eq('user_id', user.id);
      if (error) throw error;

      setFavorites((prev) => prev.filter((f) => f.id !== favoriteId));
      toast({ title: t('common.success'), description: t('mesFavoris.removeSuccess') });
    } catch (err) {
      logger.error('Erreur lors de la suppression du favori:', err);
      toast({
        title: t('common.error'),
        description: t('mesFavoris.removeError'),
        variant: 'destructive',
      });
    }
  };

  const handleRemoveProFavorite = async (favoriteId: string) => {
    if (!user) {
      toast({ title: t('auth.loginRequired'), description: t('auth.loginRequiredDesc') });
      return;
    }

    try {
      const { error } = await supabase.from('pro_favorites').delete().eq('id', favoriteId).eq('user_id', user.id);
      if (error) throw error;

      setProFavorites((prev) => prev.filter((f) => f.favorite_id !== favoriteId));
      toast({ title: t('common.success'), description: 'Favori professionnel supprimé avec succès' });
    } catch (err) {
      logger.error('Erreur lors de la suppression du favori professionnel:', err);
      toast({
        title: t('common.error'),
        description: 'Erreur lors de la suppression du favori professionnel',
        variant: 'destructive',
      });
    }
  };

  const handleShare = async (announcementId: string) => {
    const announcementUrl = `${window.location.origin}${getLocalizedPath(`/annonce/${announcementId}`)}`;
    await navigator.clipboard.writeText(announcementUrl);
    toast({ title: t('createAd.share.copied'), description: t('createAd.share.copiedDesc') });
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
        <Loader2 className="h-8 w-8 animate-spin text-primary" />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 py-12">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto">
          <Card className="mb-6">
            <CardHeader>
              <div className="flex items-center gap-3">
                <Heart className="h-8 w-8 text-rose-600" />
                <div>
                  <CardTitle className="text-2xl">{t('mesFavoris.title')}</CardTitle>
                  <CardDescription>{t('mesFavoris.subtitle')}</CardDescription>
                </div>
              </div>
            </CardHeader>
          </Card>

          <Tabs defaultValue="announcements" className="w-full">
            <TabsList className="grid w-full grid-cols-3 mb-8 h-auto p-1 bg-slate-100 dark:bg-slate-800 rounded-xl">
              <TabsTrigger 
                value="announcements" 
                className="py-3 data-[state=active]:bg-white data-[state=active]:text-primary data-[state=active]:shadow-sm rounded-lg transition-all"
              >
                <div className="flex items-center gap-2">
                  <Heart size={18} />
                  <span>Mes Favoris Annonces</span>
                </div>
              </TabsTrigger>
              <TabsTrigger 
                value="shops" 
                className="py-3 data-[state=active]:bg-white data-[state=active]:text-primary data-[state=active]:shadow-sm rounded-lg transition-all"
              >
                <div className="flex items-center gap-2">
                  <Store size={18} />
                  <span>Mes favoris Boutique</span>
                </div>
              </TabsTrigger>
              <TabsTrigger 
                value="pros" 
                className="py-3 data-[state=active]:bg-white data-[state=active]:text-primary data-[state=active]:shadow-sm rounded-lg transition-all"
              >
                <div className="flex items-center gap-2">
                  <Wrench size={18} />
                  <span>Mes favoris Métiers & Réparateurs</span>
                </div>
              </TabsTrigger>
            </TabsList>

            <TabsContent value="announcements">
              {!user ? (
                <Card>
                  <CardContent className="py-16 text-center">
                    <Heart className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                    <h3 className="text-xl font-semibold mb-2">{t('auth.loginRequired')}</h3>
                    <p className="text-gray-600 mb-6 max-w-md mx-auto">{t('auth.loginRequiredDesc')}</p>
                    <Button onClick={() => navigateWithLanguage('/auth')}>{t('auth.signIn')}</Button>
                  </CardContent>
                </Card>
              ) : favorites.length > 0 ? (
                <div className="space-y-4">
                  {favorites.map((favorite) => {
                    const ann = favorite.announcement;
                    if (!ann) return null;

                    const imageUrl =
                      (ann.images && ann.images.length > 0 ? ann.images[0] : null) ??
                      (ann.image_urls && ann.image_urls.length > 0 ? ann.image_urls[0] : null) ??
                      '/placeholder.png';

                    const categoryLabel =
                      ann.categories?.name ||
                      (ann.category_id && t(`categories.${ann.category_id}`) !== `categories.${ann.category_id}`
                        ? t(`categories.${ann.category_id}`)
                        : ann.category_id) ||
                      '';

                    const locationLabel = ann.wilaya || ann.location || '';

                    return (
                      <Card key={favorite.id} className="hover:shadow-md transition-shadow group">
                        <CardContent className="p-4">
                          <div className="flex gap-4">
                            <div className="relative">
                              <img src={imageUrl} alt={ann.title} className="w-32 h-32 object-cover rounded-lg group-hover:scale-105 transition-transform duration-300" />
                              {ann.is_urgent ? (
                                <Badge className="absolute top-2 left-2 bg-red-500 text-white text-xs">
                                  {t('mesFavoris.urgent')}
                                </Badge>
                              ) : null}
                            </div>

                            <div className="flex-1">
                              <div className="flex items-start justify-between gap-3 mb-2">
                                <h3 className="font-semibold text-lg line-clamp-2 group-hover:text-primary transition-colors">{ann.title}</h3>
                                <Button
                                  variant="ghost"
                                  size="sm"
                                  onClick={() => handleRemoveFavorite(favorite.id)}
                                  className="text-red-500 hover:text-red-700 bg-red-50 hover:bg-red-100 rounded-full h-8 w-8 p-0"
                                >
                                  <Trash2 className="h-4 w-4" />
                                </Button>
                              </div>

                              <p className="text-2xl font-bold text-primary mb-2">
                                {ann.price != null ? `${ann.price.toLocaleString()} ${ann.currency || 'DZD'}` : t('mesFavoris.priceNotSpecified')}
                              </p>

                              <div className="flex items-center gap-2 mb-3">
                                {categoryLabel ? <Badge variant="outline" className="bg-slate-50">{categoryLabel}</Badge> : null}
                                {locationLabel ? <span className="text-sm text-gray-600 flex items-center gap-1"><Share2 size={12}/> {locationLabel}</span> : null}
                              </div>

                              <div className="flex items-center justify-between gap-4">
                                <span className="text-sm text-gray-500">
                                  {t('mesFavoris.addedOn')} {new Date(favorite.created_at).toLocaleDateString()}
                                </span>
                                <div className="flex gap-2">
                                  <Button variant="outline" size="sm" onClick={() => navigateWithLanguage(`/annonce/${ann.id}`)}>
                                    {t('mesFavoris.view')}
                                  </Button>
                                  <Button variant="outline" size="sm" onClick={() => handleShare(ann.id)}>
                                    <Share2 className="h-4 w-4" />
                                  </Button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </CardContent>
                      </Card>
                    );
                  })}
                </div>
              ) : (
                <Card>
                  <CardContent className="py-16 text-center">
                    <Heart className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                    <h3 className="text-xl font-semibold mb-2">{t('mesFavoris.noFavorites')}</h3>
                    <p className="text-gray-600 mb-6 max-w-md mx-auto">{t('mesFavoris.noFavoritesDesc')}</p>
                    <Button onClick={() => navigateWithLanguage('/search')}>{t('mesFavoris.browseAds')}</Button>
                  </CardContent>
                </Card>
              )}
            </TabsContent>

            <TabsContent value="shops">
              {loadingShops ? (
                <div className="flex justify-center py-12">
                  <Loader2 className="h-8 w-8 animate-spin text-primary" />
                </div>
              ) : shopFavorites.length > 0 ? (
                <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                  {shopFavorites.map((shop) => (
                    <div key={shop.id} className="h-[420px]">
                      <ShopCard shop={shop} />
                    </div>
                  ))}
                </div>
              ) : (
                <Card>
                  <CardContent className="py-16 text-center">
                    <Store className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                    <h3 className="text-xl font-semibold mb-2">Aucune boutique favorite</h3>
                    <p className="text-gray-600 mb-6 max-w-md mx-auto">Vous n'avez pas encore ajouté de boutiques à vos favoris.</p>
                    <Button onClick={() => navigateWithLanguage('/boutiques')}>Découvrir les boutiques</Button>
                  </CardContent>
                </Card>
              )}
            </TabsContent>

            <TabsContent value="pros">
              {loadingPros ? (
                <div className="flex justify-center py-12">
                  <Loader2 className="h-8 w-8 animate-spin text-primary" />
                </div>
              ) : proFavorites.length > 0 ? (
                <div className="space-y-4">
                  {proFavorites.map((pro) => {
                    const imageUrl = pro.images && pro.images.length > 0 ? pro.images[0] : '/placeholder.png';
                    
                    return (
                      <Card key={pro.favorite_id} className="hover:shadow-md transition-shadow group">
                        <CardContent className="p-4">
                          <div className="flex gap-4">
                            <div className="relative">
                              <img src={imageUrl} alt={pro.job_title} className="w-32 h-32 object-cover rounded-lg group-hover:scale-105 transition-transform duration-300" />
                            </div>

                            <div className="flex-1">
                              <div className="flex items-start justify-between gap-3 mb-2">
                                <h3 className="font-semibold text-lg line-clamp-2 group-hover:text-primary transition-colors">{pro.job_title}</h3>
                                <Button
                                  variant="ghost"
                                  size="sm"
                                  onClick={() => handleRemoveProFavorite(pro.favorite_id)}
                                  className="text-red-500 hover:text-red-700 bg-red-50 hover:bg-red-100 rounded-full h-8 w-8 p-0"
                                >
                                  <Trash2 className="h-4 w-4" />
                                </Button>
                              </div>

                              <p className="text-sm text-gray-600 line-clamp-2 mb-2">{pro.description}</p>

                              <div className="flex items-center gap-2 mb-3">
                                {pro.wilaya ? <span className="text-sm text-gray-600 flex items-center gap-1"><MapPin size={12}/> {pro.wilaya} {pro.commune ? `- ${pro.commune}` : ''}</span> : null}
                              </div>

                              <div className="flex items-center justify-between gap-4">
                                <span className="text-sm text-gray-500">
                                  {t('mesFavoris.addedOn')} {new Date(pro.favorite_created_at).toLocaleDateString()}
                                </span>
                                <div className="flex gap-2">
                                  <Button variant="outline" size="sm" onClick={() => navigateWithLanguage(`/offre-metier/${pro.id}`)}>
                                    {t('mesFavoris.view')}
                                  </Button>
                                </div>
                              </div>
                            </div>
                          </div>
                        </CardContent>
                      </Card>
                    );
                  })}
                </div>
              ) : (
                <Card>
                  <CardContent className="py-16 text-center">
                    <Wrench className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                    <h3 className="text-xl font-semibold mb-2">Aucun professionnel favori</h3>
                    <p className="text-gray-600 mb-6 max-w-md mx-auto">Vous n'avez pas encore ajouté de professionnels à vos favoris.</p>
                    <Button onClick={() => navigateWithLanguage('/metiers-reparateurs')}>Trouver un professionnel</Button>
                  </CardContent>
                </Card>
              )}
            </TabsContent>
          </Tabs>
        </div>
      </div>
    </div>
  );
};

export default FavoritesList;
