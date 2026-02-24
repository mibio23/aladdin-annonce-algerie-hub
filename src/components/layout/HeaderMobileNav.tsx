
import { LocalizedLink } from "@/utils/linkUtils";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import CategoryMobileAccordion from "./nav/CategoryMobileAccordion";
import AuthDrawer from "../auth/AuthDrawer";
import { Button } from "../ui/button";
import { LogIn } from "lucide-react";

interface HeaderMobileNavProps {
  isMenuOpen: boolean;
}

const HeaderMobileNav = ({ isMenuOpen }: HeaderMobileNavProps) => {
  const { t } = useSafeI18nWithRouter();

  if (!isMenuOpen) return null;
  
  return (
    <div className="md:hidden mt-3 py-3 border-t">
      <div className="flex flex-col space-y-3">
        <div className="px-4 py-2 border-b mb-2">
          <AuthDrawer>
            <Button variant="outline" className="w-full flex items-center justify-center gap-2 border-primary text-primary hover:bg-primary hover:text-white transition-all font-bold">
              <LogIn className="h-4 w-4" />
              {t('header.loginRegister')}
            </Button>
          </AuthDrawer>
        </div>

        <LocalizedLink to="/annonces" className="text-gray-700 hover:text-accessible-orange py-2 font-['Changa',Arial,sans-serif]">
          {t('header.announcements')}
        </LocalizedLink>
        
        <CategoryMobileAccordion />
        
        <div className="py-2">
          <div className="flex items-center text-gray-700 font-medium mb-2 font-['Changa',Arial,sans-serif]">
            {t('header.shops')}
          </div>
          <div className="pl-6 flex flex-col space-y-2">
            <LocalizedLink to="/boutiques/magasins" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.shops.stores')}
            </LocalizedLink>
            <LocalizedLink to="/boutiques/cabinets" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.shops.offices')}
            </LocalizedLink>
            <LocalizedLink to="/boutiques/entreprises-privees" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.shops.privateCompanies')}
            </LocalizedLink>
            <LocalizedLink to="/boutiques/entreprises-nationales" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.shops.nationalCompanies')}
            </LocalizedLink>
            <LocalizedLink to="/boutiques/boutique-en-ligne" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.shops.onlineShop')}
            </LocalizedLink>
          </div>
        </div>
        
        <div className="py-2">
          <div className="flex items-center text-gray-700 font-medium mb-2 font-['Changa',Arial,sans-serif]">
            {t('menu.mobile.repair')}
          </div>
          <div className="pl-6 flex flex-col space-y-2">
            <LocalizedLink to="/reparation/electromenager" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.mobile.appliances')}
            </LocalizedLink>
            <LocalizedLink to="/reparation/informatique" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.mobile.computer')}
            </LocalizedLink>
            <LocalizedLink to="/reparation/automobile" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.mobile.automotive')}
            </LocalizedLink>
            <LocalizedLink to="/reparation/plomberie" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.mobile.plumbing')}
            </LocalizedLink>
            <LocalizedLink to="/reparation/electricite" className="text-gray-600 hover:text-accessible-orange font-['Changa',Arial,sans-serif]">
              {t('menu.mobile.electricity')}
            </LocalizedLink>
          </div>
        </div>
        
        <LocalizedLink to="/deposer-annonce" className="text-gray-700 hover:text-accessible-orange py-2 font-['Changa',Arial,sans-serif]">
          {t('header.postAd')}
        </LocalizedLink>
        
        <LocalizedLink to="/creer-boutique" className="text-gray-700 hover:text-accessible-orange py-2 font-['Changa',Arial,sans-serif]">
          {t('menu.mobile.createShop')}
        </LocalizedLink>
        
        <LocalizedLink to="/je-recherche" className="text-gray-700 hover:text-accessible-orange py-2 font-['Changa',Arial,sans-serif]">
          {t('menu.mobile.search')}
        </LocalizedLink>
        
        <LocalizedLink to="/aide" className="text-gray-700 hover:text-accessible-orange py-2 font-['Changa',Arial,sans-serif]">
          {t('header.help')}
        </LocalizedLink>
      </div>
    </div>
  );
};

export default HeaderMobileNav;
