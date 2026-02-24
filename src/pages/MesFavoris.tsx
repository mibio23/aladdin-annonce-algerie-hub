
import { useState, useEffect } from 'react';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Heart, Search, Eye, MessageCircle, Share2, Trash2, Loader2 } from 'lucide-react';
import { logger } from '@/utils/silentLogger';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { useToast } from '@/hooks/use-toast';
import { useNavigate } from 'react-router-dom';

type Favorite = {
  id: string; // favorite id
  announcement: {
    id: string;
    title: string;
    price: number;
    category_id: string;
    wilaya: string;
    location: string | null;
    is_urgent: boolean;
    is_pro?: boolean; // inferred or added later
    created_at: string;
    images: string[] | null;
    image_url: string | null;
    image_urls: string[] | null;
    currency: string;
  };
};

const MesFavoris = () => {
  const { t } = useSafeI18nWithRouter();
  const [searchQuery, setSearchQuery] = useState('');
  const [favorites, setFavorites] = useState<Favorite[]>([]);
  const [loading, setLoading] = useState(true);
  const { user } = useAuth();
  const { toast } = useToast();
  const navigate = useNavigate();

  useEffect(() => {
    const fetchFavorites = async () => {
      if (!user) {
        setLoading(false);
        return;
      }

      try {
        const { data, error } = await supabase
          .from('announcement_favorites')
          .select(`
            id,
            announcement:announcements (
              id,
              title,
              price,
              category_id,
              wilaya,
              location,
              is_urgent,
              created_at,
              images,
              image_url,
              image_urls,
              currency
            )
          `)
          .eq('user_id', user.id)
          .order('created_at', { ascending: false });

        if (error) throw error;

        // Filter out favorites where announcement might be null (deleted)
        const validFavorites = (data || []).filter(f => f.announcement) as any[];
        setFavorites(validFavorites);
      } catch (error) {
        logger.error('Error fetching favorites:', error);
        toast({
          title: "Erreur",
          description: "Impossible de charger vos favoris",
          variant: "destructive"
        });
      } finally {
        setLoading(false);
      }
    };

    fetchFavorites();
  }, [user, toast]);

  const filteredFavorites = favorites.filter(fav =>
    fav.announcement.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
    fav.announcement.wilaya?.toLowerCase().includes(searchQuery.toLowerCase()) ||
    fav.announcement.location?.toLowerCase().includes(searchQuery.toLowerCase())
  );

  const handleRemoveFavorite = async (id: string) => {
    try {
      const { error } = await supabase
        .from('announcement_favorites')
        .delete()
        .eq('id', id);

      if (error) throw error;

      setFavorites(prev => prev.filter(f => f.id !== id));
      toast({
        title: "Succès",
        description: "Favori supprimé"
      });
    } catch (error) {
      logger.error('Error removing favorite:', error);
      toast({
        title: "Erreur",
        description: "Impossible de supprimer le favori",
        variant: "destructive"
      });
    }
  };

  const FavoriteCard = ({ favorite }: { favorite: Favorite }) => {
    const ann = favorite.announcement;
    const imageUrl = ann.images && ann.images.length > 0 ? ann.images[0] : '/placeholder.png';
    const location = ann.wilaya || ann.location || t('mesFavoris.locationNotSpecified');

    return (
    <Card className="hover:shadow-md transition-shadow">
      <CardContent className="p-4">
        <div className="flex gap-4">
          <div className="relative">
            <img
              src={imageUrl}
              alt={ann.title}
              className="w-32 h-32 object-cover rounded-lg"
            />
            {ann.is_urgent && (
              <Badge className="absolute top-2 left-2 bg-red-500 text-white text-xs">
                {t('mesFavoris.urgent')}
              </Badge>
            )}
            {/* isPro check can be added if available in data */}
          </div>
          <div className="flex-1">
            <div className="flex items-start justify-between mb-2">
              <h3 className="font-semibold text-lg line-clamp-2">{ann.title}</h3>
              <Button
                variant="ghost"
                size="sm"
                onClick={() => handleRemoveFavorite(favorite.id)}
                className="text-red-500 hover:text-red-700"
              >
                <Trash2 className="h-4 w-4" />
              </Button>
            </div>
            <p className="text-2xl font-bold text-primary mb-2">
              {ann.price ? `${ann.price.toLocaleString()} ${ann.currency || 'DA'}` : t('mesFavoris.priceNotSpecified')}
            </p>
            <div className="flex items-center gap-2 mb-3">
              <Badge variant="outline">{ann.category_id}</Badge>
              <span className="text-sm text-muted-foreground">{location}</span>
            </div>
            <div className="flex items-center justify-between">
              <span className="text-sm text-gray-500">
                {t('mesFavoris.addedOn')} {new Date(ann.created_at).toLocaleDateString()}
              </span>
              <div className="flex gap-2">
                <Button variant="outline" size="sm" onClick={() => navigate(`/announcement/${ann.id}`)}>
                  <Eye className="h-4 w-4 mr-1" />
                  {t('mesFavoris.view')}
                </Button>
                <Button variant="outline" size="sm" onClick={() => navigate(`/announcement/${ann.id}`)}>
                  <MessageCircle className="h-4 w-4 mr-1" />
                  {t('mesFavoris.contact')}
                </Button>
                <Button variant="outline" size="sm">
                  <Share2 className="h-4 w-4" />
                </Button>
              </div>
            </div>
          </div>
        </div>
      </CardContent>
    </Card>
    );
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
                <Heart className="h-8 w-8 text-red-500" />
                <div>
                  <CardTitle className="text-2xl">{t('mesFavoris.title')}</CardTitle>
                  <CardDescription>{t('mesFavoris.subtitle')}</CardDescription>
                </div>
              </div>
            </CardHeader>
            <CardContent>
              <div className="flex items-center justify-between mb-4">
                <div className="relative flex-1 max-w-md">
                  <Search className="absolute left-3 top-3 h-4 w-4 text-gray-400" />
                  <Input
                    placeholder={t('mesFavoris.searchPlaceholder')}
                    value={searchQuery}
                    onChange={(event) => setSearchQuery(event.target.value)}
                    className="pl-10"
                  />
                </div>
                <div className="text-sm text-gray-600">
                  {filteredFavorites.length} {t('mesFavoris.results')}
                </div>
              </div>
            </CardContent>
          </Card>

          <div className="space-y-4">
            {filteredFavorites.length > 0 ? (
              filteredFavorites.map(favorite => (
                <FavoriteCard key={favorite.id} favorite={favorite} />
              ))
            ) : (
              <div className="text-center py-16">
                <Heart className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                <h3 className="text-xl font-semibold mb-2">{t('mesFavoris.noFavorites')}</h3>
                <p className="text-gray-600 mb-6 max-w-md mx-auto">
                  {t('mesFavoris.noFavoritesDesc')}
                </p>
                <Button>
                  {t('mesFavoris.browseAds')}
                </Button>
              </div>
            )}
          </div>

          {filteredFavorites.length > 0 && (
            <div className="mt-8 p-4 bg-blue-50 dark:bg-blue-900/20 rounded-lg">
              <div className="flex items-center gap-3">
                <Heart className="h-5 w-5 text-blue-600" />
                <div>
                  <h4 className="font-medium text-blue-900 dark:text-blue-100">
                    {t('mesFavoris.tip')}
                  </h4>
                  <p className="text-sm text-blue-700 dark:text-blue-200">
                    {t('mesFavoris.tipDesc')}
                  </p>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
};

export default MesFavoris;
