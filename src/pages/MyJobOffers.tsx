
import React, { useEffect, useState } from "react";
import { Plus, Trash2, Eye, MapPin, Calendar, Briefcase } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Card, CardContent, CardHeader, CardTitle, CardFooter } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { useToast } from "@/hooks/use-toast";
import { useAuth } from "@/contexts/useAuth";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { supabase } from '@/integrations/supabase/client';
import { format } from 'date-fns';
import { fr } from 'date-fns/locale';
import { AlertDialog, AlertDialogAction, AlertDialogCancel, AlertDialogContent, AlertDialogDescription, AlertDialogFooter, AlertDialogHeader, AlertDialogTitle, AlertDialogTrigger } from "@/components/ui/alert-dialog";
import { LocalizedLink } from "@/utils/linkUtils";
import AuthRequiredBubble from "@/components/auth/AuthRequiredBubble";

interface JobOffer {
  id: string;
  title: string;
  profession: string;
  created_at: string;
  is_active: boolean;
  wilaya: string;
  views_count?: number; // Placeholder if not in DB yet
}

const MyJobOffers = () => {
  const { t, isRTL } = useSafeI18nWithRouter();
  const { user, loading: authLoading } = useAuth();
  const { toast } = useToast();
  const [offers, setOffers] = useState<JobOffer[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    if (authLoading) return;
    if (!user) {
      setLoading(false);
      return;
    }

    const fetchMyOffers = async () => {
      try {
        setLoading(true);
        const { data, error } = await supabase
          .from('professional_job_offers')
          .select('id, title, profession, created_at, is_active, wilaya')
          .eq('user_id', user.id)
          .order('created_at', { ascending: false });

        if (error) throw error;
        setOffers(data || []);
      } catch (err) {
        console.error('Error fetching my offers:', err);
        toast({
          title: t('common.error'),
          description: "Impossible de charger vos offres.",
          variant: "destructive"
        });
      } finally {
        setLoading(false);
      }
    };

    fetchMyOffers();
  }, [authLoading, user, toast, t]);

  const handleDelete = async (id: string) => {
    try {
      const { error } = await supabase
        .from('professional_job_offers')
        .delete()
        .eq('id', id);

      if (error) throw error;

      setOffers(prev => prev.filter(offer => offer.id !== id));
      toast({
        title: t('common.success'),
        description: "Offre supprimée avec succès.",
      });
    } catch (err) {
      console.error('Error deleting offer:', err);
      toast({
        title: t('common.error'),
        description: "Erreur lors de la suppression.",
        variant: "destructive"
      });
    }
  };

  if (loading || authLoading) {
    return (
      <div className="container mx-auto px-4 py-8">
        <div className="space-y-4">
          {[1, 2, 3].map(i => (
            <div key={i} className="h-32 bg-gray-100 dark:bg-slate-800 rounded-lg animate-pulse" />
          ))}
        </div>
      </div>
    );
  }

  if (!user) {
    return (
      <div className="container mx-auto px-4 py-8 flex justify-center">
        <AuthRequiredBubble
          message="Connectez-vous pour gérer vos offres de service."
          className="w-full max-w-md"
        />
      </div>
    );
  }

  return (
    <div className="container mx-auto px-4 py-8" dir={isRTL ? 'rtl' : 'ltr'}>
      <div className="flex flex-col md:flex-row justify-between items-center mb-8 gap-4">
        <div>
          <h1 className="text-3xl font-bold text-slate-900 dark:text-white">
            {t('navigation.productSearch')} {/* "Mes Offres de service Professionnel" */}
          </h1>
          <p className="text-muted-foreground mt-1">
            {t('navigation.productSearchDesc')}
          </p>
        </div>
        <LocalizedLink to="/deposer-offre-metier">
          <Button className="bg-blue-600 hover:bg-blue-700 text-white gap-2">
            <Plus className="h-4 w-4" />
            {t('jobOffer.title')}
          </Button>
        </LocalizedLink>
      </div>

      {offers.length === 0 ? (
        <Card className="text-center py-16">
          <CardContent>
            <div className="w-16 h-16 bg-blue-50 dark:bg-blue-900/20 rounded-full flex items-center justify-center mx-auto mb-4">
              <Briefcase className="h-8 w-8 text-blue-500" />
            </div>
            <h3 className="text-xl font-semibold mb-2">Aucune offre publiée</h3>
            <p className="text-muted-foreground mb-6 max-w-md mx-auto">
              Vous n'avez pas encore publié d'offre de service. Commencez dès maintenant pour trouver des clients !
            </p>
            <LocalizedLink to="/deposer-offre-metier">
              <Button>Créer ma première offre</Button>
            </LocalizedLink>
          </CardContent>
        </Card>
      ) : (
        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
          {offers.map((offer) => (
            <Card key={offer.id} className="group hover:shadow-lg transition-shadow duration-300 border-slate-200 dark:border-slate-800">
              <CardHeader className="pb-3">
                <div className="flex justify-between items-start">
                  <Badge variant={offer.is_active ? "default" : "secondary"} className={offer.is_active ? "bg-green-500" : ""}>
                    {offer.is_active ? "Active" : "Inacitve"}
                  </Badge>
                  <div className="text-xs text-muted-foreground flex items-center gap-1">
                    <Calendar className="h-3 w-3" />
                    {format(new Date(offer.created_at), 'dd MMM yyyy', { locale: fr })}
                  </div>
                </div>
                <CardTitle className="text-lg font-bold line-clamp-1 mt-2 group-hover:text-blue-600 transition-colors">
                  <LocalizedLink to={`/offre-metier/${offer.id}`}>{offer.title}</LocalizedLink>
                </CardTitle>
              </CardHeader>
              <CardContent className="pb-3">
                <div className="space-y-2 text-sm text-muted-foreground">
                  <div className="flex items-center gap-2">
                    <Briefcase className="h-4 w-4 text-slate-400" />
                    <span>
                      {t(`jobOffer.professions.${offer.profession}`) || 
                       t(`jobOffer.professions.${offer.profession.charAt(0).toLowerCase() + offer.profession.slice(1)}`) || 
                       offer.profession}
                    </span>
                  </div>
                  <div className="flex items-center gap-2">
                    <MapPin className="h-4 w-4 text-slate-400" />
                    <span>{offer.wilaya}</span>
                  </div>
                </div>
              </CardContent>
              <CardFooter className="pt-3 border-t border-slate-100 dark:border-slate-800 flex justify-between gap-2">
                <LocalizedLink to={`/offre-metier/${offer.id}`} className="flex-1">
                  <Button variant="outline" size="sm" className="w-full gap-1">
                    <Eye className="h-3 w-3" />
                    Voir
                  </Button>
                </LocalizedLink>
                
                <AlertDialog>
                  <AlertDialogTrigger asChild>
                    <Button variant="ghost" size="sm" className="text-red-500 hover:text-red-700 hover:bg-red-50">
                      <Trash2 className="h-4 w-4" />
                    </Button>
                  </AlertDialogTrigger>
                  <AlertDialogContent>
                    <AlertDialogHeader>
                      <AlertDialogTitle>Êtes-vous sûr ?</AlertDialogTitle>
                      <AlertDialogDescription>
                        Cette action est irréversible. Votre offre sera définitivement supprimée.
                      </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                      <AlertDialogCancel>Annuler</AlertDialogCancel>
                      <AlertDialogAction onClick={() => handleDelete(offer.id)} className="bg-red-600 hover:bg-red-700">
                        Supprimer
                      </AlertDialogAction>
                    </AlertDialogFooter>
                  </AlertDialogContent>
                </AlertDialog>
              </CardFooter>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
};

export default MyJobOffers;
