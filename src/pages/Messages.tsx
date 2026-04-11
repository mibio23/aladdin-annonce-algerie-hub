import { useState, useEffect } from 'react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useAuth } from '@/contexts/useAuth';
import { MessageCircle, Loader2, FileText, ShoppingBag, Briefcase, ArrowLeft } from 'lucide-react';
import ConversationList from '@/components/messaging/ConversationList';
import MessageThread from '@/components/messaging/MessageThread';
import { useSearchParams, Link } from 'react-router-dom';
import { supabase } from '@/integrations/supabase/client';
import { cn } from '@/lib/utils';
import { Button } from '@/components/ui/button';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

const Messages = () => {
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [selectedConversationId, setSelectedConversationId] = useState<string | null>(null);
  const [searchParams, setSearchParams] = useSearchParams();
  const [initializing, setInitializing] = useState(false);
  const [activeFilter, setActiveFilter] = useState<'all' | 'ad' | 'shop' | 'job_offer'>('all');
  const { getLocalizedPath } = useLanguageNavigation();
  
  // Use `t` for translations
  const translate = t;

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const translated = t(key);
    if (translated && translated !== key) return translated;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const handleTabClick = (filter: 'all' | 'ad' | 'shop' | 'job_offer') => {
    setActiveFilter(filter);
    setSelectedConversationId(null);
  };

  // Handle URL parameters for starting new conversations
  useEffect(() => {
    const initConversation = async () => {
      if (!user) return;

      const announcementId = searchParams.get('announcement');
      const shopId = searchParams.get('shop');
      const jobOfferId = searchParams.get('job_offer');
      const conversationId = searchParams.get('conversation');

      if (conversationId) {
        setSelectedConversationId(conversationId);
        return;
      }

      if (!announcementId && !shopId && !jobOfferId) return;

      setInitializing(true);
      try {
        let subjectType: 'ad' | 'shop' | 'job_offer' | null = null;
        let subjectId: string | null = null;
        let ownerId: string | null = null;
        let title: string | null = null;

        if (announcementId) {
          subjectType = 'ad';
          subjectId = announcementId;
          const { data } = await supabase.from('announcements').select('user_id, title').eq('id', announcementId).single();
          if (data) {
             ownerId = data.user_id;
             title = data.title;
          }
        } else if (shopId) {
          subjectType = 'shop';
          subjectId = shopId;
          // Note: Adjust table name/columns if different
          const { data } = await supabase.from('shops').select('user_id, name').eq('id', shopId).single(); 
          if (data) {
             ownerId = data.user_id;
             title = data.name;
          }
        } else if (jobOfferId) {
           subjectType = 'job_offer';
           subjectId = jobOfferId;
           // Note: Adjust table name/columns if different
           const { data } = await supabase.from('professional_job_offers').select('user_id, title').eq('id', jobOfferId).single();
           if (data) {
              ownerId = data.user_id;
              title = data.title;
           }
        }

        if (ownerId && ownerId !== user.id) {
           // Check if conversation exists
           // We use a broader check first to find ANY conversation with this subject between these users
           const { data: existing } = await supabase
             .from('conversations')
             .select('id')
             .or(`and(participant_1_id.eq.${user.id},participant_2_id.eq.${ownerId}),and(participant_1_id.eq.${ownerId},participant_2_id.eq.${user.id})`)
             .eq('subject_type', subjectType)
             .eq('subject_id', subjectId)
             .limit(1)
             .maybeSingle();

           if (existing) {
             setSelectedConversationId(existing.id);
           } else {
             // Create new
             const now = new Date().toISOString();
             const { data: newConv, error } = await supabase
               .from('conversations')
               .insert({
                 participant_1_id: user.id,
                 participant_2_id: ownerId,
                 subject_type: subjectType,
                 subject_id: subjectId,
                title: title || tr('messages.newConversation', {
                  fr: 'Nouvelle conversation',
                  en: 'New conversation',
                  es: 'Nueva conversación',
                  it: 'Nuova conversazione',
                  de: 'Neue Konversation',
                  ar: 'محادثة جديدة',
                }),
                 updated_at: now,
                 last_message_at: now
               })
               .select()
               .single();

             if (newConv) {
               setSelectedConversationId(newConv.id);
             } else if (error) {
               console.error("Error creating conversation:", error);
             }
           }
        }
      } catch (err) {
        console.error("Error initializing conversation:", err);
      } finally {
        setInitializing(false);
        // Clear params to avoid re-running
        setSearchParams({});
      }
    };

    initConversation();
  }, [user, searchParams, setSearchParams]);

  if (!user) {
    return (
      <div className="min-h-screen bg-background py-12">
        <div className="container mx-auto px-4">
          <div className="max-w-md mx-auto text-center">
            <MessageCircle className="h-16 w-16 mx-auto mb-4 text-muted-foreground" />
            <h2 className="text-2xl font-bold mb-4">{translate('auth.loginRequired')}</h2>
            <p className="text-muted-foreground">
              {translate('messages.loginRequiredDesc')}
            </p>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background py-8">
      <div className="container mx-auto px-4">
        <div className="max-w-7xl mx-auto">
          <div 
            className="mb-6 rounded-[24px] overflow-hidden"
            style={{
              background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
              boxShadow: '12px 12px 24px #a3a3a3, -12px -12px 24px #ffffff',
              border: '1px solid rgba(255,255,255,0.6)'
            }}
          >
            <div className="dark:bg-slate-800/90 dark:backdrop-blur-sm p-6 relative">
              <Button 
                asChild
                variant="outline" 
                className={cn(
                  "absolute top-1/2 -translate-y-1/2 rounded-xl bg-white/80 dark:bg-slate-800/80 backdrop-blur-sm border-2 border-slate-200 dark:border-slate-700 hover:bg-slate-100 dark:hover:bg-slate-700 shadow-sm text-slate-700 dark:text-slate-300 transition-all font-semibold hidden md:flex",
                  language === 'ar' ? "left-6" : "right-6"
                )}
              >
                <Link to={getLocalizedPath('/')}>
                  {tr('categories.backToHome', {
                    fr: "Retour à l'accueil",
                    en: 'Back to home',
                    es: 'Volver al inicio',
                    it: 'Torna alla home',
                    de: 'Zur Startseite',
                    ar: 'العودة إلى الرئيسية',
                  })}
                </Link>
              </Button>
              <div className="flex items-center gap-3">
                <div className="p-3 rounded-full bg-primary/10">
                  <MessageCircle className="h-8 w-8 text-primary" />
                </div>
                <div>
                  <h1 className="text-2xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
                    {translate('messages.title')}
                  </h1>
                  <p className="text-muted-foreground">{translate('messages.subtitle')}</p>
                </div>
              </div>
            </div>
          </div>

          {/* Onglets 3D Bombés de Filtrage (Filter Tabs) */}
          <div className="flex flex-wrap gap-4 mb-8 pb-2 px-2">
            <button
              onClick={() => handleTabClick('all')}
              className={cn(
                "flex-1 min-w-[220px] flex flex-col items-center justify-center gap-2 px-6 py-4 rounded-[20px] transition-all border-2 group",
                activeFilter === 'all' 
                  ? "bg-gradient-to-r from-blue-500 to-cyan-500 text-white border-blue-400 shadow-[inset_0_2px_8px_rgba(255,255,255,0.4),0_12px_24px_-10px_rgba(59,130,246,0.7)] transform -translate-y-1.5" 
                  : "bg-white dark:bg-slate-800 text-slate-600 dark:text-slate-300 border-slate-200 dark:border-slate-700 shadow-[0_6px_15px_-5px_rgba(0,0,0,0.1)] hover:shadow-[0_10px_20px_-5px_rgba(59,130,246,0.3)] hover:-translate-y-1 hover:border-blue-300"
              )}
            >
              <div className="flex items-center gap-3">
                <div className={cn("p-2 rounded-xl shadow-inner", activeFilter === 'all' ? "bg-white/20" : "bg-blue-50 dark:bg-blue-900/30 group-hover:bg-blue-100 dark:group-hover:bg-blue-900/50")}>
                  <MessageCircle className={cn("h-6 w-6", activeFilter === 'all' ? "text-white" : "text-blue-500")} />
                </div>
                <span className="text-lg font-extrabold">{tr('messages.tabs.all.title', {
                  fr: 'Toutes les discussions',
                  en: 'All conversations',
                  es: 'Todas las conversaciones',
                  it: 'Tutte le conversazioni',
                  de: 'Alle Gespräche',
                  ar: 'جميع المحادثات',
                })}</span>
              </div>
              <span className={cn("text-xs font-medium text-center", activeFilter === 'all' ? "text-blue-100" : "text-slate-400")}>
                {tr('messages.tabs.all.desc', {
                  fr: 'Gérez tous vos échanges en un seul endroit',
                  en: 'Manage all your conversations in one place',
                  es: 'Gestiona todas tus conversaciones en un solo lugar',
                  it: 'Gestisci tutte le tue conversazioni in un unico posto',
                  de: 'Verwalten Sie alle Ihre Gespräche an einem Ort',
                  ar: 'أدر جميع محادثاتك في مكان واحد',
                })}
              </span>
            </button>
            
            <button
              onClick={() => handleTabClick('ad')}
              className={cn(
                "flex-1 min-w-[220px] flex flex-col items-center justify-center gap-2 px-6 py-4 rounded-[20px] transition-all border-2 group",
                activeFilter === 'ad' 
                  ? "bg-gradient-to-r from-green-600 to-emerald-600 text-white border-green-500 shadow-[inset_0_2px_8px_rgba(255,255,255,0.4),0_12px_24px_-10px_rgba(16,185,129,0.7)] transform -translate-y-1.5" 
                  : "bg-white dark:bg-slate-800 text-slate-600 dark:text-slate-300 border-slate-200 dark:border-slate-700 shadow-[0_6px_15px_-5px_rgba(0,0,0,0.1)] hover:shadow-[0_10px_20px_-5px_rgba(16,185,129,0.3)] hover:-translate-y-1 hover:border-green-300"
              )}
            >
              <div className="flex items-center gap-3">
                <div className={cn("p-2 rounded-xl shadow-inner", activeFilter === 'ad' ? "bg-white/20" : "bg-green-50 dark:bg-green-900/30 group-hover:bg-green-100 dark:group-hover:bg-green-900/50")}>
                  <FileText className={cn("h-6 w-6", activeFilter === 'ad' ? "text-white" : "text-green-500")} />
                </div>
                <span className="text-lg font-extrabold">{tr('messages.tabs.ad.title', {
                  fr: 'Annonces',
                  en: 'Listings',
                  es: 'Anuncios',
                  it: 'Annunci',
                  de: 'Anzeigen',
                  ar: 'الإعلانات',
                })}</span>
              </div>
              <span className={cn("text-xs font-medium text-center", activeFilter === 'ad' ? "text-green-100" : "text-slate-400")}>
                {tr('messages.tabs.ad.desc', {
                  fr: "Messages liés à l'achat ou vente d'articles",
                  en: 'Messages related to buying or selling items',
                  es: 'Mensajes relacionados con la compra o venta de artículos',
                  it: "Messaggi relativi all'acquisto o alla vendita di articoli",
                  de: 'Nachrichten zum Kauf oder Verkauf von Artikeln',
                  ar: 'رسائل مرتبطة بشراء أو بيع المنتجات',
                })}
              </span>
            </button>

            <button
              onClick={() => handleTabClick('shop')}
              className={cn(
                "flex-1 min-w-[220px] flex flex-col items-center justify-center gap-2 px-6 py-4 rounded-[20px] transition-all border-2 group",
                activeFilter === 'shop' 
                  ? "bg-gradient-to-r from-purple-600 via-violet-600 to-fuchsia-600 text-white border-purple-500 shadow-[inset_0_2px_8px_rgba(255,255,255,0.4),0_12px_24px_-10px_rgba(139,92,246,0.7)] transform -translate-y-1.5" 
                  : "bg-white dark:bg-slate-800 text-slate-600 dark:text-slate-300 border-slate-200 dark:border-slate-700 shadow-[0_6px_15px_-5px_rgba(0,0,0,0.1)] hover:shadow-[0_10px_20px_-5px_rgba(139,92,246,0.3)] hover:-translate-y-1 hover:border-purple-300"
              )}
            >
              <div className="flex items-center gap-3">
                <div className={cn("p-2 rounded-xl shadow-inner", activeFilter === 'shop' ? "bg-white/20" : "bg-purple-50 dark:bg-purple-900/30 group-hover:bg-purple-100 dark:group-hover:bg-purple-900/50")}>
                  <ShoppingBag className={cn("h-6 w-6", activeFilter === 'shop' ? "text-white" : "text-purple-500")} />
                </div>
                <span className="text-lg font-extrabold">{tr('messages.tabs.shop.title', {
                  fr: 'Boutiques',
                  en: 'Shops',
                  es: 'Tiendas',
                  it: 'Negozi',
                  de: 'Shops',
                  ar: 'المتاجر',
                })}</span>
              </div>
              <span className={cn("text-xs font-medium text-center", activeFilter === 'shop' ? "text-purple-100" : "text-slate-400")}>
                {tr('messages.tabs.shop.desc', {
                  fr: 'Échanges avec les magasins professionnels',
                  en: 'Conversations with professional stores',
                  es: 'Conversaciones con tiendas profesionales',
                  it: 'Conversazioni con negozi professionali',
                  de: 'Unterhaltungen mit professionellen Geschäften',
                  ar: 'محادثات مع المتاجر المهنية',
                })}
              </span>
            </button>

            <button
              onClick={() => handleTabClick('job_offer')}
              className={cn(
                "flex-1 min-w-[220px] flex flex-col items-center justify-center gap-2 px-6 py-4 rounded-[20px] transition-all border-2 group",
                activeFilter === 'job_offer' 
                  ? "bg-gradient-to-r from-blue-600 via-indigo-600 to-cyan-600 text-white border-blue-500 shadow-[inset_0_2px_8px_rgba(255,255,255,0.4),0_12px_24px_-10px_rgba(59,130,246,0.7)] transform -translate-y-1.5" 
                  : "bg-white dark:bg-slate-800 text-slate-600 dark:text-slate-300 border-slate-200 dark:border-slate-700 shadow-[0_6px_15px_-5px_rgba(0,0,0,0.1)] hover:shadow-[0_10px_20px_-5px_rgba(59,130,246,0.3)] hover:-translate-y-1 hover:border-blue-300"
              )}
            >
              <div className="flex items-center gap-3">
                <div className={cn("p-2 rounded-xl shadow-inner", activeFilter === 'job_offer' ? "bg-white/20" : "bg-blue-50 dark:bg-blue-900/30 group-hover:bg-blue-100 dark:group-hover:bg-blue-900/50")}>
                  <Briefcase className={cn("h-6 w-6", activeFilter === 'job_offer' ? "text-white" : "text-blue-500")} />
                </div>
                <span className="text-lg font-extrabold">{tr('messages.tabs.job_offer.title', {
                  fr: 'Métiers',
                  en: 'Trades',
                  es: 'Oficios',
                  it: 'Mestieri',
                  de: 'Berufe',
                  ar: 'المهن',
                })}</span>
              </div>
              <span className={cn("text-xs font-medium text-center", activeFilter === 'job_offer' ? "text-blue-100" : "text-slate-400")}>
                {tr('messages.tabs.job_offer.desc', {
                  fr: 'Contacts pour des services et réparations',
                  en: 'Contacts for services and repairs',
                  es: 'Contactos para servicios y reparaciones',
                  it: 'Contatti per servizi e riparazioni',
                  de: 'Kontakte für Dienstleistungen und Reparaturen',
                  ar: 'جهات اتصال للخدمات والإصلاحات',
                })}
              </span>
            </button>
          </div>

          <div className="grid grid-cols-1 lg:grid-cols-3 gap-6 h-[600px]">
            {/* Liste des conversations */}
            <div className={`lg:col-span-1 h-full ${selectedConversationId ? 'hidden lg:block' : ''}`}>
              <div 
                className="h-full rounded-[24px] overflow-hidden flex flex-col"
                style={{
                  background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
                  boxShadow: '5px 5px 10px #bebebe, -5px -5px 10px #ffffff',
                  border: '1px solid rgba(255,255,255,0.6)'
                }}
              >
                <div className="h-full dark:bg-slate-800/90 dark:backdrop-blur-sm flex flex-col">
                  <div className="p-4 border-b border-border/10 backdrop-blur-md bg-white/30 dark:bg-slate-900/30">
                    <h2 className="text-lg font-semibold">{t('messages.conversations')}</h2>
                  </div>
                  <div className="flex-1 overflow-y-auto p-4 custom-scrollbar">
                    {initializing ? (
                      <div className="flex justify-center items-center h-full">
                        <Loader2 className="h-8 w-8 animate-spin text-primary" />
                      </div>
                    ) : (
                      <ConversationList
                        onSelectConversation={setSelectedConversationId}
                        selectedConversationId={selectedConversationId || undefined}
                        activeFilter={activeFilter}
                      />
                    )}
                  </div>
                </div>
              </div>
            </div>

            {/* Thread de messages */}
            <div className={`lg:col-span-2 h-full ${!selectedConversationId ? 'hidden lg:block' : ''}`}>
              {selectedConversationId ? (
                <MessageThread
                  conversationId={selectedConversationId}
                  onBack={() => setSelectedConversationId(null)}
                />
              ) : (
                <div 
                  className="h-full rounded-[24px] flex items-center justify-center p-8 text-center"
                  style={{
                    background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
                    boxShadow: '5px 5px 10px #bebebe, -5px -5px 10px #ffffff',
                    border: '1px solid rgba(255,255,255,0.6)'
                  }}
                >
                  <div className="max-w-md dark:text-white">
                    <div className="w-20 h-20 bg-primary/10 rounded-full flex items-center justify-center mx-auto mb-6 animate-pulse">
                      <MessageCircle className="h-10 w-10 text-primary" />
                    </div>
                    <h3 className="text-2xl font-bold mb-3 bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
                      {t('messages.selectConversation')}
                    </h3>
                    <p className="text-muted-foreground">
                      {t('messages.selectConversationDesc')}
                    </p>
                  </div>
                </div>
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default Messages;
