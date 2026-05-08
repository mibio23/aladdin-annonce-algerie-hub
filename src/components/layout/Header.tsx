
import React, { useState, useCallback, Suspense } from "react";
import HeaderDesktopNav from "./HeaderDesktopNav";
import HeaderTopBar from "./HeaderTopBar";
import HeaderMainActions from "./HeaderMainActions";
import HeaderMobileToggle from "./HeaderMobileToggle";
import HeaderMobileNav from "./HeaderMobileNav";
import MenuPreloader from "./nav/MenuPreloader";
import DigitalClock from "./DigitalClock";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useActionButtonsData } from "@/data/actionButtonsData";
import { LocalizedLink } from "@/utils/linkUtils";

const AdvancedSearchBar = React.lazy(() => import("@/components/home/AdvancedSearchBar"));

const Header = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const { isRTL } = useSafeI18nWithRouter();
  const actionButtons = useActionButtonsData();

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev: boolean) => !prev);
  }, []);

  return (
    <header className="sticky top-0 z-50 w-full">
      {/* Top Bar — Logo, Contact, Télécharger, Langue, Theme, Connexion */}
      <HeaderTopBar />

      {/* Main Header — Navigation vs CTA Buttons + Clock */}
      <div className="backdrop-blur-xl bg-white/85 dark:bg-slate-900/90 border-b border-gray-200/60 dark:border-slate-700/50 shadow-[0_1px_3px_rgba(0,0,0,0.06)]">
        <div className="container mx-auto px-4 py-1.5">
          <div className={`flex items-center justify-between ${isRTL ? 'flex-row-reverse' : ''}`}>
            {/* Left in FR / Right in AR — Navigation Menu (Desktop only) */}
            <div className="hidden lg:flex items-center">
              <HeaderDesktopNav />
            </div>

            {/* Right in FR / Left in AR — 3 CTA Buttons + Clock */}
            <div className={`hidden lg:flex items-center gap-3 ${isRTL ? 'flex-row-reverse' : ''}`}>
              {actionButtons.map((btn, index) => (
                <LocalizedLink
                  key={index}
                  to={btn.to}
                  className="flex items-center gap-2 px-5 py-1.5 rounded-full border-2 border-gray-800 dark:border-gray-400 text-gray-900 dark:text-gray-200 bg-transparent hover:bg-black hover:border-brand-gold hover:text-brand-gold hover:scale-105 hover:-translate-y-1 backdrop-blur-sm transition-all duration-300 ease-in-out text-sm font-medium whitespace-nowrap transform"
                >
                  <btn.Icon className={`h-5 w-5 ${btn.iconColor || ''}`} />
                  {btn.text}
                </LocalizedLink>
              ))}
              <DigitalClock />
            </div>

            {/* Mobile Toggle */}
            <div className="lg:hidden ml-2">
              <HeaderMobileToggle isMenuOpen={isMenuOpen} toggleMenu={toggleMenu} />
            </div>
          </div>
        </div>
      </div>

      {/* Barre de recherche avancée — juste après les 2 headers */}
      <div className="bg-white/95 dark:bg-slate-900/95 border-b border-gray-200/60 dark:border-slate-700/50">
        <div className="container mx-auto px-4 py-2">
          <Suspense fallback={<div className="h-12 animate-pulse bg-gray-100 dark:bg-slate-800 rounded-lg" />}>
            <AdvancedSearchBar />
          </Suspense>
        </div>
      </div>

      {/* Inactivity Timer (invisible) */}
      <HeaderMainActions />

      {/* Mobile Menu */}
      <HeaderMobileNav isMenuOpen={isMenuOpen} />
      
      {/* Menu Preloader */}
      <MenuPreloader />
    </header>
  );
};

const MemoizedHeader = React.memo(Header);
MemoizedHeader.displayName = 'Header';

export default MemoizedHeader;

