import { LocalizedLink } from "@/utils/linkUtils";
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
import "@/styles/modern-menu.css";

const HeaderDesktopNav = () => {
  const { t, isRTL } = useSafeI18nWithRouter();

  return (
    <div className={`flex items-baseline text-sm ${isRTL ? 'space-x-reverse space-x-1' : 'space-x-1'}`}>
      <LocalizedLink
        to="/annonces"
        className="nav-link-3d h-8 text-sm font-bold bg-transparent hover:bg-transparent data-[state=open]:bg-transparent aladdin-gold-glow-hover font-['Changa',Arial,sans-serif]"
      >
        {t('header.announcements')}
      </LocalizedLink>
      
      <span className="text-muted-foreground">|</span>
      
      <NavigationMenu>
        <NavigationMenuList className="flex items-baseline space-x-1">
          <NavigationMenuItem>
            <NavigationMenuTrigger
              className="nav-link-3d h-8 text-sm font-bold bg-transparent hover:bg-transparent data-[state=open]:bg-transparent aladdin-gold-glow-hover font-['Changa',Arial,sans-serif]"
            >
              <span className="flex items-center">{t('categories.title')}</span>
            </NavigationMenuTrigger>
            <NavigationMenuContent className="bg-white dark:bg-slate-900 border border-gray-200 dark:border-slate-700 shadow-lg">
              <MegaMenuCategories />
            </NavigationMenuContent>
          </NavigationMenuItem>
        </NavigationMenuList>
      </NavigationMenu>
      
      <span className="text-muted-foreground">|</span>
      
      <NavigationMenu>
        <NavigationMenuList className="flex items-baseline space-x-1">
          <NavigationMenuItem>
            <NavigationMenuTrigger
              className="nav-link-3d h-8 text-sm font-bold bg-transparent hover:bg-transparent data-[state=open]:bg-transparent aladdin-gold-glow-hover font-['Changa',Arial,sans-serif]"
            >
              <span className="flex items-center">{t('header.shops')}</span>
            </NavigationMenuTrigger>
            <NavigationMenuContent className="bg-white dark:bg-slate-900 border border-gray-200 dark:border-slate-700 shadow-lg">
              <BoutiquesDropdownContent />
            </NavigationMenuContent>
          </NavigationMenuItem>
        </NavigationMenuList>
      </NavigationMenu>
      
      <span className="text-muted-foreground">|</span>
      
      <NavigationMenu>
        <NavigationMenuList className="flex items-baseline space-x-1">
          <NavigationMenuItem>
            <NavigationMenuTrigger
              className="nav-link-3d h-8 text-sm font-bold bg-transparent hover:bg-transparent data-[state=open]:bg-transparent aladdin-gold-glow-hover font-['Changa',Arial,sans-serif]"
            >
              <span className="flex items-center">{t('menu.professions.title')}</span>
            </NavigationMenuTrigger>
            <NavigationMenuContent className="bg-white dark:bg-slate-900 border border-gray-200 dark:border-slate-700 shadow-lg">
              <MetierReparateurDropdownContent />
            </NavigationMenuContent>
          </NavigationMenuItem>
        </NavigationMenuList>
      </NavigationMenu>
    </div>
  );
};

export default HeaderDesktopNav;
