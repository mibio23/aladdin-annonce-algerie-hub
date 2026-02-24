import { useEffect, useState } from 'react';
import { MessageCircle, User, ShoppingBag, Briefcase, FileText } from 'lucide-react';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { formatDistanceToNow } from 'date-fns';
import { fr, ar, enUS, es, de, it } from 'date-fns/locale';
import { cn } from '@/lib/utils';
import { Skeleton } from '@/components/ui/skeleton';

interface Conversation {
  id: string;
  participant_1_id: string;
  participant_2_id: string;
  last_message_at: string;
  subject_type?: string | null;
  subject_id?: string | null;
  other_user?: {
    full_name?: string;
    avatar_url?: string;
    email?: string;
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
}

const ConversationList: React.FC<ConversationListProps> = ({ 
  onSelectConversation, 
  selectedConversationId 
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const [conversations, setConversations] = useState<Conversation[]>([]);
  const [loading, setLoading] = useState(true);

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

          return {
            ...conv,
            other_user: profileData || { full_name: 'Utilisateur', avatar_url: undefined },
            last_message: msgData
          };
        }));

        setConversations(enhancedConversations);
      } catch (error) {
        console.error('Error fetching conversations:', error);
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

  if (conversations.length === 0) {
    return (
      <div className="space-y-2">
        <div className="text-center py-8 text-muted-foreground">
          <div className="w-16 h-16 bg-muted/50 rounded-full flex items-center justify-center mx-auto mb-4">
            <MessageCircle className="h-8 w-8 opacity-50" />
          </div>
          <p className="font-medium">{t('messages.noConversations')}</p>
          <p className="text-sm mt-1">{t('messages.noConversationsDesc')}</p>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-2">
      {conversations.map((conversation) => {
        const isSelected = selectedConversationId === conversation.id;
        const isUnread = conversation.last_message?.is_read === false && conversation.last_message?.sender_id !== user?.id;
        
        return (
          <div
            key={conversation.id}
            onClick={() => onSelectConversation(conversation.id)}
            className={cn(
              "flex items-start gap-3 p-4 rounded-2xl cursor-pointer transition-all duration-300 group relative overflow-hidden mb-3",
              isSelected 
                ? "scale-[1.02]" 
                : "hover:scale-[1.02] hover:shadow-lg border border-transparent hover:border-white/20",
              isUnread && !isSelected && "bg-blue-50/50 dark:bg-blue-900/10"
            )}
            style={isSelected ? {
              background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
              boxShadow: '5px 5px 10px #bebebe, -5px -5px 10px #ffffff',
              border: '1px solid rgba(255,255,255,0.6)'
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
            
            {isSelected && <div className="absolute left-0 top-0 bottom-0 w-1.5 bg-gradient-to-b from-primary to-purple-600" />}
            
            <div className="relative">
              <Avatar className={cn(
                "h-12 w-12 border-2 transition-all shadow-sm",
                isSelected ? "border-primary/20" : "border-white/50 group-hover:border-white"
              )}>
                <AvatarImage src={conversation.other_user?.avatar_url} />
                <AvatarFallback className={cn(
                  "font-semibold",
                  isSelected ? "bg-primary/10 text-primary" : "bg-muted text-muted-foreground"
                )}>
                  {conversation.other_user?.full_name?.substring(0, 2).toUpperCase() || <User className="h-5 w-5" />}
                </AvatarFallback>
              </Avatar>
              {/* Online indicator could go here if we had real-time status */}
            </div>
            
            <div className="flex-1 min-w-0 py-0.5">
              <div className="flex justify-between items-start mb-0.5">
                <span className={cn(
                  "font-semibold text-sm truncate pr-2",
                  isUnread ? "text-foreground" : "text-foreground/90"
                )}>
                  {conversation.other_user?.full_name || 'Utilisateur'}
                </span>
                {conversation.last_message_at && (
                  <span className={cn(
                    "text-[10px] whitespace-nowrap",
                    isUnread ? "text-primary font-bold" : "text-muted-foreground"
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
                  "flex items-center gap-1 text-[10px] mb-1.5 px-2 py-0.5 rounded-full w-fit max-w-full truncate transition-colors",
                  isSelected ? "bg-primary/10 text-primary" : "bg-muted/50 text-muted-foreground group-hover:bg-white/50 dark:group-hover:bg-slate-700/50"
                )}>
                  {getSubjectIcon(conversation.subject_type)}
                  <span className="truncate">{getSubjectLabel(conversation.subject_type)}</span>
                </div>
              )}

              <p className={cn(
                "text-xs truncate leading-relaxed", 
                isUnread ? "text-foreground font-semibold" : "text-muted-foreground"
              )}>
                {conversation.last_message?.sender_id === user?.id && <span className="text-muted-foreground/70 mr-1">Vous:</span>}
                {conversation.last_message?.content || t('messages.noMessages')}
              </p>
            </div>
            
            {isUnread && (
              <div className="absolute right-3 top-1/2 -translate-y-1/2 w-3 h-3 bg-blue-600 rounded-full shadow-lg shadow-blue-500/50 animate-pulse" />
            )}
          </div>
        );
      })}
    </div>
  );
};

export default ConversationList;
