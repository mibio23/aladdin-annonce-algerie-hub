import {
  NavigationMenu,
  NavigationMenuContent,
  NavigationMenuItem,
  NavigationMenuList,
  NavigationMenuTrigger,
} from "@/components/ui/navigation-menu";
import BoutiquesDropdownContent from "./nav/BoutiquesDropdownContent";
import MetierReparateurDropdownContent from "./nav/MetierReparateurDropdownContent";
import MegaMenuCategories from "./nav/MegaMenuCategories";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { Menu, ShoppingBag, HardHat } from "lucide-react";

const HeaderDesktopNav = () => {
  const { t, isRTL } = useSafeI18nWithRouter();

  const navLinkClass = "h-8 px-3 text-sm font-medium text-gray-700 dark:text-gray-300 bg-transparent hover:bg-transparent data-[state=open]:bg-transparent hover:text-gray-900 dark:hover:text-white transition-colors font-['Changa',Arial,sans-serif]";

  return (
    <div className={`flex items-center ${isRTL ? 'gap-0.5' : 'gap-0.5'}`}>
      <NavigationMenu>
        <NavigationMenuList className="flex items-center">
          <NavigationMenuItem>
            <NavigationMenuTrigger className={navLinkClass}>
              <span className="flex items-center gap-1.5"><Menu className="h-4 w-4" />{t('categories.title')}</span>
            </NavigationMenuTrigger>
            <NavigationMenuContent className="bg-white/95 dark:bg-slate-900/95 backdrop-blur-lg border border-gray-200/80 dark:border-slate-700/80 shadow-xl rounded-lg">
              <MegaMenuCategories />
            </NavigationMenuContent>
          </NavigationMenuItem>
        </NavigationMenuList>
      </NavigationMenu>
      
      <NavigationMenu>
        <NavigationMenuList className="flex items-center">
          <NavigationMenuItem>
            <NavigationMenuTrigger className={navLinkClass}>
              <span className="flex items-center gap-1.5"><ShoppingBag className="h-4 w-4" />{t('header.shops')}</span>
            </NavigationMenuTrigger>
            <NavigationMenuContent className="bg-white/95 dark:bg-slate-900/95 backdrop-blur-lg border border-gray-200/80 dark:border-slate-700/80 shadow-xl rounded-lg">
              <BoutiquesDropdownContent />
            </NavigationMenuContent>
          </NavigationMenuItem>
        </NavigationMenuList>
      </NavigationMenu>
      
      <NavigationMenu>
        <NavigationMenuList className="flex items-center">
          <NavigationMenuItem>
            <NavigationMenuTrigger className={navLinkClass}>
              <span className="flex items-center gap-1.5"><HardHat className="h-4 w-4" />{t('menu.professions.title')}</span>
            </NavigationMenuTrigger>
            <NavigationMenuContent className="bg-white/95 dark:bg-slate-900/95 backdrop-blur-lg border border-gray-200/80 dark:border-slate-700/80 shadow-xl rounded-lg">
              <MetierReparateurDropdownContent />
            </NavigationMenuContent>
          </NavigationMenuItem>
        </NavigationMenuList>
      </NavigationMenu>
    </div>
  );
};

export default HeaderDesktopNav;

