import { useState, useEffect } from 'react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Badge } from '@/components/ui/badge';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Package, Plus, Search, Eye, Trash2, MoreHorizontal, Star, Zap, Loader2 } from 'lucide-react';
import { DropdownMenu, DropdownMenuContent, DropdownMenuItem, DropdownMenuTrigger } from '@/components/ui/dropdown-menu';
import PromoteAnnouncement from '@/components/announcements/PromoteAnnouncement';
import { useAnnouncements, Announcement } from '@/hooks/useAnnouncements';
import { useAuth } from '@/contexts/useAuth';
import { Navigate, Link } from 'react-router-dom';

const MesAnnonces = () => {
  const { t } = useSafeI18nWithRouter();
  const { user, loading: authLoading } = useAuth();
  const { userAnnouncements, fetchMyAnnouncements, loading: announcementsLoading, deleteAnnouncement } = useAnnouncements();
  const [searchQuery, setSearchQuery] = useState('');

  useEffect(() => {
    if (user) {
      fetchMyAnnouncements();
    }
  }, [user, fetchMyAnnouncements]);

  const handleDelete = async (id: string) => {
    if (window.confirm(t('common.confirmDelete') || "Êtes-vous sûr de vouloir supprimer cette annonce ?")) {
      const success = await deleteAnnouncement(id);
      if (success) {
        fetchMyAnnouncements();
      }
    }
  };

  const getStatusBadge = (isActive: boolean) => {
    if (isActive) {
      return <Badge variant="default">{t('mesAnnonces.active')}</Badge>;
    } else {
      return <Badge variant="secondary">{t('mesAnnonces.pending')}</Badge>;
    }
  };

  const filteredAds = userAnnouncements.filter(ad =>
    ad.title.toLowerCase().includes(searchQuery.toLowerCase()) ||
    (ad.categories?.name || '').toLowerCase().includes(searchQuery.toLowerCase())
  );

  const activeAds = filteredAds.filter(ad => ad.is_active);

  if (authLoading || announcementsLoading) {
     return (
       <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
         <Loader2 className="h-8 w-8 animate-spin text-primary" />
       </div>
     );
  }

  if (!user) {
    return <Navigate to="/" state={{ openAuth: 'login' }} replace />;
  }

  const AdCard = ({ ad }: { ad: Announcement }) => (
    <Card className="hover:shadow-md transition-shadow">
      <CardContent className="p-4">
        <div className="flex gap-4">
          <img
            src={ad.images?.[0] || '/placeholder.png'}
            alt={ad.title}
            className="w-24 h-24 object-cover rounded-lg bg-gray-100"
          />
          <div className="flex-1">
            <div className="flex items-start justify-between mb-2">
              <h3 className="font-semibold text-lg">{ad.title}</h3>
              <DropdownMenu>
                <DropdownMenuTrigger asChild>
                  <Button variant="ghost" size="sm">
                    <MoreHorizontal className="h-4 w-4" />
                  </Button>
                </DropdownMenuTrigger>
                <DropdownMenuContent align="end">
                  <DropdownMenuItem asChild>
                    <Link to={`/annonce/${ad.id}`} className="flex items-center cursor-pointer">
                        <Eye className="h-4 w-4 mr-2" />
                        {t('mesAnnonces.view')}
                    </Link>
                  </DropdownMenuItem>
                  <DropdownMenuItem className="text-red-600" onClick={() => handleDelete(ad.id)}>
                    <Trash2 className="h-4 w-4 mr-2" />
                    {t('mesAnnonces.delete')}
                  </DropdownMenuItem>
                </DropdownMenuContent>
              </DropdownMenu>
            </div>
            <p className="text-2xl font-bold text-primary mb-2">{ad.price} {ad.currency}</p>
            <div className="flex items-center gap-2 mb-2">
              {getStatusBadge(ad.is_active)}
              <span className="text-sm text-gray-600">
                {ad.categories?.name || t('common.uncategorized')}
              </span>
              {ad.is_featured && (
                <Badge variant="default" className="bg-yellow-500">
                  <Star className="w-3 h-3 mr-1" />
                  À la Une
                </Badge>
              )}
              {ad.is_urgent && (
                <Badge variant="destructive">
                  <Zap className="w-3 h-3 mr-1" />
                  Urgent
                </Badge>
              )}
            </div>
            <div className="flex items-center justify-between text-sm text-gray-600 mb-3">
              <span>{t('mesAnnonces.views')}: {ad.views_count}</span>
              <span>{t('mesAnnonces.publishedOn')} {new Date(ad.created_at).toLocaleDateString()}</span>
            </div>
            
            {/* Promotion buttons for active ads */}
            {ad.is_active && (
              <div className="mt-3 pt-3 border-t">
                <PromoteAnnouncement 
                  announcementId={ad.id}
                  currentStatus={{
                    isFeatured: ad.is_featured,
                    isUrgent: ad.is_urgent
                  }}
                />
              </div>
            )}
          </div>
        </div>
      </CardContent>
    </Card>
  );

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 py-12">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto">
          <Card className="mb-6">
            <CardHeader>
              <div className="flex items-center justify-between">
                <div>
                  <CardTitle className="text-2xl">{t('mesAnnonces.title')}</CardTitle>
                  <CardDescription>{t('mesAnnonces.subtitle')}</CardDescription>
                </div>
                <Button asChild>
                  <Link to="/deposer-annonce">
                    <Plus className="h-4 w-4 mr-2" />
                    {t('mesAnnonces.newAd')}
                  </Link>
                </Button>
              </div>
            </CardHeader>
            <CardContent>
              <div className="relative">
                <Search className="absolute left-3 top-3 h-4 w-4 text-gray-400" />
                <Input
                  placeholder={t('mesAnnonces.searchPlaceholder')}
                  value={searchQuery}
                  onChange={(event) => setSearchQuery(event.target.value)}
                  className="pl-10"
                />
              </div>
            </CardContent>
          </Card>

          <Tabs defaultValue="all" className="w-full">
            <TabsList className="grid w-full grid-cols-2">
              <TabsTrigger value="all">
                {t('mesAnnonces.all')} ({filteredAds.length})
              </TabsTrigger>
              <TabsTrigger value="active">
                {t('mesAnnonces.active')} ({activeAds.length})
              </TabsTrigger>
            </TabsList>

            <TabsContent value="all" className="space-y-4">
              {filteredAds.length > 0 ? (
                filteredAds.map(ad => <AdCard key={ad.id} ad={ad} />)
              ) : (
                <div className="text-center py-12">
                  <Package className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                  <h3 className="text-lg font-semibold mb-2">{t('mesAnnonces.noAds')}</h3>
                  <p className="text-gray-600 mb-4">{t('mesAnnonces.startSelling')}</p>
                  <Button asChild>
                    <Link to="/deposer-annonce">
                      <Plus className="h-4 w-4 mr-2" />
                      {t('mesAnnonces.postFirstAd')}
                    </Link>
                  </Button>
                </div>
              )}
            </TabsContent>

            <TabsContent value="active" className="space-y-4">
              {activeAds.length > 0 ? (
                activeAds.map(ad => <AdCard key={ad.id} ad={ad} />)
              ) : (
                <div className="text-center py-12">
                  <Package className="h-16 w-16 mx-auto mb-4 text-gray-400" />
                  <h3 className="text-lg font-semibold mb-2">{t('mesAnnonces.noActiveAds')}</h3>
                  <p className="text-gray-600">{t('mesAnnonces.noActiveAdsDesc')}</p>
                </div>
              )}
            </TabsContent>
          </Tabs>
        </div>
      </div>
    </div>
  );
};

export default MesAnnonces;
