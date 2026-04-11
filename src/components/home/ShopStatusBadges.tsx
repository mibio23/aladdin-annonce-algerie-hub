
import React from "react";
import { BadgeCheck } from "lucide-react";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";

interface ShopStatusBadgesProps {
  isOnline?: boolean;
  isVerified?: boolean;
}

const ShopStatusBadges: React.FC<ShopStatusBadgesProps> = ({
  isOnline,
  isVerified,
}) => {
  const { t, language } = useSafeI18nWithRouter();

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const value = t(key);
    if (value && value !== key) return value;
    if (typeof fallback === "string") return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };
  
  return (
    <>
      {/* Badge "Boutique" supprimé selon la demande */}
      
      <div className="absolute top-2 right-2 flex flex-col space-y-1 z-10">
        {isOnline && (
          <div
            className="bg-green-600/40 text-white/90 text-xs font-semibold px-2 py-1 rounded-full shadow-sm backdrop-blur-md"
            style={{ backdropFilter: "blur(2px)" }}
          >
            {tr('messages.online', { fr: 'En ligne', en: 'Online', es: 'En línea', it: 'Online', de: 'Online', ar: 'متصل' })}
          </div>
        )}
      </div>

      {isVerified && (
        <div
          className="absolute bottom-2 right-2 bg-blue-600/40 text-white/90 p-1 rounded-full shadow-sm backdrop-blur-md z-10"
          style={{ backdropFilter: "blur(2px)" }}
          title={tr('viewShop.verified', { fr: 'Vérifiée', en: 'Verified', es: 'Verificada', it: 'Verificata', de: 'Verifiziert', ar: 'موثّق' })}
        >
          <BadgeCheck size={14} className="opacity-90" />
        </div>
      )}
    </>
  );
};

export default ShopStatusBadges;
