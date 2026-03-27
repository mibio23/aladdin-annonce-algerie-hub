import { useState, useEffect } from 'react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useAuth } from '@/contexts/useAuth';
import { MessageCircle, Loader2 } from 'lucide-react';
import ConversationList from '@/components/messaging/ConversationList';
import MessageThread from '@/components/messaging/MessageThread';
import { useSearchParams } from 'react-router-dom';
import { supabase } from '@/integrations/supabase/client';

const Messages = () => {
  const { t } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [selectedConversationId, setSelectedConversationId] = useState<string | null>(null);
  const [searchParams, setSearchParams] = useSearchParams();
  const [initializing, setInitializing] = useState(false);

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
                 title: title || 'Nouvelle conversation',
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
            <h2 className="text-2xl font-bold mb-4">{t('auth.loginRequired')}</h2>
            <p className="text-muted-foreground">
              {t('messages.loginRequiredDesc')}
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
            <div className="dark:bg-slate-800/90 dark:backdrop-blur-sm p-6">
              <div className="flex items-center gap-3">
                <div className="p-3 rounded-full bg-primary/10">
                  <MessageCircle className="h-8 w-8 text-primary" />
                </div>
                <div>
                  <h1 className="text-2xl font-bold bg-clip-text text-transparent bg-gradient-to-r from-primary to-purple-600">
                    {t('messages.title')}
                  </h1>
                  <p className="text-muted-foreground">{t('messages.subtitle')}</p>
                </div>
              </div>
            </div>
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
