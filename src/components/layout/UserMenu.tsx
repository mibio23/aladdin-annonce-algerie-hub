import { LocalizedLink } from '@/utils/linkUtils';
import { 
  Settings, 
  Heart, 
  FileText, 
  Store, 
  LayoutDashboard, 
  LogOut,
  Briefcase,
  MessageCircle
} from 'lucide-react';
import {
  DropdownMenu,
  DropdownMenuContent,
  DropdownMenuItem,
  DropdownMenuLabel,
  DropdownMenuSeparator,
  DropdownMenuTrigger,
} from '@/components/ui/dropdown-menu';
import { Button } from '@/components/ui/button';
import { useAuth } from '@/contexts/useAuth';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import { useProfile } from '@/hooks/useProfile';
import AvatarDisplay from '@/components/avatar/AvatarDisplay';
import { logger } from '@/utils/silentLogger';

interface UserMenuProps {
  className?: string;
}

const UserMenu: React.FC<UserMenuProps> = ({ className }) => {
  const { user, signOut } = useAuth();
  const { t, isRTL } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageNavigation();
  const { profile } = useProfile();

  if (!user) return null;
  
  // Prioritize profile avatar, fallback to user metadata
  const avatarUrl = profile?.avatar_url || user.user_metadata?.avatar_url;
  const displayName = profile?.display_name || user.user_metadata?.full_name || user.email?.split('@')[0] || 'User';
  const userInitials = displayName.substring(0, 2).toUpperCase();

  const menuItems = [
    {
      icon: LayoutDashboard,
      label: t('navigation.dashboard'),
      href: '/dashboard',
      description: t('dashboard.subtitle'),
      color: 'text-blue-600 dark:text-blue-400'
    },
    {
      icon: FileText,
      label: t('navigation.myAds'),
      href: '/mes-annonces',
      description: t('dashboard.myAdsDesc'),
      color: 'text-green-600 dark:text-green-400'
    },
    {
      icon: Store,
      label: t('navigation.myShops'),
      href: '/mes-boutiques',
      description: t('myShops.subtitle'),
      color: 'text-purple-600 dark:text-purple-400'
    },
    {
              icon: Heart,
              label: t('navigation.myFavorites'),
              href: '/mes-favoris',
              description: t('dashboard.favoritesDesc'),
              color: 'text-red-600 dark:text-red-400'
            },
            {
              icon: MessageCircle,
              label: t('dashboard.messages'),
              href: '/messages',
              description: t('dashboard.messagesDesc'),
              color: 'text-blue-500 dark:text-blue-400'
            },
            {
              icon: Briefcase,
      label: t('navigation.productSearch'),
      href: '/mes-offres-metiers',
      description: t('navigation.productSearchDesc'),
      color: 'text-orange-600 dark:text-orange-400'
    }
  ];

  const handleSignOut = async () => {
    try {
      await signOut();
      // Rediriger vers la page principale après déconnexion
      window.location.href = getLocalizedPath('/');
    } catch (error) {
      logger.error('Error signing out:', error);
      // En cas d'erreur, forcer la redirection vers la page principale
      window.location.href = getLocalizedPath('/');
    }
  };

  return (
    <DropdownMenu>
      <DropdownMenuTrigger asChild>
        <Button variant="ghost" className={`h-12 w-12 rounded-full ${className}`}>
          <AvatarDisplay 
            src={avatarUrl}
            alt={displayName}
            fallback={userInitials}
            size="md"
          />
        </Button>
      </DropdownMenuTrigger>
      
      <DropdownMenuContent className={`w-80 p-2 dropdown-menu-content ${isRTL ? 'text-right' : ''}`} align="end" forceMount style={isRTL ? { direction: 'rtl' } : undefined}>
        <DropdownMenuLabel className="font-normal">
          <div className="flex flex-col space-y-3">
            <div className={`flex items-center gap-3 ${isRTL ? 'flex-row' : ''}`}>
              <AvatarDisplay 
                src={avatarUrl}
                alt={displayName}
                fallback={userInitials}
                size="lg"
              />
              <p className={`text-sm font-medium leading-none ${isRTL ? 'text-right' : ''}`}>{displayName}</p>
            </div>
            
            <div className={`flex flex-col ${isRTL ? 'items-start' : 'items-start'}`}>
              <p className={`text-xs leading-none text-muted-foreground ${isRTL ? 'text-right w-full' : ''}`}>
                {user.email}
              </p>
              {profile?.public_user_id != null && (
                <div className={`text-xs leading-none text-muted-foreground mt-6 ${isRTL ? 'text-right w-full' : ''}`}>
                  {t('profile.userId')}: 
                  <span className="inline-block mx-1">
                    <span className="px-2 py-0.5 border rounded font-mono font-bold text-red-600 bg-red-50 dark:bg-red-950/30 border-red-100 dark:border-red-900">
                      {String(profile.public_user_id).padStart(14, '0')}
                    </span>
                  </span>
                </div>
              )}
            </div>
          </div>
        </DropdownMenuLabel>
        
        <DropdownMenuSeparator />
        
        {menuItems.map((item) => (
          <DropdownMenuItem key={item.href} asChild className="cursor-pointer p-3 dropdown-menu-item">
            <LocalizedLink 
              to={item.href} 
              className={`flex items-start gap-3 ${isRTL ? 'flex-row' : ''}`}
              dir={isRTL ? 'rtl' : 'ltr'}
            >
              <item.icon className={`h-7 w-7 mt-0.5 flex-shrink-0 ${item.color}`} />
              <div className="flex flex-col space-y-1 flex-1">
                <span className={`text-sm font-medium text-muted-foreground line-clamp-2 ${isRTL ? 'text-right' : ''}`}>{item.label}</span>
                <span className={`text-xs text-muted-foreground line-clamp-2 ${isRTL ? 'text-right' : ''}`}>
                  {item.description}
                </span>
              </div>
            </LocalizedLink>
          </DropdownMenuItem>
        ))}
        
        <DropdownMenuSeparator />
        
        <DropdownMenuItem asChild className="cursor-pointer p-3 dropdown-menu-item">
          <LocalizedLink 
            to="/parametres" 
            className={`flex items-start gap-3 ${isRTL ? 'flex-row' : ''}`}
            dir={isRTL ? 'rtl' : 'ltr'}
          >
            <Settings className="h-7 w-7 mt-0.5 flex-shrink-0 text-gray-600 dark:text-gray-400" />
            <div className="flex flex-col space-y-1 flex-1">
              <span className={`text-sm font-medium text-muted-foreground line-clamp-2 ${isRTL ? 'text-right' : ''}`}>{t('navigation.settings')}</span>
              <span className={`text-xs text-muted-foreground line-clamp-2 ${isRTL ? 'text-right' : ''}`}>
                {t('dashboard.settingsDesc')}
              </span>
            </div>
          </LocalizedLink>
        </DropdownMenuItem>
        
        <DropdownMenuSeparator />
        
        <DropdownMenuItem 
          onClick={handleSignOut} 
          className={`cursor-pointer p-3 dropdown-menu-item text-red-600 focus:text-red-600 focus:bg-red-50 dark:focus:bg-red-950 flex items-start gap-3 ${isRTL ? 'flex-row' : ''}`}
          dir={isRTL ? 'rtl' : 'ltr'}
        >
          <LogOut className="h-7 w-7 flex-shrink-0 mt-0.5" />
          <span className={`text-sm font-medium flex-1 mt-1 ${isRTL ? 'text-right' : ''}`}>{t('navigation.logout')}</span>
        </DropdownMenuItem>
      </DropdownMenuContent>
    </DropdownMenu>
  );
};

export default UserMenu;