import LanguageSwitcher from "./LanguageSwitcher";
import UserMenu from "./UserMenu";
import HeaderLogo from "./HeaderLogo";
import ThemeToggle from "./ThemeToggle";
import { Download, PlusCircle, Store, Briefcase, Phone } from "lucide-react";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useAuth } from "@/contexts/useAuth";
import { LocalizedButtonLink } from "@/utils/linkUtils";
import AuthDrawer from "../auth/AuthDrawer";
import { Button } from "../ui/button";

const HeaderTopBar = () => {
  const { t, isRTL } = useSafeI18nWithRouter();
  const { user } = useAuth();

  return (
    <div className="bg-gray-100 dark:bg-slate-800 text-gray-600 dark:text-gray-300 text-xs border-b border-gray-200 dark:border-slate-700">
      <div className="container mx-auto px-4">
        <div className={`flex items-center justify-between py-1 ${isRTL ? 'flex-row-reverse' : ''}`}>
          {/* Left — Logo */}
          <HeaderLogo />

          {/* Right — Download + Langue + Connexion */}
          <div className={`flex items-center gap-3 ${isRTL ? 'flex-row-reverse' : ''}`}>

            {/* Contact Us */}
            <LocalizedButtonLink
              to="/contact"
              variant="ghost"
              size="sm"
              className="h-6 text-xs font-medium text-gray-500 dark:text-gray-400 hover:text-primary gap-1.5 px-2"
            >
              <Phone className="h-3.5 w-3.5" />
              <span className="hidden sm:inline">{t('paymentCancel.contactUs')}</span>
            </LocalizedButtonLink>

            {/* Quick Action Icons */}
            <LocalizedButtonLink
              to="/deposer-annonce"
              variant="ghost"
              size="sm"
              className="p-1 h-auto text-gray-500 dark:text-gray-400 hover:text-primary transition-colors"
              title={t('header.postAd')}
            >
              <PlusCircle className="h-4 w-4" />
            </LocalizedButtonLink>
            <LocalizedButtonLink
              to="/creer-boutique"
              variant="ghost"
              size="sm"
              className="p-1 h-auto text-gray-500 dark:text-gray-400 hover:text-primary transition-colors"
              title={t('header.createShop')}
            >
              <Store className="h-4 w-4" />
            </LocalizedButtonLink>
            <LocalizedButtonLink
              to="/deposer-offre-metier"
              variant="ghost"
              size="sm"
              className="p-1 h-auto text-gray-500 dark:text-gray-400 hover:text-primary transition-colors"
              title={t('header.search')}
            >
              <Briefcase className="h-4 w-4" />
            </LocalizedButtonLink>

            <span className="w-px h-3.5 bg-gray-300 dark:bg-gray-600" />

            {/* Download App */}
            <LocalizedButtonLink
              to="/telecharger-app"
              variant="ghost"
              size="sm"
              className="h-6 text-xs font-medium text-gray-500 dark:text-gray-400 hover:text-primary gap-1.5 px-2"
            >
              <Download className="h-3.5 w-3.5" />
              <span className="hidden sm:inline">{t('header.downloadApp')}</span>
            </LocalizedButtonLink>

            <span className="w-px h-3.5 bg-gray-300 dark:bg-gray-600" />

            {/* Language Switcher */}
            <div className="text-gray-600 dark:text-gray-300">
              <LanguageSwitcher />
            </div>

            <span className="w-px h-3.5 bg-gray-300 dark:bg-gray-600" />

            {/* Theme Toggle */}
            <ThemeToggle />

            <span className="w-px h-3.5 bg-gray-300 dark:bg-gray-600" />

            {/* User Authentication */}
            <div className="flex items-center">
              {user ? (
                <UserMenu />
              ) : (
                <AuthDrawer>
                  <Button
                    variant="ghost"
                    size="sm"
                    className="h-6 text-xs font-medium text-gray-500 dark:text-gray-400 hover:text-primary px-2"
                  >
                    {t('header.loginRegister')}
                  </Button>
                </AuthDrawer>
              )}
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default HeaderTopBar;
