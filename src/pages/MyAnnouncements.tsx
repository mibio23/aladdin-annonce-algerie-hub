import { useState, useEffect, useCallback } from 'react';
import { useNavigate } from 'react-router-dom';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Input } from '@/components/ui/input';
import { 
  DropdownMenu, 
  DropdownMenuContent, 
  DropdownMenuItem, 
  DropdownMenuTrigger 
} from '@/components/ui/dropdown-menu';
import { 
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
} from '@/components/ui/alert-dialog';
import { 
  Package, 
  MoreVertical, 
  Edit, 
  Trash2, 
  Eye, 
  Star, 
  Zap, 
  Search,
  Plus,
  Calendar,
  MapPin
} from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { PaymentSection } from '@/components/payments/PaymentComponents';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { logger } from '@/utils/silentLogger';

interface Announcement {
  id: string;
  title: string;
  description: string;
  price: number;
  currency: string;
  location: string;
  wilaya: string;
  condition: string;
  is_featured: boolean;
  is_urgent: boolean;
  is_active: boolean;
  views_count: number;
  images: string[];
  created_at: string;
  expires_at: string | null;
  category_id: string;
  type?: string;
  premium_end_at?: string | null;
}

const MyAnnouncementsPage: React.FC = () => {
  const navigate = useNavigate();
  const { toast } = useToast();
  const { user } = useAuth();
  const { t } = useSafeI18nWithRouter();
  const { navigateWithLanguage } = useLanguageNavigation();

  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState('');
  const [deleteDialogOpen, setDeleteDialogOpen] = useState(false);
  const [announcementToDelete, setAnnouncementToDelete] = useState<string | null>(null);
  const [selectedForPromotion, setSelectedForPromotion] = useState<string | null>(null);

  const fetchAnnouncements = useCallback(async () => {
    if (!user) return;
    try {
      setLoading(true);
      const { data, error } = await supabase
        .from('announcements')
        .select('*')
        .eq('user_id', user.id)
        .neq('status', 'deleted')
        .order('created_at', { ascending: false });

      if (error) throw error;

      const transformedData: Announcement[] = (data || []).map(item => ({
        id: item.id,
        title: item.title || '',
        description: item.description || '',
        price: item.price || 0,
        currency: item.currency || 'DZD',
        category_id: item.category_id || 'general',
        condition: item.condition || 'good',
        images: item.image_urls || (item.image_url ? [item.image_url] : []),
        location: item.commune || item.location || '',
        wilaya: item.wilaya || '',
        is_active: (item as { is_active?: boolean }).is_active ?? (item.status === 'active'),
        is_featured: item.type === 'featured' || item.type === 'premium',
        is_urgent: item.is_urgent || false,
        views_count: item.view_count || 0,
        created_at: item.created_at,
        expires_at: item.expires_at || null,
        type: item.type || null,
        premium_end_at: item.premium_end_at || null,
      }));

      setAnnouncements(transformedData);
    } catch (error) {
      logger.error('Error fetching announcements:', error);
      toast({
        title: t('common.error'),
        description: t('mesAnnonces.errorFetch'),
        variant: 'destructive'
      });
    } finally {
      setLoading(false);
    }
  }, [user, t, toast]);

  useEffect(() => {
    if (!user) {
      navigate('/connexion');
      return;
    }
    fetchAnnouncements();
  }, [user, navigate, fetchAnnouncements]);


  const handleToggleStatus = async (id: string, currentStatus: boolean) => {
    if (!user) return;
    try {
      const newStatus = !currentStatus;
      const statusString = newStatus ? 'active' : 'expired';
      
      const { error } = await supabase
        .from('announcements')
        .update({ 
          status: statusString
        })
        .eq('id', id)
        .eq('user_id', user.id);

      if (error) {
        console.error('Error updating status:', error);
        throw error;
      }

      toast({
        title: t('common.success'),
        description: currentStatus ? t('mesAnnonces.deactivatedMsg') : t('mesAnnonces.activatedMsg'),
      });

      fetchAnnouncements();
    } catch (error) {
      console.error('Error toggling status:', error);
      logger.error('Error toggling status:', error);
      toast({
        title: t('common.error'),
        description: t('mesAnnonces.errorToggle'),
        variant: "destructive"
      });
    }
  };

  const handleDelete = async () => {
    if (!announcementToDelete) return;
    if (!user) return;

    try {
      const { data: existing, error: fetchError } = await supabase
        .from('announcements')
        .select('shop_id')
        .eq('id', announcementToDelete)
        .eq('user_id', user.id)
        .maybeSingle();
      if (fetchError) throw fetchError;

      if (!existing) {
        toast({ title: t('common.error'), description: t('mesAnnonces.errorDelete'), variant: "destructive" });
        return;
      }

      const isShopAnnouncement = !!existing.shop_id;

      const nowIso = new Date().toISOString();
      const { error } = isShopAnnouncement
        ? await supabase.from('announcements').delete().eq('id', announcementToDelete).eq('user_id', user.id)
        : await supabase
            .from('announcements')
            .update({ status: 'deleted', deleted_at: nowIso, updated_at: nowIso })
            .eq('id', announcementToDelete)
            .eq('user_id', user.id);

      if (error) throw error;

      toast({
        title: t('common.success'),
        description: t('mesAnnonces.deleted'),
      });

      setAnnouncements(prev => prev.filter(a => a.id !== announcementToDelete));
      setDeleteDialogOpen(false);
      setAnnouncementToDelete(null);
    } catch (error) {
      logger.error('Error deleting announcement:', error);
      toast({
        title: t('common.error'),
        description: t('mesAnnonces.errorDelete'),
        variant: "destructive"
      });
    }
  };

  const getStatusBadge = (announcement: Announcement) => {
    if (!announcement.is_active) {
      return <Badge variant="secondary">{t('mesAnnonces.deactivated')}</Badge>;
    }
    if (announcement.is_featured) {
      return <Badge className="bg-yellow-500"><Star className="w-3 h-3 mr-1" />{t('mesAnnonces.featured')}</Badge>;
    }
    if (announcement.is_urgent) {
      return <Badge className="bg-red-500"><Zap className="w-3 h-3 mr-1" />{t('mesAnnonces.urgent')}</Badge>;
    }
    return <Badge variant="outline">{t('mesAnnonces.active')}</Badge>;
  };

  const filteredAnnouncements = announcements.filter(announcement =>
    announcement.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
    announcement.description.toLowerCase().includes(searchTerm.toLowerCase())
  );

  if (!user) {
    return null;
  }

  return (
    <div className="min-h-screen bg-background py-8">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto">
          {/* Header */}
          <div className="flex flex-col sm:flex-row justify-between items-start sm:items-center gap-4 mb-8">
            <div>
              <h1 className="text-3xl font-bold">{t('mesAnnonces.title')}</h1>
              <p className="text-muted-foreground">
                {t('mesAnnonces.manage')} {announcements.length} {announcements.length !== 1 ? t('mesAnnonces.ads') : t('mesAnnonces.ad')}
              </p>
            </div>
            <Button onClick={() => navigateWithLanguage('/deposer-annonce')} className="gap-2">
              <Plus className="w-4 h-4" />
              {t('mesAnnonces.newAd')}
            </Button>
          </div>

          {/* Search */}
          <Card className="mb-6">
            <CardContent className="p-4">
              <div className="relative">
                <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-muted-foreground w-4 h-4" />
                <Input
                  placeholder={t('mesAnnonces.searchPlaceholder')}
                  value={searchTerm}
                  onChange={(event) => setSearchTerm(event.target.value)}
                  className="pl-10"
                />
              </div>
            </CardContent>
          </Card>

          {loading ? (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {Array.from({ length: 6 }).map((_, i) => (
                <Card key={i} className="animate-pulse">
                  <div className="h-48 bg-muted"></div>
                  <CardContent className="p-4">
                    <div className="h-4 bg-muted rounded mb-2"></div>
                    <div className="h-3 bg-muted rounded mb-4"></div>
                    <div className="h-6 bg-muted rounded"></div>
                  </CardContent>
                </Card>
              ))}
            </div>
          ) : filteredAnnouncements.length === 0 ? (
            <Card>
              <CardContent className="text-center py-12">
                <Package className="mx-auto h-12 w-12 text-muted-foreground mb-4" />
                <h3 className="text-lg font-semibold mb-2">
                  {searchTerm ? t('mesAnnonces.noResults') : t('mesAnnonces.noAds')}
                </h3>
                <p className="text-muted-foreground mb-4">
                  {searchTerm 
                    ? t('mesAnnonces.tryOtherKeywords')
                    : t('mesAnnonces.noAdsDesc')
                  }
                </p>
                {!searchTerm && (
                  <Button onClick={() => navigateWithLanguage('/deposer-annonce')}>
                    {t('mesAnnonces.createFirstAd')}
                  </Button>
                )}
              </CardContent>
            </Card>
          ) : (
            <div className="grid grid-cols-1 lg:grid-cols-4 gap-6">
              {/* Announcements Grid */}
              <div className="lg:col-span-3">
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                  {filteredAnnouncements.map((announcement) => (
                    <div
                      key={announcement.id}
                      className="group flex flex-col transition-all duration-300 transform hover:scale-[1.02] hover:-translate-y-1 rounded-[24px] overflow-hidden relative h-full bg-slate-50 shadow-[0_10px_30px_-10px_rgba(22,163,74,0.25),0_6px_10px_-2px_rgba(22,163,74,0.15)] border border-[rgba(22,163,74,0.05)] dark:bg-[linear-gradient(145deg,#1e293b,#0f172a)] dark:shadow-[0_0_20px_rgba(255,255,255,0.25)] dark:border-none cursor-pointer"
                    >
                      {/* Image */}
                      <div className="p-2 pb-0">
                        <div className="relative h-48 overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
                          <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
                        {announcement.images && announcement.images.length > 0 ? (
                          <img
                            src={announcement.images[0]}
                            alt={announcement.title}
                            className="w-full h-full object-cover"
                          />
                        ) : (
                          <div className="flex items-center justify-center h-full">
                            <Package className="w-12 h-12 text-muted-foreground" />
                          </div>
                        )}
                        
                        {/* Status Badge */}
                        <div className="absolute top-2 left-2">
                          {getStatusBadge(announcement)}
                        </div>

                        {/* Actions Menu */}
                        <div className="absolute top-2 right-2">
                          <DropdownMenu>
                            <DropdownMenuTrigger asChild>
                              <Button variant="secondary" size="sm" className="h-8 w-8 p-0">
                                <MoreVertical className="h-4 w-4" />
                              </Button>
                            </DropdownMenuTrigger>
                            <DropdownMenuContent align="end">
                              <DropdownMenuItem onSelect={() => navigateWithLanguage(`/annonce/${announcement.id}`)}>
                                <Eye className="w-4 h-4 mr-2" />
                                {t('mesAnnonces.view')}
                              </DropdownMenuItem>
                              <DropdownMenuItem onSelect={(e) => {
                                e.preventDefault();
                                navigateWithLanguage(`/edit-announcement/${announcement.id}`);
                              }}>
                                <Edit className="w-4 h-4 mr-2" />
                                {t('mesAnnonces.edit')}
                              </DropdownMenuItem>
                              <DropdownMenuItem 
                                onSelect={(e) => {
                                  e.preventDefault(); // Prevent menu from closing immediately
                                  handleToggleStatus(announcement.id, announcement.is_active);
                                }}
                              >
                                {announcement.is_active ? t('mesAnnonces.deactivate') : t('mesAnnonces.activate')}
                              </DropdownMenuItem>
                              <DropdownMenuItem 
                                onSelect={(e) => {
                                  e.preventDefault();
                                  setSelectedForPromotion(announcement.id);
                                }}
                                disabled={announcement.is_featured || announcement.is_urgent}
                              >
                                <Star className="w-4 h-4 mr-2" />
                                {t('mesAnnonces.promote')}
                              </DropdownMenuItem>
                              <DropdownMenuItem 
                                onSelect={(e) => {
                                  e.preventDefault();
                                  setAnnouncementToDelete(announcement.id);
                                  setDeleteDialogOpen(true);
                                }}
                                className="text-red-600"
                              >
                                <Trash2 className="w-4 h-4 mr-2" />
                                {t('mesAnnonces.delete')}
                              </DropdownMenuItem>
                            </DropdownMenuContent>
                          </DropdownMenu>
                        </div>
                      </div>
                    </div>
                  </div>

                      {/* Content */}
                      <div className="bg-white border rounded-lg p-4 space-y-3 dark:bg-slate-800 dark:border-slate-700 shadow-sm hover:shadow-md transition-shadow">
                        <h3 className="font-semibold text-lg mb-2 line-clamp-2">
                          {announcement.title}
                        </h3>
                        
                        <p className="text-muted-foreground text-sm mb-3 line-clamp-2">
                          {announcement.description}
                        </p>

                        <div className="flex items-center justify-between mb-3">
                          <span className="text-lg font-bold text-primary">
                            {announcement.price ? `${announcement.price} ${announcement.currency}` : t('mesAnnonces.priceNegotiable')}
                          </span>
                          <div className="flex items-center text-sm text-muted-foreground">
                            <Eye className="w-4 h-4 mr-1" />
                            {announcement.views_count || 0}
                          </div>
                        </div>

                        <div className="flex items-center text-sm text-muted-foreground mb-3">
                          <MapPin className="w-4 h-4 mr-1" />
                          {announcement.location}, {announcement.wilaya}
                        </div>

                        <div className="flex items-center justify-between text-xs text-muted-foreground">
                          <span>
                            {t('mesAnnonces.createdOn')} {new Date(announcement.created_at).toLocaleDateString()}
                          </span>
                          {announcement.expires_at && (
                            <span className="flex items-center">
                              <Calendar className="w-3 h-3 mr-1" />
                              {t('mesAnnonces.expiresOn')} {new Date(announcement.expires_at).toLocaleDateString()}
                            </span>
                          )}
                        </div>
                        {announcement.type === 'premium' && announcement.premium_end_at && (
                          <div className="flex items-center text-xs text-yellow-700 mt-1">
                            <Calendar className="w-3 h-3 mr-1" />
                            {t('mesAnnonces.expiresOn')} {new Date(announcement.premium_end_at).toLocaleDateString()}
                          </div>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              </div>

              {/* Promotion Section */}
              <div className="lg:col-span-1">
                {selectedForPromotion ? (
                  <div className="space-y-4">
                    <PaymentSection announcementId={selectedForPromotion} />
                    <Button 
                      variant="outline" 
                      onClick={() => setSelectedForPromotion(null)}
                      className="w-full"
                    >
                      {t('common.cancel')}
                    </Button>
                  </div>
                ) : (
                  <Card>
                    <CardHeader>
                      <CardTitle className="text-lg">💡 {t('mesAnnonces.tips')}</CardTitle>
                    </CardHeader>
                    <CardContent className="space-y-4">
                      <div className="text-sm space-y-2">
                        <p><strong>🚀 {t('mesAnnonces.boostSales')}:</strong></p>
                        <ul className="space-y-1 text-muted-foreground">
                          <li>• {t('mesAnnonces.tip1')}</li>
                          <li>• {t('mesAnnonces.tip2')}</li>
                          <li>• {t('mesAnnonces.tip3')}</li>
                          <li>• {t('mesAnnonces.tip4')}</li>
                        </ul>
                      </div>
                    </CardContent>
                  </Card>
                )}
              </div>
            </div>
          )}

          {/* Delete Confirmation Dialog */}
          <AlertDialog open={deleteDialogOpen} onOpenChange={setDeleteDialogOpen}>
            <AlertDialogContent>
              <AlertDialogHeader>
                <AlertDialogTitle>{t('mesAnnonces.confirmDelete')}</AlertDialogTitle>
                <AlertDialogDescription>
                  {t('mesAnnonces.confirmDeleteDesc')}
                </AlertDialogDescription>
              </AlertDialogHeader>
              <AlertDialogFooter>
                <AlertDialogCancel>{t('common.cancel')}</AlertDialogCancel>
                <AlertDialogAction onClick={handleDelete} className="bg-red-600 hover:bg-red-700">
                  {t('mesAnnonces.delete')}
                </AlertDialogAction>
              </AlertDialogFooter>
            </AlertDialogContent>
          </AlertDialog>
        </div>
      </div>
    </div>
  );
};

export default MyAnnouncementsPage;
