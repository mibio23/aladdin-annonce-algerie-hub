import { useEffect, useState, useRef } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { ArrowLeft, MessageCircle, Send, User, Smile, ExternalLink, ShoppingBag, Briefcase, FileText } from 'lucide-react';
import EmojiPicker, { Theme } from 'emoji-picker-react';
import { Popover, PopoverContent, PopoverTrigger } from '@/components/ui/popover';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import { supabase } from '@/integrations/supabase/client';
import { useAuth } from '@/contexts/useAuth';
import { logger } from '@/utils/silentLogger';
import { Avatar, AvatarFallback, AvatarImage } from '@/components/ui/avatar';
import { format } from 'date-fns';
import { cn } from '@/lib/utils';
import { ScrollArea } from '@/components/ui/scroll-area';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import { Link } from 'react-router-dom';

interface Message {
  id: string;
  content: string;
  sender_id: string;
  created_at: string;
  is_read: boolean;
}

interface MessageThreadProps {
  conversationId: string;
  onBack: () => void;
}

const MessageThread: React.FC<MessageThreadProps> = ({ 
  conversationId, 
  onBack 
}) => {
  const { t, isRTL } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { getLocalizedPath } = useLanguageNavigation();
  const [messages, setMessages] = useState<Message[]>([]);
  const [newMessage, setNewMessage] = useState('');
  const [sending, setSending] = useState(false);
  const scrollRef = useRef<HTMLDivElement>(null);
  const [otherUser, setOtherUser] = useState<{ id?: string, full_name?: string, avatar_url?: string } | null>(null);
  const [isOtherUserOnline, setIsOtherUserOnline] = useState(false);
  const [subjectDetails, setSubjectDetails] = useState<{
    type: string | null;
    id: string | null;
    title: string | null;
    price?: number | null;
    image_url?: string | null;
    link?: string;
  } | null>(null);

  // Fetch conversation details (to get other user info)
  useEffect(() => {
    const fetchConversationDetails = async () => {
      if (!user) return;
      
      const { data: conv } = await supabase
        .from('conversations')
        .select('participant_1_id, participant_2_id, subject_type, subject_id, title')
        .eq('id', conversationId)
        .single();
        
      if (conv) {
        const otherUserId = conv.participant_1_id === user.id ? conv.participant_2_id : conv.participant_1_id;
        const { data: profile } = await supabase
          .from('profiles')
          .select('full_name, avatar_url')
          .eq('user_id', otherUserId)
          .maybeSingle();
          
        setOtherUser({ id: otherUserId, ...profile });

        // Fetch subject details
        if (conv.subject_type && conv.subject_id) {
          let price = null;
          let image_url = null;
          let link = '';

          try {
            if (conv.subject_type === 'ad') {
              const { data: adData } = await supabase
                .from('announcements')
                .select('price, images')
                .eq('id', conv.subject_id)
                .maybeSingle();
              if (adData) {
                price = adData.price;
                image_url = adData.images?.[0];
              }
              link = `/annonce/${conv.subject_id}`;
            } else if (conv.subject_type === 'shop') {
              const { data: shopData } = await supabase
                .from('shops')
                .select('logo_url')
                .eq('id', conv.subject_id)
                .maybeSingle();
              if (shopData) {
                image_url = shopData.logo_url;
              }
              link = `/boutique/${conv.subject_id}`;
            } else if (conv.subject_type === 'job_offer') {
              const { data: jobData } = await supabase
                .from('professional_job_offers')
                .select('images')
                .eq('id', conv.subject_id)
                .maybeSingle();
              if (jobData) {
                image_url = jobData.images?.[0];
              }
              link = `/offre-metier/${conv.subject_id}`;
            }

            setSubjectDetails({
              type: conv.subject_type,
              id: conv.subject_id,
              title: conv.title,
              price,
              image_url,
              link
            });
          } catch (e) {
            logger.warn('Error fetching subject details', e);
          }
        }
      }
    };
    
    fetchConversationDetails();
  }, [conversationId, user]);

  // Check online status
  useEffect(() => {
    if (!otherUser?.id) return;

    // 1. Initial DB check
    const checkPresence = async () => {
      try {
        const { data, error } = await supabase
          .from('user_presence' as any)
          .select('last_seen_at, is_online')
          .eq('user_id', otherUser.id)
          .maybeSingle();

        if (error) throw error;

        const isOnlineDb = (data as any)?.is_online as boolean | null | undefined;
        const lastSeenAt = (data as any)?.last_seen_at as string | null | undefined;
        
        if (lastSeenAt && isOnlineDb) {
          const lastSeen = new Date(lastSeenAt);
          const now = new Date();
          const diffMinutes = (now.getTime() - lastSeen.getTime()) / (1000 * 60);
          setIsOtherUserOnline(diffMinutes < 5);
        } else {
          setIsOtherUserOnline(false);
        }
      } catch (err) {
        logger.warn('Error checking presence:', err);
        setIsOtherUserOnline(false);
      }
    };

    checkPresence();
    const interval = setInterval(checkPresence, 60000);

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
      // Check if other user is in the presence state
      if (state[otherUser.id] && state[otherUser.id].length > 0) {
        setIsOtherUserOnline(true);
      }
    };

    const onLeave = ({ key }: { key: string }) => {
      if (key === otherUser.id) {
        setIsOtherUserOnline(false);
      }
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
      // Ne pas appeler supabase.removeChannel(channel) ici car d'autres composants peuvent l'utiliser
    };
  }, [otherUser?.id]);

  // Fetch messages and subscribe
  useEffect(() => {
    if (!user) return;

    const fetchMessages = async () => {
      const { data, error } = await supabase
        .from('messages')
        .select('*')
        .eq('conversation_id', conversationId)
        .order('created_at', { ascending: true });

      if (error) {
        logger.error('Error fetching messages:', error);
      }

      if (data) {
        setMessages(data);
        // Mark as read
        const unreadIds = data
          .filter(m => !m.is_read && m.sender_id !== user.id)
          .map(m => m.id);
          
        if (unreadIds.length > 0) {
          await supabase
            .from('messages')
            .update({ is_read: true })
            .in('id', unreadIds);
          await supabase
            .from('conversations')
            .update({ updated_at: new Date().toISOString() })
            .eq('id', conversationId);
        }
      }
    };

    fetchMessages();

    const channel = supabase
      .channel(`conversation:${conversationId}`)
      .on('postgres_changes', { 
        event: 'INSERT', 
        schema: 'public', 
        table: 'messages',
        filter: `conversation_id=eq.${conversationId}` 
      }, (payload) => {
        const newMsg = payload.new as Message;
        
        // Use functional update to check for duplicates
        setMessages(prev => {
          // If message already exists (e.g. added locally), don't add it again
          if (prev.some(m => m.id === newMsg.id)) {
            return prev;
          }
          return [...prev, newMsg];
        });
        
        // Mark as read if receiving
        if (newMsg.sender_id !== user.id) {
          void supabase
            .from('messages')
            .update({ is_read: true })
            .eq('id', newMsg.id);
          void supabase
            .from('conversations')
            .update({ updated_at: new Date().toISOString() })
            .eq('id', conversationId);
        }
      })
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [conversationId, user]);

  // Auto-scroll to bottom
  useEffect(() => {
    if (scrollRef.current) {
      scrollRef.current.scrollIntoView({ behavior: 'smooth' });
    }
  }, [messages]);

  const handleSendMessage = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!newMessage.trim() || !user) return;

    setSending(true);
    try {
      const { data, error } = await supabase
        .from('messages')
        .insert({
          conversation_id: conversationId,
          sender_id: user.id,
          content: newMessage.trim(),
          is_read: false,
        })
        .select()
        .single();

      if (error) throw error;
      
      if (data) {
        setMessages(prev => [...prev, data as Message]);
        setNewMessage('');
        const now = new Date().toISOString();
        await supabase
          .from('conversations')
          .update({ updated_at: now, last_message_at: now })
          .eq('id', conversationId);
      }
    } catch (error) {
      logger.error('Error sending message:', error);
    } finally {
      setSending(false);
    }
  };

  return (
    <div 
      className="h-full flex flex-col rounded-[24px] overflow-hidden"
      style={{
        background: 'linear-gradient(145deg, #ffffff, #e6e6e6)',
        boxShadow: '5px 5px 10px #bebebe, -5px -5px 10px #ffffff',
        border: '1px solid rgba(255,255,255,0.6)'
      }}
    >
      <div className="flex-1 flex flex-col h-full dark:bg-slate-800/90 dark:backdrop-blur-sm">
        <div className="border-b py-3 px-4 backdrop-blur-md bg-white/30 dark:bg-slate-900/30">
          <div className="flex items-center gap-3">
            <Button 
              variant="ghost" 
              size="icon" 
              onClick={onBack}
              className="lg:hidden"
            >
              <ArrowLeft className="h-5 w-5" />
            </Button>
            
            <Avatar className="h-10 w-10 border-2 border-white/50 shadow-sm">
              <AvatarImage src={otherUser?.avatar_url} />
              <AvatarFallback className="bg-primary/10 text-primary font-semibold">
                {otherUser?.full_name?.substring(0, 2).toUpperCase() || <User className="h-5 w-5" />}
              </AvatarFallback>
            </Avatar>
            
            <div className="flex flex-col">
              <h3 className="text-base font-bold text-foreground">
                {otherUser?.full_name || t('messages.conversations')}
              </h3>
              {otherUser && (
                <span className="text-xs text-muted-foreground flex items-center gap-1">
                  {isOtherUserOnline ? (
                    <>
                      <span className="w-1.5 h-1.5 rounded-full bg-green-500 animate-pulse"></span>
                      {t('messages.online') === 'messages.online' ? 'En ligne' : t('messages.online')}
                    </>
                  ) : (
                    <>
                      <span className="w-1.5 h-1.5 rounded-full bg-slate-400"></span>
                      {t('messages.offline') === 'messages.offline' ? 'Hors ligne' : t('messages.offline')}
                    </>
                  )}
                </span>
              )}
            </div>
          </div>
        </div>
        
        <div className="flex-1 p-0 overflow-hidden bg-transparent">
          <ScrollArea className="h-[calc(600px-135px)] p-4 sm:p-6">
            <div className="space-y-6">
              
              {/* Summary Card */}
              {subjectDetails && subjectDetails.type && (
                <div className="mx-auto max-w-sm mb-8 relative group">
                  <div className={cn(
                    "absolute -inset-0.5 rounded-2xl blur opacity-30 group-hover:opacity-60 transition duration-500",
                    subjectDetails.type === 'ad' ? "bg-gradient-to-r from-green-500 to-emerald-500" :
                    subjectDetails.type === 'shop' ? "bg-gradient-to-r from-purple-500 to-fuchsia-500" :
                    "bg-gradient-to-r from-blue-500 to-cyan-500"
                  )}></div>
                  <div className="relative bg-white dark:bg-slate-900 rounded-2xl p-3 flex gap-4 items-center shadow-md border border-slate-100 dark:border-slate-800">
                    {/* Image */}
                    <div className="w-16 h-16 shrink-0 rounded-xl overflow-hidden bg-slate-100 dark:bg-slate-800 flex items-center justify-center border border-slate-200 dark:border-slate-700">
                      {subjectDetails.image_url ? (
                        <img src={subjectDetails.image_url} alt={subjectDetails.title || ''} className="w-full h-full object-cover" />
                      ) : (
                        subjectDetails.type === 'shop' ? <ShoppingBag className="h-6 w-6 text-slate-400" /> :
                        subjectDetails.type === 'job_offer' ? <Briefcase className="h-6 w-6 text-slate-400" /> :
                        <FileText className="h-6 w-6 text-slate-400" />
                      )}
                    </div>
                    
                    {/* Content */}
                    <div className="flex-1 min-w-0 py-1">
                      <div className="flex items-center gap-1.5 mb-1">
                        <span className={cn(
                          "text-[10px] font-bold uppercase tracking-wider px-2 py-0.5 rounded-full",
                          subjectDetails.type === 'ad' ? "bg-green-100 text-green-700 dark:bg-green-900/30 dark:text-green-400" :
                          subjectDetails.type === 'shop' ? "bg-purple-100 text-purple-700 dark:bg-purple-900/30 dark:text-purple-400" :
                          "bg-blue-100 text-blue-700 dark:bg-blue-900/30 dark:text-blue-400"
                        )}>
                          {subjectDetails.type === 'ad' ? 'Annonce' : subjectDetails.type === 'shop' ? 'Boutique' : 'Métier'}
                        </span>
                      </div>
                      <h4 className="font-semibold text-sm truncate text-slate-800 dark:text-slate-200">
                        {subjectDetails.title}
                      </h4>
                      {subjectDetails.price !== null && subjectDetails.price !== undefined && (
                        <p className="text-sm font-bold text-primary mt-0.5">{subjectDetails.price.toLocaleString()} DA</p>
                      )}
                    </div>

                    {/* Action */}
                    {subjectDetails.link && (
                      <Button asChild size="sm" variant="secondary" className="shrink-0 rounded-xl px-3 h-9 bg-slate-100 hover:bg-slate-200 dark:bg-slate-800 dark:hover:bg-slate-700 text-slate-700 dark:text-slate-300">
                        <Link to={getLocalizedPath(subjectDetails.link)}>
                          Voir
                          <ExternalLink className="h-3 w-3 ml-1.5 opacity-70" />
                        </Link>
                      </Button>
                    )}
                  </div>
                </div>
              )}

              {messages.length === 0 ? (
                <div className="text-center text-muted-foreground py-20 opacity-50 flex flex-col items-center">
                  <div className="w-20 h-20 bg-white/50 dark:bg-slate-700/50 rounded-full flex items-center justify-center mb-4 shadow-inner">
                     <MessageCircle className="h-10 w-10" />
                  </div>
                  <p className="font-medium text-lg">{t('messages.noMessages')}</p>
                  <p className="text-sm mt-1">{t('messages.typeMessage')}</p>
                </div>
              ) : (
                messages.map((message, index) => {
                  const isMe = message.sender_id === user?.id;
                  const showAvatar = !isMe && (index === 0 || messages[index - 1].sender_id !== message.sender_id);
                  
                  return (
                    <div 
                      key={message.id} 
                      className={cn(
                        "flex w-full gap-2",
                        isMe ? "justify-end" : "justify-start"
                      )}
                    >
                      {!isMe && (
                        <div className="w-8 flex-shrink-0 flex flex-col justify-end">
                          {showAvatar ? (
                            <Avatar className="h-8 w-8 border border-white/50 shadow-sm">
                              <AvatarImage src={otherUser?.avatar_url} />
                              <AvatarFallback className="text-[10px] bg-muted">
                                {otherUser?.full_name?.substring(0, 2).toUpperCase()}
                              </AvatarFallback>
                            </Avatar>
                          ) : <div className="w-8" />}
                        </div>
                      )}

                      <div 
                        className={cn(
                          "relative px-4 py-2.5 text-sm shadow-md max-w-[75%] sm:max-w-[70%] transition-all hover:scale-[1.01]",
                          isMe 
                            ? "bg-gradient-to-br from-blue-600 to-blue-700 text-white rounded-2xl rounded-tr-sm" 
                            : "bg-white/80 dark:bg-slate-800/80 backdrop-blur-sm border border-white/40 text-foreground rounded-2xl rounded-tl-sm"
                        )}
                      >
                        <p className="leading-relaxed whitespace-pre-wrap">{message.content}</p>
                        <p className={cn(
                          "text-[10px] mt-1.5 font-medium",
                          isMe ? "text-blue-100 text-right" : "text-muted-foreground text-left"
                        )}>
                          {format(new Date(message.created_at), 'HH:mm')}
                        </p>
                      </div>
                    </div>
                  );
                })
              )}
              <div ref={scrollRef} />
            </div>
          </ScrollArea>
        </div>
        
        <div className="p-3 sm:p-4 border-t border-border/10 backdrop-blur-md bg-white/30 dark:bg-slate-900/30">
          <form onSubmit={handleSendMessage} className="flex w-full gap-3 items-center">
            <Popover>
              <PopoverTrigger asChild>
                <Button 
                  type="button" 
                  variant="ghost" 
                  size="icon" 
                  className="h-11 w-11 rounded-full hover:bg-white/40 dark:hover:bg-slate-700/50 shrink-0 transition-all"
                >
                  <Smile className="h-6 w-6 text-muted-foreground hover:text-primary" />
                </Button>
              </PopoverTrigger>
              <PopoverContent side="top" align="start" className="w-auto p-0 border-none shadow-none bg-transparent mb-2">
                <EmojiPicker 
                  onEmojiClick={(emojiData) => setNewMessage(prev => prev + emojiData.emoji)}
                  theme={Theme.AUTO}
                  lazyLoadEmojis={true}
                  searchDisabled={false}
                  skinTonesDisabled
                  previewConfig={{ showPreview: false }}
                />
              </PopoverContent>
            </Popover>
            <Input 
              value={newMessage}
              onChange={(e) => setNewMessage(e.target.value)}
              placeholder={t('messages.typeMessage')}
              disabled={sending}
              className={cn(
                "flex-1 rounded-full border-white/40 dark:border-slate-700 focus-visible:ring-primary/20 h-11 px-5 shadow-inner bg-white/50 dark:bg-slate-800/50 backdrop-blur-sm",
                isRTL ? "text-right" : ""
              )}
            />
            <Button 
              type="submit" 
              size="icon" 
              disabled={sending || !newMessage.trim()}
              className="h-11 w-11 rounded-full shadow-lg shadow-primary/20 shrink-0 transition-transform active:scale-95 bg-gradient-to-r from-primary to-purple-600 hover:opacity-90 border-0"
            >
              <Send className="h-5 w-5 ml-0.5 text-white" />
            </Button>
          </form>
        </div>
      </div>
    </div>
  );
};

export default MessageThread;
