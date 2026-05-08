import LanguageSwitcher from "./LanguageSwitcher";
import ThemeToggle from "./ThemeToggle";
import UserMenu from "./UserMenu";
import { useInactivityTimer } from "@/hooks/useInactivityTimer";

import { PlusCircle, Store, Download, Briefcase } from "lucide-react";
import DigitalClock from "./DigitalClock";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useAuth } from "@/contexts/useAuth";
import { LocalizedButtonLink } from "@/utils/linkUtils";
import AuthDrawer from "../auth/AuthDrawer";
import { Button } from "../ui/button";

const HeaderUserActions = () => {
  const { t, isRTL } = useSafeI18nWithRouter();
  const { user } = useAuth();

  // Activer le timer d'inactivité pour les utilisateurs connectés
  useInactivityTimer({ enabled: !!user });

  const iconBtnClass = "p-2 h-auto rounded-full text-gray-600 dark:text-gray-400 hover:text-primary hover:bg-gray-100 dark:hover:bg-slate-800 transition-all duration-200";

  return (
    <div className={`flex items-center ${isRTL ? 'gap-1' : 'gap-1'}`}>
      {/* Download App Button */}
      <LocalizedButtonLink
        to="/telecharger-app"
        variant="ghost"
        size="sm"
        className="h-8 text-xs font-medium text-gray-600 dark:text-gray-400 hover:text-primary gap-1.5"
      >
        <Download className="h-4 w-4" />
        <span className="hidden xl:inline">{t('header.downloadApp')}</span>
      </LocalizedButtonLink>
      
      {/* Language Switcher */}
      <div className="text-foreground">
        <LanguageSwitcher />
      </div>
      
      {/* User Authentication */}
      <div className="flex items-center text-foreground">
        {user ? (
          <UserMenu />
        ) : (
          <AuthDrawer>
            <Button
              variant="default"
              size="sm"
              className="h-8 text-xs font-medium bg-primary hover:bg-primary/90 text-white rounded-full px-4 shadow-sm"
            >
              {t('header.loginRegister')}
            </Button>
          </AuthDrawer>
        )}
      </div>
      
      {/* Quick Action Icons */}
      <div className="flex items-center gap-0.5">
        <LocalizedButtonLink
          to="/deposer-annonce"
          variant="ghost"
          size="sm"
          className={iconBtnClass}
          title={t('header.postAd')}
        >
          <PlusCircle className="h-5 w-5" />
        </LocalizedButtonLink>
        
        <LocalizedButtonLink
          to="/creer-boutique"
          variant="ghost"
          size="sm"
          className={iconBtnClass}
          title={t('header.createShop')}
        >
          <Store className="h-5 w-5" />
        </LocalizedButtonLink>
        
        <LocalizedButtonLink
          to="/deposer-offre-metier"
          variant="ghost"
          size="sm"
          className={iconBtnClass}
          title={t('header.search')}
        >
          <Briefcase className="h-5 w-5" />
        </LocalizedButtonLink>
        
        <span className={iconBtnClass + " cursor-pointer"}>
          <ThemeToggle />
        </span>
      </div>
      
      {/* Clock */}
      <DigitalClock />
    </div>
  );
};

export default HeaderUserActions;

