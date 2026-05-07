import { useState, useEffect, useCallback } from 'react';
import { useParams } from 'react-router-dom';
import { LocalizedLink } from '@/utils/linkUtils';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Badge } from '@/components/ui/badge';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { User, MessageCircle, ArrowLeft, Star, Calendar } from 'lucide-react';
import { useToast } from '@/hooks/use-toast';
import ReviewsSection from '@/components/reviews/ReviewsSection';
import { logger } from '@/utils/silentLogger';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import SEOHead from '@/components/SEO/SEOHead';

interface PublicProfileData {
  id: string;
  user_id: string;
  full_name?: string;
  display_name?: string;
  phone?: string;
  wilaya?: string;
  commune?: string;
  avatar_url?: string;
  is_verified?: boolean;
  profession?: string;
  created_at: string;
  public_user_id?: number | null;
}

const PublicProfile = () => {
  const { userId } = useParams<{ userId: string }>();
  const { user: currentUser } = useAuth();
  const { toast } = useToast();
  const { t, language } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();
  const [profileData, setProfileData] = useState<PublicProfileData | null>(null);
  const [loading, setLoading] = useState(true);

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const translated = t(key);
    if (translated && translated !== key) return translated;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const fetchProfile = useCallback(async () => {
    if (!userId) return;
    try {
      const { data: profile, error } = await supabase
        .from('profiles_public')
        .select('id, user_id, full_name, display_name, phone, wilaya, commune, avatar_url, is_verified, profession, public_user_id, created_at')
        .eq('id', userId)
        .single();

      if (error) {
        logger.error('Error fetching profile:', error);
        setProfileData({
          id: userId,
          display_name: tr('publicProfile.unknownUser', {
            fr: 'Utilisateur inconnu',
            en: 'Unknown user',
            es: 'Usuario desconocido',
            it: 'Utente sconosciuto',
            de: 'Unbekannter Benutzer',
            ar: 'مستخدم غير معروف',
          }),
          bio: undefined,
          avatar_url: undefined,
          created_at: new Date().toISOString()
        });
      } else {
        setProfileData(profile as unknown as PublicProfileData);
      }
    } catch (error) {
      logger.error('Error fetching profile:', error);
      toast({
        title: t('common.error'),
        description: tr('publicProfile.loadError', {
          fr: 'Impossible de charger ce profil',
          en: 'Unable to load this profile',
          es: 'No se pudo cargar este perfil',
          it: 'Impossibile caricare questo profilo',
          de: 'Dieses Profil konnte nicht geladen werden',
          ar: 'تعذر تحميل هذا الملف الشخصي',
        }),
        variant: 'destructive',
      });
    } finally {
      setLoading(false);
    }
  }, [userId, toast]);

  useEffect(() => {
    if (userId) {
      fetchProfile();
    }
  }, [userId, fetchProfile]);


  const handleStartConversation = async () => {
    if (!currentUser || !profileData) {
      toast({
        title: t('auth.loginRequired'),
        description: t('auth.loginRequiredDesc'),
      });
      return;
    }

    try {
      // Créer une nouvelle conversation
      const { data: newConversation, error } = await supabase
        .from('conversations')
        .insert({
          participant_1_id: currentUser.id,
          participant_2_id: profileData.id,
          title: tr('publicProfile.conversationWith', {
            fr: `Conversation avec ${profileData?.display_name || 'Utilisateur'}`,
            en: `Conversation with ${profileData?.display_name || 'User'}`,
            es: `Conversación con ${profileData?.display_name || 'Usuario'}`,
            it: `Conversazione con ${profileData?.display_name || 'Utente'}`,
            de: `Gespräch mit ${profileData?.display_name || 'Benutzer'}`,
            ar: `محادثة مع ${profileData?.display_name || 'مستخدم'}`,
          }),
          last_message_at: new Date().toISOString(),
          updated_at: new Date().toISOString()
        })
        .select()
        .single();

      if (error) throw error;

      // Rediriger vers la nouvelle conversation
      window.location.href = getLocalizedPath(`/messages?conversation=${newConversation.id}`);
    } catch (error) {
      logger.error('Error starting conversation:', error);
      toast({
        title: t('common.error'),
        description: tr('publicProfile.startConversationError', {
          fr: 'Impossible de démarrer la conversation',
          en: 'Unable to start the conversation',
          es: 'No se pudo iniciar la conversación',
          it: 'Impossibile avviare la conversazione',
          de: 'Die Konversation konnte nicht gestartet werden',
          ar: 'تعذر بدء المحادثة',
        }),
        variant: 'destructive',
      });
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  if (!profileData) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="text-center">
          <User className="h-16 w-16 mx-auto mb-4 text-muted-foreground" />
          <h2 className="text-2xl font-bold mb-4">
            {tr('publicProfile.notFound', {
              fr: 'Profil non trouvé',
              en: 'Profile not found',
              es: 'Perfil no encontrado',
              it: 'Profilo non trovato',
              de: 'Profil nicht gefunden',
              ar: 'الملف الشخصي غير موجود',
            })}
          </h2>
          <p className="text-muted-foreground mb-6">
            {tr('publicProfile.notFoundDesc', {
              fr: "Ce profil n'existe pas ou a été supprimé.",
              en: 'This profile does not exist or has been deleted.',
              es: 'Este perfil no existe o ha sido eliminado.',
              it: 'Questo profilo non esiste o è stato eliminato.',
              de: 'Dieses Profil existiert nicht oder wurde gelöscht.',
              ar: 'هذا الملف الشخصي غير موجود أو تم حذفه.',
            })}
          </p>
          <LocalizedLink to="/">
            <Button>
              <ArrowLeft className="h-4 w-4 mr-2" />
              {tr('categories.backToHome', {
                fr: "Retour à l'accueil",
                en: 'Back to home',
                es: 'Volver al inicio',
                it: 'Torna alla home',
                de: 'Zur Startseite',
                ar: 'العودة إلى الرئيسية',
              })}
            </Button>
          </LocalizedLink>
        </div>
      </div>
    );
  }

  const userName = profileData.display_name || profileData.full_name || tr('publicProfile.user', {
    fr: 'Utilisateur',
    en: 'User',
    es: 'Usuario',
    it: 'Utente',
    de: 'Benutzer',
    ar: 'مستخدم',
  });
  const userInitials = userName.charAt(0).toUpperCase();
  const memberSince = new Date(profileData.created_at);

  return (
    <div className="min-h-screen bg-background py-8">
      <SEOHead
        title={`${userName} — Profil Aladdin`}
        description={profileData.profession
          ? `Découvrez le profil de ${userName}, ${profileData.profession}${profileData.wilaya ? ` à ${profileData.wilaya}` : ''}. Membre Aladdin Annonces Algérie.`
          : `Découvrez le profil de ${userName}${profileData.wilaya ? ` à ${profileData.wilaya}` : ''}. Membre de la communauté Aladdin Annonces Algérie.`}
        image={profileData.avatar_url || '/og-image.jpg'}
        noIndex={false}
        keywords={['profil', 'vendeur', profileData.profession || '', profileData.wilaya || ''].filter(Boolean)}
      />
      <div className="container mx-auto px-4">
        <div className="max-w-4xl mx-auto">
          {/* Header */}
          <div className="mb-6">
            <LocalizedLink to="/" className="inline-flex items-center text-muted-foreground hover:text-primary">
              <ArrowLeft className="h-4 w-4 mr-2" />
              {tr('common.back', {
                fr: 'Retour',
                en: 'Back',
                es: 'Volver',
                it: 'Indietro',
                de: 'Zurück',
                ar: 'رجوع',
              })}
            </LocalizedLink>
          </div>

          {/* Profil principal */}
          <Card className="mb-6">
            <CardContent className="p-6">
              <div className="flex flex-col md:flex-row items-start md:items-center gap-6">
                <Avatar className="h-24 w-24">
                  <AvatarImage src={profileData.avatar_url} alt={userName} />
                  <AvatarFallback className="text-lg">{userInitials}</AvatarFallback>
                </Avatar>
                
                <div className="flex-1">
                  <h1 className="text-2xl font-bold mb-2">{userName}</h1>
                  <div className="flex flex-wrap items-center gap-4 text-muted-foreground mb-4">
                    <div className="flex items-center gap-2">
                      <Calendar className="h-4 w-4" />
                      <span>Membre depuis {memberSince.toLocaleDateString('fr-FR', { 
                        month: 'long', 
                        year: 'numeric' 
                      })}</span>
                    </div>
                    {profileData.public_user_id != null && (
                      <div className="flex items-center gap-2">
                        <span>ID utilisateur:</span>
                        <Badge variant="outline" className="font-mono">
                          {String(profileData.public_user_id).padStart(14, '0')}
                        </Badge>
                      </div>
                    )}
                    <Badge variant="secondary">
                      <Star className="h-3 w-3 mr-1" />
                      Utilisateur vérifié
                    </Badge>
                  </div>
                  
                  {currentUser && currentUser.id !== profileData.id && (
                    <div className="flex gap-3">
                      <Button onClick={handleStartConversation}>
                        <MessageCircle className="h-4 w-4 mr-2" />
                        Envoyer un message
                      </Button>
                    </div>
                  )}
                </div>
              </div>
            </CardContent>
          </Card>

          {/* Bio */}
          {profileData.bio && (
            <Card className="mb-6">
              <CardHeader>
                <CardTitle className="flex items-center gap-2">
                  <User className="h-5 w-5" />
                  À propos
                </CardTitle>
              </CardHeader>
              <CardContent>
                <p className="text-muted-foreground">{profileData.bio}</p>
              </CardContent>
            </Card>
          )}

          {/* Section Avis */}
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center gap-2">
                <Star className="h-5 w-5" />
                Avis et évaluations
              </CardTitle>
            </CardHeader>
            <CardContent>
              <ReviewsSection 
                reviewedUserId={profileData.id}
              />
            </CardContent>
          </Card>
        </div>
      </div>
    </div>
  );
};

export default PublicProfile;
