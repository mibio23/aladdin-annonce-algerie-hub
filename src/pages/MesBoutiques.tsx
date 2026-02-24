import React, { useState, useEffect, useCallback } from 'react';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Store, Plus, MapPin, Trash, Edit, Eye } from 'lucide-react';
import { Navigate, Link } from 'react-router-dom';
import { supabase } from '@/integrations/supabase/client';
import { useToast } from '@/hooks/use-toast';

function MesBoutiques() {
  const { user, loading: authLoading } = useAuth();
  const { t } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();
  const { toast } = useToast();
  
  const [shops, setShops] = useState<any[]>([]);
  const [loading, setLoading] = useState(true);

  const fetchShops = useCallback(async () => {
    try {
      if (!user) return;
      setLoading(true);
      const { data, error } = await supabase
        .from('shops')
        .select('*')
        .eq('user_id', user.id)
        .order('created_at', { ascending: false });

      if (error) throw error;
      setShops(data || []);
    } catch (error) {
      console.error('Error fetching shops:', error);
      toast({
        title: t('common.error'),
        description: t('myShops.errorFetch'),
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  }, [t, toast, user]);

  useEffect(() => {
    fetchShops();
  }, [fetchShops]);

  const handleDeleteShop = async (id: string) => {
    if (window.confirm(t('common.warning'))) {
      try {
        const { error } = await supabase
          .from('shops')
          .delete()
          .eq('id', id);

        if (error) throw error;

        setShops(prev => prev.filter(s => s.id !== id));
        toast({
          title: t('common.success'),
          description: t('common.deletedSuccessfully'),
        });
      } catch (error) {
        console.error('Error deleting shop:', error);
        toast({
          title: t('common.error'),
          description: t('common.errorOccurred'),
          variant: "destructive"
        });
      }
    }
  };

  if (authLoading || loading) {
    return (
      <div className="min-h-screen bg-gray-50 dark:bg-gray-900 flex items-center justify-center">
        <span>{t('common.loading')}</span>
      </div>
    );
  }

  if (!user) {
    return <Navigate to="/" state={{ openAuth: 'login' }} replace />;
  }

  return (
    <div className="min-h-screen bg-gray-50 dark:bg-gray-900 py-8">
      <div className="container mx-auto px-4">
        <div className="max-w-6xl mx-auto">
          {/* Header */}
          <Card className="mb-6">
            <CardHeader>
              <div className="flex items-center justify-between">
                <div className="flex items-center gap-3">
                  <Store className="h-8 w-8 text-primary" />
                  <div>
                    <CardTitle className="text-2xl">{t('myShops.title')}</CardTitle>
                    <p className="text-muted-foreground">{t('myShops.subtitle')}</p>
                  </div>
                </div>
                {/* Suppression de la limite de 2 boutiques */}
                <Button asChild>
                  <Link to={getLocalizedPath('/creer-boutique')}>
                    <Plus className="mr-2 h-4 w-4" />
                    {t('myShops.createShop')}
                  </Link>
                </Button>
              </div>
            </CardHeader>
          </Card>

          {/* Shops List */}
          {shops.length === 0 ? (
            <Card>
              <CardContent className="text-center py-12">
                <Store className="mx-auto h-16 w-16 text-muted-foreground mb-4" />
                <h3 className="text-lg font-semibold mb-2">{t('myShops.noShops')}</h3>
                <p className="text-muted-foreground mb-6">{t('myShops.noShopsDescription')}</p>
                <Button asChild>
                  <Link to={getLocalizedPath('/creer-boutique')}>
                    <Plus className="mr-2 h-4 w-4" />
                    {t('myShops.createFirstShop')}
                  </Link>
                </Button>
              </CardContent>
            </Card>
          ) : (
            <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
              {shops.map((shop) => (
                <Card key={shop.id} className="hover:shadow-lg transition-shadow">
                  <CardHeader className="pb-3">
                    <div className="flex items-start justify-between">
                      <div className="flex-1">
                        <div className="flex items-center gap-2 mb-2">
                          <h3 className="font-semibold text-lg line-clamp-1">{shop.name}</h3>
                          <Badge variant={shop.shop_status === 'active' ? "default" : "secondary"}>
                            {shop.shop_status === 'active' ? t('myShops.active') : (shop.shop_status || t('common.inactive'))}
                          </Badge>
                        </div>
                        <p className="text-sm text-muted-foreground mb-2 line-clamp-2">{shop.description}</p>
                        <div className="flex items-center gap-4 text-sm text-muted-foreground">
                          <div className="flex items-center gap-1">
                            <MapPin className="h-3 w-3" />
                            <span className="truncate max-w-[150px]">{shop.wilaya}, {shop.commune}</span>
                          </div>
                          {/* View count */}
                          <div className="flex items-center gap-1">
                            <Eye className="h-3 w-3 text-blue-500" />
                            {shop.view_count || 0}
                          </div>
                        </div>
                      </div>
                    </div>
                  </CardHeader>
                  
                  <CardContent className="pt-0">
                    <div className="flex items-center justify-between mt-4">
                      <Badge variant="outline">{shop.main_category || 'Général'}</Badge>
                    </div>
                    
                    <div className="grid grid-cols-3 gap-2 mt-4">
                        <Button variant="outline" size="sm" className="w-full" asChild>
                          <Link to={getLocalizedPath(`/boutique/${shop.id}`)}>
                            <Eye className="h-4 w-4 mr-1" />
                            <span className="hidden sm:inline">{t('common.view')}</span>
                          </Link>
                        </Button>
                        <Button variant="outline" size="sm" className="w-full" asChild>
                          <Link to={getLocalizedPath(`/creer-boutique?edit=${shop.id}`)}>
                            <Edit className="h-4 w-4 mr-1" />
                            <span className="hidden sm:inline">{t('common.edit')}</span>
                          </Link>
                        </Button>
                        <Button variant="destructive" size="sm" className="w-full" onClick={() => handleDeleteShop(shop.id)}>
                          <Trash className="h-4 w-4 mr-1" />
                          <span className="hidden sm:inline">{t('common.delete')}</span>
                        </Button>
                      </div>
                  </CardContent>
                </Card>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

export default MesBoutiques;
