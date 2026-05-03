import { useEffect, useState } from 'react';
import { MessageCircle, User, ShoppingBag, Briefcase, FileText } from 'lucide-react';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { formatDistanceToNow } from 'date-fns';
import { fr, ar, enUS, es, de, it } from 'date-fns/locale';
import { cn } from '@/lib/utils';
import { Skeleton } from '@/components/ui/skeleton';

import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';

interface Conversation {
  id: string;
  participant_1_id: string;
  participant_2_id: string;
  last_message_at: string;
  subject_type?: string | null;
  subject_id?: string | null;
  title?: string | null;
  subject_image_url?: string | null;
  other_user?: {
    id?: string;
    full_name?: string;
    avatar_url?: string;
  };
  last_message?: {
    content: string;
    is_read: boolean;
    sender_id: string;
  };
}

interface ConversationListProps {
  onSelectConversation: (conversationId: string) => void;
  selectedConversationId?: string;
  activeFilter?: 'all' | 'ad' | 'shop' | 'job_offer';
}

const ConversationList: React.FC<ConversationListProps> = ({ 
  onSelectConversation, 
  selectedConversationId,
  activeFilter = 'all'
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [conversations, setConversations] = useState<Conversation[]>([]);
  const [loading, setLoading] = useState(true);
  const [onlineUsers, setOnlineUsers] = useState<Set<string>>(new Set());

  useEffect(() => {
    if (!user) return;

    const fetchConversations = async () => {
      try {
        // Fetch conversations where current user is a participant
        const { data: convData, error: convError } = await supabase
          .from('conversations')
          .select('*')
          .or(`participant_1_id.eq.${user.id},participant_2_id.eq.${user.id}`)
          .order('last_message_at', { ascending: false });

        if (convError) throw convError;

        if (!convData) {
          setConversations([]);
          return;
        }

        // Enhance conversations with other user details and last message
        const enhancedConversations = await Promise.all(convData.map(async (conv) => {
          const otherUserId = conv.participant_1_id === user.id ? conv.participant_2_id : conv.participant_1_id;
          
          // Fetch other user profile (from profiles table or metadata if possible, but usually profiles)
          // For now, let's try to get it from a public profile view or similar if exists, 
          // or just assume we might need a separate query. 
          // Note: accessing auth.users is restricted. We should rely on a public profiles table.
          const { data: profileData } = await supabase
            .from('profiles')
            .select('full_name, avatar_url')
            .eq('user_id', otherUserId)
            .maybeSingle();

          // Fetch last message
          const { data: msgData } = await supabase
            .from('messages')
            .select('content, is_read, sender_id')
            .eq('conversation_id', conv.id)
            .order('created_at', { ascending: false })
            .limit(1)
            .single();

          // Fetch subject image
          let subjectImageUrl = null;
          if (conv.subject_type && conv.subject_id) {
            try {
              if (conv.subject_type === 'ad') {
                const { data } = await supabase.from('announcements').select('images').eq('id', conv.subject_id).maybeSingle();
                if (data && data.images) subjectImageUrl = data.images[0];
              } else if (conv.subject_type === 'shop') {
                const { data } = await supabase.from('shops').select('logo_url').eq('id', conv.subject_id).maybeSingle();
                if (data) subjectImageUrl = data.logo_url;
              } else if (conv.subject_type === 'job_offer') {
                const { data } = await supabase.from('professional_job_offers').select('images').eq('id', conv.subject_id).maybeSingle();
                if (data && data.images) subjectImageUrl = data.images[0];
              }
            } catch (e) {
              logger.warn('Error fetching image for list', e);
            }
          }

          return {
            ...conv,
            subject_image_url: subjectImageUrl,
            other_user: { id: otherUserId, ...profileData } || { id: otherUserId, full_name: 'Utilisateur', avatar_url: undefined },
            last_message: msgData
          };
        }));

        setConversations(enhancedConversations);
      } catch (error) {
        logger.error('Error fetching conversations:', error);
      } finally {
        setLoading(false);
      }
    };

    fetchConversations();

    // Subscribe to new messages/conversations changes could be added here
    const channel = supabase
      .channel('public:conversations')
      .on('postgres_changes', { 
        event: '*', 
        schema: 'public', 
        table: 'conversations',
        filter: `participant_1_id=eq.${user.id}` 
      }, () => fetchConversations())
      .on('postgres_changes', { 
        event: '*', 
        schema: 'public', 
        table: 'conversations',
        filter: `participant_2_id=eq.${user.id}` 
      }, () => fetchConversations())
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [user]);

  const getDateLocale = () => {
    switch (language) {
      case 'ar': return ar;
      case 'en': return enUS;
      case 'es': return es;
      case 'de': return de;
      case 'it': return it;
      default: return fr;
    }
  };

  const getSubjectIcon = (type?: string | null) => {
    switch (type) {
      case 'ad': return <FileText className="h-3 w-3" />;
      case 'shop': return <ShoppingBag className="h-3 w-3" />;
      case 'job_offer': return <Briefcase className="h-3 w-3" />;
      default: return null;
    }
  };

  const getSubjectLabel = (type?: string | null) => {
    switch (type) {
      case 'ad': return t('header.announcements');
      case 'shop': return t('header.shops');
      case 'job_offer': return t('navigation.productSearch');
      default: return null;
    }
  };

  useEffect(() => {
    const fetchOnlineStatuses = async () => {
      try {
        const userIds = new Set<string>();
        conversations.forEach(conv => {
          const otherId = conv.participant_1_id === user.id ? conv.participant_2_id : conv.participant_1_id;
          if (otherId) userIds.add(otherId);
        });

        if (userIds.size === 0) return;

        const { data, error } = await supabase
          .from('user_presence')
          .select('user_id, last_seen_at, is_online')
          .in('user_id', Array.from(userIds));

        if (error) throw error;

        const onlineSet = new Set<string>();
        const now = new Date();

        data?.forEach((presence: any) => {
          if (presence.last_seen_at && presence.is_online) {
            const lastSeen = new Date(presence.last_seen_at);
            const diffMinutes = (now.getTime() - lastSeen.getTime()) / (1000 * 60);
            if (diffMinutes < 5) {
              onlineSet.add(presence.user_id);
            }
          }
        });

        setOnlineUsers(prev => {
          const next = new Set(onlineSet);
          // Combine with realtime state if available
          const channel = supabase.getChannels().find(c => c.topic === 'realtime:global_presence');
          if (channel) {
            const state = channel.presenceState();
            Object.keys(state).forEach(key => {
              if (state[key] && state[key].length > 0) {
                next.add(key);
              }
            });
          }
          return next;
        });
      } catch (err) {
        logger.warn('Error fetching online statuses:', err);
      }
    };

    fetchOnlineStatuses();
    const interval = setInterval(fetchOnlineStatuses, 60000);

    // 2. Direct Realtime Presence Subscription
    let channel = supabase.getChannels().find(c => c.topic === 'realtime:global_presence');
    let isNewChannel = false;

    if (!channel) {
      channel = supabase.channel('global_presence');
      isNewChannel = true;
    }

    const onSync = () => {
      if (!channel) return;
      const state = channel.presenceState();
      
      setOnlineUsers(prev => {
        const newSet = new Set(prev);
        // We add users that are present in the state
        Object.keys(state).forEach(key => {
          if (state[key] && state[key].length > 0) {
            newSet.add(key);
          }
        });
        
        return newSet;
      });
    };

    const onLeave = ({ key }: { key: string }) => {
      setOnlineUsers(prev => {
        const newSet = new Set(prev);
        newSet.delete(key);
        return newSet;
      });
    };

    channel.on('presence', { event: 'sync' }, onSync);
    channel.on('presence', { event: 'leave' }, onLeave);

    if (isNewChannel) {
      channel.subscribe();
    } else {
      onSync();
    }

    return () => {
      clearInterval(interval);
      // Ne pas détruire le canal global
    };
  }, [conversations]);

  const filteredConversations = conversations.filter(conv => {
    if (activeFilter === 'all') return true;
    return conv.subject_type === activeFilter;
  });

  if (loading) {
    return (
      <div className="space-y-4 p-4">
        {[1, 2, 3].map((i) => (
          <div key={i} className="flex items-center gap-3">
            <Skeleton className="h-10 w-10 rounded-full" />
            <div className="space-y-2 flex-1">
              <Skeleton className="h-4 w-[150px]" />
              <Skeleton className="h-3 w-[100px]" />
            </div>
          </div>
        ))}
      </div>
    );
  }

  return (
    <div className="flex flex-col h-full">
      <div className="flex-1 overflow-y-auto space-y-2 pr-1 custom-scrollbar">
        {filteredConversations.length === 0 ? (
          <div className="text-center py-8 text-muted-foreground">
            <div className="w-16 h-16 bg-muted/50 rounded-full flex items-center justify-center mx-auto mb-4">
              <MessageCircle className="h-8 w-8 opacity-50" />
            </div>
            <p className="font-medium">{t('messages.noConversations')}</p>
            <p className="text-sm mt-1">{t('messages.noConversationsDesc')}</p>
          </div>
        ) : (
          filteredConversations.map((conversation) => {
            const isSelected = selectedConversationId === conversation.id;
            const isUnread = conversation.last_message?.is_read === false && conversation.last_message?.sender_id !== user?.id;
            
            // Get gradient style based on subject_type
            let gradientClass = "from-primary to-purple-600";
            if (conversation.subject_type === 'ad') gradientClass = "from-green-500 to-emerald-500";
            if (conversation.subject_type === 'shop') gradientClass = "from-purple-500 to-fuchsia-500";
            if (conversation.subject_type === 'job_offer') gradientClass = "from-blue-500 to-cyan-500";

            const isOnline = conversation.other_user?.id ? onlineUsers.has(conversation.other_user.id) : false;

            return (
              <div
                key={conversation.id}
                onClick={() => onSelectConversation(conversation.id)}
                className={cn(
                  "flex items-start gap-3 p-4 rounded-2xl cursor-pointer transition-all duration-300 group relative overflow-hidden mb-3",
                  isSelected 
                    ? "scale-[1.02]" 
                    : "hover:scale-[1.02] hover:shadow-lg border border-transparent hover:border-slate-200 dark:hover:border-slate-700 bg-white/50 dark:bg-slate-800/50 hover:bg-white dark:hover:bg-slate-800",
                  isUnread && !isSelected && "bg-blue-50/80 dark:bg-blue-900/20 border-blue-100 dark:border-blue-800"
                )}
                style={isSelected ? {
                  background: 'linear-gradient(145deg, #ffffff, #f0f0f0)',
                  boxShadow: '4px 4px 8px #d9d9d9, -4px -4px 8px #ffffff',
                  border: '1px solid rgba(255,255,255,0.8)'
                } : {}}
              >
                {/* Dark mode override for selected state */}
                {isSelected && (
                  <div className="hidden dark:block absolute inset-0 -z-10 bg-slate-800" 
                       style={{
                         background: 'linear-gradient(145deg, #1e293b, #0f172a)',
                       }} 
                  />
                )}
                
                {isSelected && <div className={`absolute left-0 top-0 bottom-0 w-1.5 bg-gradient-to-b ${gradientClass}`} />}
                
                <div className="relative shrink-0">
                  <Avatar className={cn(
                    "h-14 w-14 border-2 transition-all shadow-sm bg-white dark:bg-slate-800",
                    isSelected ? "border-transparent" : "border-slate-100 dark:border-slate-700 group-hover:border-slate-300 dark:group-hover:border-slate-600"
                  )}>
                    <AvatarImage src={conversation.other_user?.avatar_url} />
                    <AvatarFallback className={cn(
                      "font-semibold text-lg",
                      isSelected ? "bg-primary/10 text-primary" : "bg-slate-100 dark:bg-slate-700 text-slate-600 dark:text-slate-300"
                    )}>
                      {conversation.other_user?.full_name?.substring(0, 2).toUpperCase() || <User className="h-6 w-6" />}
                    </AvatarFallback>
                  </Avatar>
                  {/* Online indicator */}
                  {isOnline && (
                    <div className="absolute top-0 right-0 w-3.5 h-3.5 bg-green-500 border-2 border-white dark:border-slate-800 rounded-full z-20"></div>
                  )}
                  {/* Subject Image */}
                  {conversation.subject_image_url && (
                    <div className="absolute -bottom-1 -right-1 w-6 h-6 rounded-full border-2 border-white dark:border-slate-800 overflow-hidden bg-slate-100 dark:bg-slate-700 shadow-sm z-10">
                      <img src={conversation.subject_image_url} alt="" className="w-full h-full object-cover" />
                    </div>
                  )}
                </div>
                
                <div className="flex-1 min-w-0 py-0.5 flex flex-col justify-center">
                  <div className="flex justify-between items-start mb-1">
                    <span className={cn(
                      "font-semibold text-sm truncate pr-2",
                      isUnread ? "text-slate-900 dark:text-white" : "text-slate-700 dark:text-slate-200"
                    )}>
                      {conversation.other_user?.full_name || 'Utilisateur'}
                    </span>
                    {conversation.last_message_at && (
                      <span className={cn(
                        "text-[10px] whitespace-nowrap",
                        isUnread ? "text-blue-600 dark:text-blue-400 font-bold" : "text-slate-400 dark:text-slate-500"
                      )}>
                        {formatDistanceToNow(new Date(conversation.last_message_at), { 
                          addSuffix: true,
                          locale: getDateLocale()
                        })}
                      </span>
                    )}
                  </div>

                  {conversation.subject_type && (
                    <div className={cn(
                      "flex items-center gap-1.5 text-[10px] mb-2 px-2.5 py-1 rounded-md w-fit max-w-full truncate transition-colors font-medium border",
                      conversation.subject_type === 'ad' && "bg-green-50 dark:bg-green-900/30 text-green-700 dark:text-green-300 border-green-200 dark:border-green-800",
                      conversation.subject_type === 'shop' && "bg-purple-50 dark:bg-purple-900/30 text-purple-700 dark:text-purple-300 border-purple-200 dark:border-purple-800",
                      conversation.subject_type === 'job_offer' && "bg-blue-50 dark:bg-blue-900/30 text-blue-700 dark:text-blue-300 border-blue-200 dark:border-blue-800"
                    )}>
                      {getSubjectIcon(conversation.subject_type)}
                      <span className="font-bold">{getSubjectLabel(conversation.subject_type)}</span>
                      {conversation.title && (
                        <>
                          <span className="opacity-40 mx-0.5">•</span>
                          <span className="truncate opacity-90" title={conversation.title}>{conversation.title}</span>
                        </>
                      )}
                    </div>
                  )}

                  <p className={cn(
                    "text-xs truncate leading-relaxed", 
                    isUnread ? "text-slate-800 dark:text-slate-200 font-semibold" : "text-slate-500 dark:text-slate-400"
                  )}>
                    {conversation.last_message?.sender_id === user?.id && <span className="text-slate-400 dark:text-slate-500 mr-1">Vous:</span>}
                    {conversation.last_message?.content || t('messages.noMessages')}
                  </p>
                </div>
                
                {isUnread && (
                  <div className="absolute right-3 top-1/2 -translate-y-1/2 w-3 h-3 bg-blue-600 rounded-full shadow-lg shadow-blue-500/50 animate-pulse" />
                )}
              </div>
            );
          })
        )}
      </div>
    </div>
  );
};

export default ConversationList;
