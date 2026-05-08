
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
          <div className={`hidden sm:flex flex-col ${isRTL ? 'mr-2 items-end' : 'ml-2 items-start'}`}>
            <span
              className={`text-3xl font-black cursor-pointer transition-all duration-300 text-amber-500 drop-shadow-[0_1px_2px_rgba(0,0,0,0.3)] hover:text-amber-400 leading-none ${
                isRTL ? 'font-arabic' : ''
              }`}
              aria-label={isRTL ? "علاء الدين" : "AL@DDIN"}
            >
              {isRTL ? 'علاء الدين' : 'AL@DDIN'}
            </span>
            <span
              className={`font-bold tracking-wide leading-none mt-0.5 text-amber-500 ${
                isRTL ? 'font-arabic text-base' : 'uppercase text-xs'
              }`}
              style={{
                WebkitTextStroke: '0.3px #000',
                paintOrder: 'stroke fill'
              }}
            >
              {isRTL ? 'منصة الإعلانات' : 'Plateforme Annonce'}
            </span>
          </div>
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
