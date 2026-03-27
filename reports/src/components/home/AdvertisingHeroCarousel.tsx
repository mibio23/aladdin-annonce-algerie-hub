import { useState, useEffect } from 'react';
import { Search, CirclePlus, Briefcase } from 'lucide-react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { LocalizedLink } from '@/utils/linkUtils';
import { useLanguageFromURL } from '@/hooks/useLanguageFromURL';
import OptimizedImage from '@/components/common/OptimizedImage';
import { useAuth } from '@/contexts/useAuth';
import AuthDrawer from '../auth/AuthDrawer';

const AdvertisingHeroCarousel = () => {
  const { t } = useSafeI18nWithRouter();
  const { getLocalizedPath } = useLanguageFromURL();
  const { user } = useAuth();
  const [currentSlide, setCurrentSlide] = useState(0);
  const [directionalImageSrcIndex, setDirectionalImageSrcIndex] = useState(0);

  const directionalImageSrcCandidates = [
    "/assets/images/directionnel.png",
    "/assets/images/directionnel.webp",
    "/assets/images/directionnel.svg",
    "/lovable-uploads/directionnel.png",
    "/lovable-uploads/directionnel.webp",
    "/directionnel.png",
    "/directionnel.webp",
    "/directionnel.svg",
  ];
  const directionalImageSrc = directionalImageSrcCandidates[directionalImageSrcIndex];
  const hasDirectionalImage = directionalImageSrcIndex < directionalImageSrcCandidates.length;
  const handleDirectionalImageError = () => {
    setDirectionalImageSrcIndex((prev) => prev + 1);
  };

  const slides = [
    {
      id: 1,
      title: t('home.hero.pro.title'),
      subtitle: t('home.hero.pro.subtitle'),
      description: t('home.hero.pro.description'),
      buttonText: t('home.hero.pro.button'),
      buttonLink: "/deposer-offre-metier",
      buttonIcon: <Briefcase className="w-5 h-5" />,
      backgroundImage: '/lovable-uploads/674ffe81-546c-4877-9e59-c62fa5d08d07.png',
      backgroundColor: 'rgb(133, 255, 211)'
    },
    {
      id: 2,
      title: t('ecoCarousel.ad2.title'),
      subtitle: t('ecoCarousel.ad2.subtitle'),
      description: t('ecoCarousel.ad2.description'),
      buttonText: t('ecoCarousel.learnMore'),
      buttonLink: t('ecoCarousel.learnMoreLink') || "#",
      buttonIcon: <CirclePlus className="w-5 h-5" />,
      backgroundImage: '/lovable-uploads/1b389b9d-a4af-4bce-9d96-6437e5917bf7.png',
      backgroundColor: 'rgb(118, 96, 120)'
    },
    {
      id: 3,
      title: t('ecoCarousel.ad3.title'),
      subtitle: t('ecoCarousel.ad3.subtitle'),
      description: t('ecoCarousel.ad3.description'),
      buttonText: "Rechercher",
      buttonLink: "/search",
      buttonIcon: <Search className="w-5 h-5" />,
      backgroundImage: '/lovable-uploads/50a9e887-1315-4e89-be9e-3ef1d3c4bae8.png',
      backgroundColor: 'rgb(118, 216, 120)'
    }
  ];

  useEffect(() => {
    const timeout = setTimeout(() => {
      setCurrentSlide((prev) => (prev + 1) % slides.length);
    }, 5000);

    return () => clearTimeout(timeout);
  }, [slides.length, currentSlide]);

  const goToSlide = (index: number) => {
    setCurrentSlide(index);
  };

  const nextSlide = () => {
    setCurrentSlide((prev) => (prev + 1) % slides.length);
  };

  const prevSlide = () => {
    setCurrentSlide((prev) => (prev - 1 + slides.length) % slides.length);
  };

  return (
    <div className="hero-banner-desktop mb-5" style={{ backgroundColor: slides[currentSlide].backgroundColor }}>
      <div className="relative w-full overflow-hidden">
        {slides.map((slide, index) => (
          <div
            key={slide.id}
            className={`picture-hero-slide w-full transition-transform duration-500 ease-in-out ${
              index === currentSlide 
                ? 'picture-hero-slide-active translate-x-0' 
                : index < currentSlide 
                  ? '-translate-x-full' 
                  : 'translate-x-full'
            } ${index === currentSlide ? 'relative' : 'absolute top-0 left-0'}`}
          >
            <div className="flex justify-center items-center overflow-hidden relative">
              <div className="hero-content-box absolute text-center flex flex-col h-full justify-between"
                   style={{
                     background: `linear-gradient(${slide.backgroundColor}, ${slide.backgroundColor})`,
                     color: '#015354'
                   }}>
                <h1 className="hero-content-box-title text-left text-4xl font-bold">
                  <span className="text-blue-600">{slide.title}</span>
                  <br />
                  <span className="text-lg font-normal">{slide.subtitle}</span>
                </h1>
                
                {slide.id === 1 && !user ? (
                  <AuthDrawer>
                    <button
                      onClick={() => sessionStorage.setItem('authRedirectUrl', getLocalizedPath(slide.buttonLink))}
                      className="walla-button bg-blue-600 text-white px-6 py-3 rounded-lg flex items-center gap-2 hover:bg-blue-700 transition-colors"
                    >
                      {slide.buttonIcon}
                      <span>{slide.buttonText}</span>
                    </button>
                  </AuthDrawer>
                ) : (
                  <LocalizedLink
                    to={slide.buttonLink}
                    className="walla-button bg-blue-600 text-white px-6 py-3 rounded-lg flex items-center gap-2 hover:bg-blue-700 transition-colors inline-block"
                  >
                    {slide.buttonIcon}
                    <span>{slide.buttonText}</span>
                  </LocalizedLink>
                )}
              </div>
              
              <OptimizedImage
                src={slide.backgroundImage}
                alt={slide.description}
                className="w-full h-[400px]"
                width={1200}
                height={400}
              />
            </div>
          </div>
        ))}

        {/* Navigation Arrows */}
        <button 
          onClick={prevSlide}
          aria-label="Précédent"
          className="absolute left-4 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 p-2 rounded-full shadow-lg transition-all z-10"
        >
          {hasDirectionalImage ? (
            <img
              src={directionalImageSrc}
              alt=""
              className="w-6 h-6 object-contain"
              draggable={false}
              onError={handleDirectionalImageError}
            />
          ) : (
            <svg
              viewBox="0 0 24 24"
              fill="none"
              className="w-6 h-6"
              aria-hidden="true"
            >
              <path
                d="M10 6L4 12L10 18"
                stroke="currentColor"
                strokeWidth="2.5"
                strokeLinecap="round"
                strokeLinejoin="round"
              />
              <path
                d="M4 12H20"
                stroke="currentColor"
                strokeWidth="2.5"
                strokeLinecap="round"
              />
            </svg>
          )}
        </button>
        
        <button 
          onClick={nextSlide}
          aria-label="Suivant"
          className="absolute right-4 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 p-2 rounded-full shadow-lg transition-all z-10"
        >
          {hasDirectionalImage ? (
            <img
              src={directionalImageSrc}
              alt=""
              className="w-6 h-6 object-contain rotate-180"
              draggable={false}
              onError={handleDirectionalImageError}
            />
          ) : (
            <svg
              viewBox="0 0 24 24"
              fill="none"
              className="w-6 h-6 rotate-180"
              aria-hidden="true"
            >
              <path
                d="M10 6L4 12L10 18"
                stroke="currentColor"
                strokeWidth="2.5"
                strokeLinecap="round"
                strokeLinejoin="round"
              />
              <path
                d="M4 12H20"
                stroke="currentColor"
                strokeWidth="2.5"
                strokeLinecap="round"
              />
            </svg>
          )}
        </button>

        {/* Dots Indicator */}
        <div className="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2 z-10">
          {slides.map((_, index) => (
            <button
              key={index}
              onClick={() => goToSlide(index)}
              className={`w-3 h-3 rounded-full transition-all ${
                index === currentSlide 
                  ? 'bg-white shadow-lg' 
                  : 'bg-white/50 hover:bg-white/75'
              }`}
            />
          ))}
        </div>
      </div>
    </div>
  );
};

export default AdvertisingHeroCarousel;
