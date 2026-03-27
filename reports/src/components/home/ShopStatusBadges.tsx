
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
  const { t } = useSafeI18nWithRouter();
  
  return (
    <>
      {/* Badge "Boutique" supprimé selon la demande */}
      
      <div className="absolute top-2 right-2 flex flex-col space-y-1 z-10">
        {isOnline && (
          <div
            className="bg-green-600/40 text-white/90 text-xs font-semibold px-2 py-1 rounded-full shadow-sm backdrop-blur-md"
            style={{ backdropFilter: "blur(2px)" }}
          >
            {t('online')}
          </div>
        )}
      </div>

      {isVerified && (
        <div
          className="absolute bottom-2 right-2 bg-blue-600/40 text-white/90 p-1 rounded-full shadow-sm backdrop-blur-md z-10"
          style={{ backdropFilter: "blur(2px)" }}
          title={t('verified')}
        >
          <BadgeCheck size={14} className="opacity-90" />
        </div>
      )}
    </>
  );
};

export default ShopStatusBadges;
