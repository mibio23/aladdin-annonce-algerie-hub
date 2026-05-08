
import React, { useState, useCallback } from "react";
import HeaderLogo from "./HeaderLogo";
import HeaderDesktopNav from "./HeaderDesktopNav";
import HeaderUserActions from "./HeaderUserActions";
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
    <header className="sticky top-0 z-50 w-full backdrop-blur-xl bg-white/85 dark:bg-slate-900/90 border-b border-gray-200/60 dark:border-slate-700/50 shadow-[0_1px_3px_rgba(0,0,0,0.06)]">
      <div className="container mx-auto px-4 py-1.5">
        <div className={`flex items-center justify-between ${isRTL ? 'flex-row-reverse' : ''}`}>
          {/* Left side - Logo */}
          <div className="flex items-center">
            <HeaderLogo />
          </div>

          {/* Center - Navigation Menu (Desktop only) */}
          <div className="hidden lg:flex items-center justify-center flex-1 mx-8">
            <HeaderDesktopNav />
          </div>

          {/* Right side - User Actions */}
          <div className="flex items-center">
            <HeaderUserActions />
          </div>

          {/* Mobile Toggle */}
          <div className="lg:hidden ml-2">
            <HeaderMobileToggle isMenuOpen={isMenuOpen} toggleMenu={toggleMenu} />
          </div>
        </div>
      </div>

      {/* Mobile Menu */}
      <HeaderMobileNav isMenuOpen={isMenuOpen} />
      
      {/* Menu Preloader - Component invisible pour le préchargement intelligent */}
      <MenuPreloader />
    </header>
  );
};

const MemoizedHeader = React.memo(Header);
MemoizedHeader.displayName = 'Header';

export default MemoizedHeader;
