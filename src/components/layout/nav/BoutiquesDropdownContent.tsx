import { LocalizedLink } from "@/utils/linkUtils";
import { NavigationMenuLink } from "@/components/ui/navigation-menu";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

const boutiqueIcons: Record<string, string> = {
  magasins: '/icons/categories/boutique-magasin.png',
  cabinets: '/icons/categories/boutique-cabinet.png',
  'entreprises-privees': '/icons/categories/boutique-entreprise-privee.png',
  'entreprises-nationales': '/icons/categories/boutique-entreprise-nationale.png',
  'commerce-ambulant': '/icons/categories/boutique-commerce-ambulant.png',
  associations: '/icons/categories/boutique-association.png',
  'boutique-en-ligne': '/icons/categories/boutique-en-ligne.png',
};

const BoutiquesDropdownContent = () => {
  const { t } = useSafeI18nWithRouter();

  const items = [
    { slug: 'magasins', labelKey: 'menu.shops.stores' },
    { slug: 'cabinets', labelKey: 'menu.shops.offices' },
    { slug: 'entreprises-privees', labelKey: 'menu.shops.privateCompanies' },
    { slug: 'entreprises-nationales', labelKey: 'menu.shops.nationalCompanies' },
    { slug: 'commerce-ambulant', labelKey: 'menu.shops.streetVendors' },
    { slug: 'associations', labelKey: 'menu.shops.associations' },
    { slug: 'boutique-en-ligne', labelKey: 'menu.shops.onlineShop' },
  ];

  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg border border-gray-200 dark:border-gray-700 p-2 min-w-[220px]">
      <ul className="space-y-1">
        {items.map((item) => (
          <li key={item.slug}>
            <NavigationMenuLink asChild>
              <LocalizedLink 
                to={`/boutiques/${item.slug}`}
                className="flex items-center gap-3 px-3 py-2 text-sm text-gray-700 dark:text-gray-300 hover:text-gray-900 dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium"
              >
                <img 
                  src={boutiqueIcons[item.slug]} 
                  alt="" 
                  className="w-11 h-11 object-contain shrink-0" 
                  loading="lazy" 
                />
                <span>{t(item.labelKey)}</span>
              </LocalizedLink>
            </NavigationMenuLink>
          </li>
        ))}
      </ul>
    </div>
  );
};

export default BoutiquesDropdownContent;
