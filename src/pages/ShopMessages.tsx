import React, { useState, useEffect } from 'react';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useAuth } from '@/contexts/useAuth';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Separator } from '@/components/ui/separator';
import { 
  Store, 
  Clock, 
  User, 
  Mail, 
  Phone,
  Calendar,
  CheckCircle,
  AlertCircle,
  Edit,
  Eye,
  EyeOff
} from 'lucide-react';
import { supabase } from '@/integrations/supabase/client';
import { Database } from '@/integrations/supabase/types';
import { useToast } from '@/hooks/use-toast';
import { formatDistanceToNow } from 'date-fns';
import { fr } from 'date-fns/locale';
import { logger } from '@/utils/silentLogger';

import AuthRequiredBubble from '@/components/auth/AuthRequiredBubble';

type Shop = Database['public']['Tables']['shops']['Row'];
type ShopWithExtras = Shop & {
  category_ids?: string[] | null;
  email?: string | null;
  phone_numbers?: string[] | null;
};

const ShopMessages = () => {
  const { isRTL, t } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { toast } = useToast();
  const [shops, setShops] = useState<ShopWithExtras[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedShop, setSelectedShop] = useState<ShopWithExtras | null>(null);
  const [filter, setFilter] = useState<'all' | 'active' | 'inactive'>('all');

  const fetchShopsCallback = React.useCallback(async () => {
    if (!user) return;
    setLoading(true);
    try {
      const query = supabase
        .from('shops')
        .select('*')
        .eq('user_id', user.id)
        .order('created_at', { ascending: false });

      const { data, error } = await query;

      if (error) throw error;
      const shopsData = ((data as Shop[]) || []) as Shop[];
      const filteredShops =
        filter === 'active'
          ? shopsData.filter((shop) => shop.shop_status === 'active')
          : filter === 'inactive'
            ? shopsData.filter((shop) => shop.shop_status !== 'active')
            : shopsData;

      setShops(filteredShops as ShopWithExtras[]);
    } catch (error) {
      logger.error('Error fetching shops:', error);
      toast({
        title: t('common.error'),
        description: t('shopMessages.loadError'),
        variant: 'destructive',
      });
    } finally {
      setLoading(false);
    }
  }, [user, filter, toast]);

  useEffect(() => {
    if (user) {
      fetchShopsCallback();
    }
  }, [user, filter, fetchShopsCallback]);


  const toggleActiveStatus = async (shopId: string, currentStatus: boolean) => {
    try {
      const newStatus = currentStatus ? 'inactive' : 'active';
      const { error } = await supabase
        .from('shops')
        .update({ shop_status: newStatus })
        .eq('id', shopId);

      if (error) throw error;

      setShops(prev => 
        prev.map(shop => 
          shop.id === shopId ? { ...shop, shop_status: newStatus } : shop
        )
      );

      if (selectedShop?.id === shopId) {
        setSelectedShop(prev => prev ? { ...prev, shop_status: newStatus } : null);
      }

      toast({
        title: t('shopMessages.statusUpdated'),
        description: !currentStatus ? t('shopMessages.shopActivated') : t('shopMessages.shopDeactivated'),
      });
    } catch (error) {
      logger.error('Error updating shop status:', error);
      toast({
        title: t('common.error'),
        description: t('shopMessages.statusUpdateError'),
        variant: "destructive",
      });
    }
  };

  const activeCount = shops.filter(shop => shop.shop_status === 'active').length;

  if (!user) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center p-4">
        <AuthRequiredBubble 
          message={t('shopMessages.loginRequired')}
          className="max-w-md w-full"
        />
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background py-8" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="container mx-auto px-4">
        <div className="max-w-7xl mx-auto">
          {/* Header */}
          <Card className="mb-6">
            <CardHeader>
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-3">
                  <Store className="h-8 w-8 text-primary" />
                  <div>
                    <CardTitle className="text-2xl">{t('shopMessages.title')}</CardTitle>
                    <CardDescription>
                      {t('shopMessages.subtitle')}
                    </CardDescription>
                  </div>
                </div>
                {activeCount > 0 && (
                  <Badge variant="default" className="text-sm">
                    {activeCount} active{activeCount > 1 ? 's' : ''}
                  </Badge>
                )}
              </div>
            </CardHeader>
          </Card>

          {/* Filtres */}
          <Card className="mb-6">
            <CardContent className="pt-6">
              <div className="flex flex-wrap gap-2">
                <Button
                  variant={filter === 'all' ? 'default' : 'outline'}
                  size="sm"
                  onClick={() => setFilter('all')}
                >
                  {t('shopMessages.allShops')}
                </Button>
                <Button
                  variant={filter === 'active' ? 'default' : 'outline'}
                  size="sm"
                  onClick={() => setFilter('active')}
                >
                  {t('shopMessages.actives')} {activeCount > 0 && `(${activeCount})`}
                </Button>
                <Button
                  variant={filter === 'inactive' ? 'default' : 'outline'}
                  size="sm"
                  onClick={() => setFilter('inactive')}
                >
                  {t('shopMessages.inactives')}
                </Button>
              </div>
            </CardContent>
          </Card>

          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6">
            {/* Liste des boutiques */}
            <div className="lg:col-span-1">
              <Card className="h-[600px]">
                <CardHeader>
                  <CardTitle className="text-lg">
                    {filter === 'active' ? t('shopMessages.activeShops') : 
                     filter === 'inactive' ? t('shopMessages.inactiveShops') : 
                     t('shopMessages.allShops')}
                  </CardTitle>
                </CardHeader>
                <CardContent className="p-0">
                  <div className="h-[500px] overflow-y-auto">
                    {loading ? (
                      <div className="flex items-center justify-center h-32">
                        <div className="text-sm text-muted-foreground">{t('shopMessages.loading')}</div>
                      </div>
                    ) : shops.length === 0 ? (
                      <div className="flex items-center justify-center h-32">
                        <div className="text-center">
                          <Store className="h-12 w-12 mx-auto mb-2 text-muted-foreground" />
                          <div className="text-sm text-muted-foreground">
                            {filter === 'active' ? t('shopMessages.noActiveShop') : 
                             filter === 'inactive' ? t('shopMessages.noInactiveShop') : 
                             t('shopMessages.noShop')}
                          </div>
                        </div>
                      </div>
                    ) : (
                      <div className="divide-y">
                        {shops.map((shop) => (
                          (() => {
                            const isActive = shop.shop_status === 'active';
                            return (
                          <div
                            key={shop.id}
                            className={`p-4 cursor-pointer hover:bg-muted/50 transition-colors ${
                              selectedShop?.id === shop.id ? 'bg-muted/50' : ''
                             } ${isActive ? 'border-l-4 border-green-500' : 'border-l-4 border-gray-300'}`}
                            onClick={() => setSelectedShop(shop)}
                          >
                            <div className="flex items-start justify-between gap-2">
                              <div className="flex-1 min-w-0">
                                <div className="flex items-center gap-2 mb-1">
                                  <Store className="h-4 w-4 text-muted-foreground" />
                                  <span className="font-medium text-sm truncate">
                                    {shop.name}
                                  </span>
                                  {isActive ? (
                                    <Badge variant="default" className="text-xs">
                                      <Eye className="h-3 w-3 mr-1" />
                                      {t('shopMessages.active')}
                                    </Badge>
                                  ) : (
                                    <Badge variant="secondary" className="text-xs">
                                      <EyeOff className="h-3 w-3 mr-1" />
                                      {t('shopMessages.inactive')}
                                    </Badge>
                                  )}
                                </div>
                                {shop.category_ids && shop.category_ids.length > 0 && (
                                  <div className="text-xs text-muted-foreground mb-1">
                                    {shop.category_ids.length} catégorie{shop.category_ids.length > 1 ? 's' : ''}
                                  </div>
                                )}
                                <div className="text-sm text-muted-foreground truncate">
                                  {shop.description}
                                </div>
                                <div className="flex items-center gap-1 mt-1">
                                  <Clock className="h-3 w-3 text-muted-foreground" />
                                  <span className="text-xs text-muted-foreground">
                                    {formatDistanceToNow(new Date(shop.created_at), { 
                                      addSuffix: true, 
                                      locale: fr 
                                    })}
                                  </span>
                                </div>
                              </div>
                            </div>
                          </div>
                            );
                          })()
                        ))}
                      </div>
                    )}
                  </div>
                </CardContent>
              </Card>
            </div>

            {/* Détails de la boutique */}
            <div className="lg:col-span-2">
              {selectedShop ? (
                <Card className="h-[600px]">
                  <CardHeader>
                    <div className="flex items-start justify-between">
                      <div>
                        <CardTitle className="flex items-center gap-2">
                          <Store className="h-5 w-5 text-primary" />
                          {selectedShop.name}
                        </CardTitle>
                        <CardDescription>
                          {t('shopMessages.createdOn')} {new Date(selectedShop.created_at).toLocaleDateString('fr-FR')}
                        </CardDescription>
                      </div>
                      <div className="flex gap-2">
                        <Button
                          variant={selectedShop.shop_status === 'active' ? "destructive" : "default"}
                          size="sm"
                          onClick={() => toggleActiveStatus(selectedShop.id, selectedShop.shop_status === 'active')}
                        >
                          {selectedShop.shop_status === 'active' ? (
                            <>
                              <EyeOff className="h-4 w-4 mr-1" />
                              {t('shopMessages.deactivate')}
                            </>
                          ) : (
                            <>
                              <Eye className="h-4 w-4 mr-1" />
                              {t('shopMessages.activate')}
                            </>
                          )}
                        </Button>
                        <Button
                          variant="outline"
                          size="sm"
                          onClick={() => window.open(`/shop/${selectedShop.id}`)}
                        >
                          <Eye className="h-4 w-4 mr-1" />
                          {t('shopMessages.view')}
                        </Button>
                      </div>
                    </div>
                  </CardHeader>
                  <CardContent className="space-y-4">
                    <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                      <div className="flex items-center gap-2">
                        <User className="h-4 w-4 text-muted-foreground" />
                        <span className="text-sm font-medium">{t('shopMessages.nameLabel')}</span>
                        <span className="text-sm">{selectedShop.name}</span>
                      </div>
                      {selectedShop.category_ids && selectedShop.category_ids.length > 0 && (
                        <div className="flex items-center gap-2">
                          <Store className="h-4 w-4 text-muted-foreground" />
                          <span className="text-sm font-medium">{t('shopMessages.categoriesLabel')}</span>
                          <span className="text-sm">{selectedShop.category_ids.length} sélectionnée{selectedShop.category_ids.length > 1 ? 's' : ''}</span>
                        </div>
                      )}
                      {selectedShop.email && (
                        <div className="flex items-center gap-2">
                          <Mail className="h-4 w-4 text-muted-foreground" />
                          <span className="text-sm font-medium">Email:</span>
                          <a
                            href={`mailto:${selectedShop.email}`}
                            className="text-sm text-primary hover:underline"
                          >
                            {selectedShop.email}
                          </a>
                        </div>
                      )}
                      {selectedShop.phone_numbers && selectedShop.phone_numbers.length > 0 && (
                        <div className="flex items-center gap-2">
                          <Phone className="h-4 w-4 text-muted-foreground" />
                          <span className="text-sm font-medium">{t('shopMessages.phoneLabel')}</span>
                          <a
                            href={`tel:${selectedShop.phone_numbers[0]}`}
                            className="text-sm text-primary hover:underline"
                          >
                            {selectedShop.phone_numbers[0]}
                          </a>
                        </div>
                      )}
                      {selectedShop.address && (
                        <div className="flex items-center gap-2">
                          <Calendar className="h-4 w-4 text-muted-foreground" />
                          <span className="text-sm font-medium">{t('shopMessages.addressLabel')}</span>
                          <span className="text-sm">{selectedShop.address}</span>
                        </div>
                      )}
                      {selectedShop.wilaya && (
                        <div className="flex items-center gap-2">
                          <Calendar className="h-4 w-4 text-muted-foreground" />
                          <span className="text-sm font-medium">{t('shopMessages.wilayaLabel')}</span>
                          <span className="text-sm">{selectedShop.wilaya}</span>
                        </div>
                      )}
                      <div className="flex items-center gap-2">
                        <Calendar className="h-4 w-4 text-muted-foreground" />
                        <span className="text-sm font-medium">{t('shopMessages.createdOnLabel')}</span>
                        <span className="text-sm">
                          {new Date(selectedShop.created_at).toLocaleDateString('fr-FR', {
                            day: 'numeric',
                            month: 'long',
                            year: 'numeric',
                            hour: '2-digit',
                            minute: '2-digit'
                          })}
                        </span>
                      </div>
                    </div>

                    <Separator />

                    {selectedShop.description && (
                      <div>
                        <h4 className="text-sm font-medium mb-2">{t('shopMessages.descriptionLabel')}</h4>
                        <div className="p-4 bg-muted/30 rounded-lg">
                          <p className="text-sm whitespace-pre-wrap">
                            {selectedShop.description}
                          </p>
                        </div>
                      </div>
                    )}

                    <div className="flex items-center gap-2 pt-4">
                      {selectedShop.shop_status === 'active' ? (
                        <Badge variant="default" className="text-xs">
                          <CheckCircle className="h-3 w-3 mr-1" />
                          {t('shopMessages.activeShop')}
                        </Badge>
                      ) : (
                        <Badge variant="secondary" className="text-xs">
                          <AlertCircle className="h-3 w-3 mr-1" />
                          {t('shopMessages.inactiveShop')}
                        </Badge>
                      )}
                    </div>

                    <div className="flex gap-2 pt-4">
                      <Button
                        onClick={() => window.open(`/shop/${selectedShop.id}`)}
                        className="flex-1"
                      >
                        <Eye className="h-4 w-4 mr-2" />
                        {t('shopMessages.viewShop')}
                      </Button>
                      {selectedShop.email && (
                        <Button
                          variant="outline"
                          onClick={() => window.open(`mailto:${selectedShop.email}`)}
                        >
                          <Mail className="h-4 w-4 mr-2" />
                          {t('shopMessages.contact')}
                        </Button>
                      )}
                      <Button
                        variant="outline"
                        onClick={() => window.open(`/creer-boutique`)}
                      >
                        <Edit className="h-4 w-4 mr-2" />
                        {t('shopMessages.edit')}
                      </Button>
                    </div>
                  </CardContent>
                </Card>
              ) : (
                <Card className="h-[600px] flex items-center justify-center">
                  <CardContent className="text-center">
                    <Store className="h-16 w-16 mx-auto mb-4 text-muted-foreground" />
                    <h3 className="text-xl font-semibold mb-2">
                      {t('shopMessages.selectShop')}
                    </h3>
                    <p className="text-muted-foreground">
                      {t('shopMessages.selectShopDesc')}
                    </p>
                  </CardContent>
                </Card>
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ShopMessages;
