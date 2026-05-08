
import React, { useState, useCallback } from "react";
import HeaderDesktopNav from "./HeaderDesktopNav";
import HeaderTopBar from "./HeaderTopBar";
import HeaderMainActions from "./HeaderMainActions";
import HeaderMobileToggle from "./HeaderMobileToggle";
import HeaderMobileNav from "./HeaderMobileNav";
import MenuPreloader from "./nav/MenuPreloader";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

const Header = () => {
  const [isMenuOpen, setIsMenuOpen] = useState(false);
  const { isRTL } = useSafeI18nWithRouter();

  const toggleMenu = useCallback(() => {
    setIsMenuOpen((prev: boolean) => !prev);
  }, []);

  return (
    <header className="sticky top-0 z-50 w-full">
      {/* Top Bar — Logo, Télécharger, Langue, Connexion */}
      <HeaderTopBar />

      {/* Main Header — Navigation, Actions */}
      <div className="backdrop-blur-xl bg-white/85 dark:bg-slate-900/90 border-b border-gray-200/60 dark:border-slate-700/50 shadow-[0_1px_3px_rgba(0,0,0,0.06)]">
        <div className="container mx-auto px-4 py-1.5">
          <div className={`flex items-center justify-between ${isRTL ? 'flex-row-reverse' : ''}`}>
            {/* Left in FR / Right in AR — Navigation Menu (Desktop only) */}
            <div className="hidden lg:flex items-center">
              <HeaderDesktopNav />
            </div>

            {/* Right in FR / Left in AR — Actions (icons, theme, clock) */}
            <div className="flex items-center">
              <HeaderMainActions />
            </div>

            {/* Mobile Toggle */}
            <div className="lg:hidden ml-2">
              <HeaderMobileToggle isMenuOpen={isMenuOpen} toggleMenu={toggleMenu} />
            </div>
          </div>
        </div>
      </div>

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

