
import { useState } from "react";
import { LocalizedLink } from "@/utils/linkUtils";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import MagicalParticles from "@/components/effects/MagicalParticles";
// Reverted to footer-style logo (image + text wordmark)

const HeaderLogo = () => {
  const { isRTL } = useSafeI18nWithRouter();
  const [showMagic, setShowMagic] = useState(false);
  const [magicOrigin, setMagicOrigin] = useState({ x: 0, y: 0 });

  // Effet magique au clic uniquement (plus de timer automatique)
  
  const handleLogoClick = (e: React.MouseEvent) => {
    // Obtenir la position exacte du logo au moment du clic
    const target = e.currentTarget as HTMLElement;
    const rect = target.getBoundingClientRect();
    
    setMagicOrigin({
      x: rect.left + rect.width / 2, // Centre du logo
      y: rect.top + rect.height / 2, // Centre du logo
    });
    setShowMagic(true);
    
    // Reset magic effect after animation
    setTimeout(() => {
      setShowMagic(false);
    }, 3000);
  };
  
  return (
    <>
      <LocalizedLink to="/" className="flex items-center" onClick={handleLogoClick}>
        <div className={`flex items-center justify-center ${isRTL ? 'flex-row-reverse' : ''}`}>
          <img 
            src="/lovable-uploads/19d6e319-1c10-44f0-a889-e4babb7d2e97.png" 
            alt={isRTL ? "شعار علاء الدين" : "AL@DDIN Logo"}
            className="h-10 w-auto object-contain max-w-[130px] transition-all duration-200 hover:scale-105 cursor-pointer"
          />
          <span
            className={`hidden sm:block text-[1.75rem] font-bold title-section text-gray-800 dark:text-slate-200 hover:text-primary transition-all duration-300 cursor-pointer ${isRTL ? 'mr-2 font-arabic' : 'ml-2'}`}
            aria-label={isRTL ? "علاء الدين" : "AL@DDIN"}
          >
            {isRTL ? 'علاء الدين' : 'AL@DDIN'}
          </span>
        </div>
      </LocalizedLink>
      
      <MagicalParticles 
        isActive={showMagic} 
        originX={magicOrigin.x}
        originY={magicOrigin.y}
      />
    </>
  );
};

export default HeaderLogo;
