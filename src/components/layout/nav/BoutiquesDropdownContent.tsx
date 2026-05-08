import { LocalizedLink } from "@/utils/linkUtils";
import { NavigationMenuLink } from "@/components/ui/navigation-menu";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

const BoutiquesDropdownContent = () => {
  const { t } = useSafeI18nWithRouter();

  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg border border-gray-200 dark:border-gray-700 p-2 min-w-[200px]">
      <ul className="space-y-1">
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink 
              to="/boutiques/magasins"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.stores')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink
              to="/boutiques/cabinets"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.offices')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink
              to="/boutiques/entreprises-privees"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.privateCompanies')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink
              to="/boutiques/entreprises-nationales"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.nationalCompanies')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink
              to="/boutiques/commerce-ambulant"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.streetVendors')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink
              to="/boutiques/associations"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.associations')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
        <li>
          <NavigationMenuLink asChild>
            <LocalizedLink
              to="/boutiques/boutique-en-ligne"
              className="block px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
            >
              {t('menu.shops.onlineShop')}
            </LocalizedLink>
          </NavigationMenuLink>
        </li>
      </ul>
    </div>
  );
};

export default BoutiquesDropdownContent;
