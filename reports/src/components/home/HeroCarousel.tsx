import React, { useState, useEffect, useCallback } from 'react';
import { supabase } from '@/integrations/supabase/client';
import { getTextDirection } from '@/lib/utils/textDirection';
import './HeroCarousel.css';

interface Slide {
  id: string; // UUID from DB
  localId: number; // 1-based index for carousel logic
  title: string | null;
  text_2: string | null;
  text_3: string | null;
  text_4: string | null;
  text_5: string | null;
  text_position: 'center' | 'bottom_left' | 'bottom_right' | 'top_left' | 'top_right';
  image_url: string;
  text_style: 'normal' | 'gradient' | 'neon';
  text_color: string | null;
  font_size: 'xs' | 'small' | 'medium' | 'large' | 'xl';
  font_family: string;
  animation_type: 'fade-up' | 'slide-left' | 'zoom' | 'typewriter';
  end_at: string | null;
}

interface SingleCarouselProps {
  carouselId: number;
}

const SingleCarousel: React.FC<SingleCarouselProps> = ({ carouselId }) => {
  const [slides, setSlides] = useState<Slide[]>([]);
  const [intervalMs, setIntervalMs] = useState(3500);
  const [activeSlide, setActiveSlide] = useState(1);
  const [animClass, setAnimClass] = useState('text-down'); 
  const [isAnimating, setIsAnimating] = useState(false);
  const [loading, setLoading] = useState(true);
  const [directionalImageSrcIndex, setDirectionalImageSrcIndex] = useState(0);

  const transitionTime = 1200;
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

  // Fetch data
  useEffect(() => {
    const fetchData = async () => {
      try {
        // Fetch settings - Cast to any to bypass type check
        const { data: settingsData } = await supabase
          .from('hero_carousel_settings' as any)
          .select('interval_ms')
          .eq('carousel_id', carouselId)
          .single();
        
        if (settingsData) {
          setIntervalMs((settingsData as any).interval_ms);
        }

        // Fetch slides - Cast to any
        const { data: slidesData } = await supabase
          .from('hero_carousel_slides' as any)
          .select('*')
          .eq('carousel_id', carouselId)
          .eq('is_active', true)
          .order('display_order', { ascending: true });

        if (slidesData && slidesData.length > 0) {
          // Filter by end_at date if present
          const now = new Date();
          const validSlides = slidesData.filter((s: any) => {
             if (!s.end_at) return true;
             return new Date(s.end_at) > now;
          });

          if (validSlides.length > 0) {
            const formattedSlides = validSlides.map((s: any, index: number) => ({
              ...s,
              localId: index + 1
            }));
            setSlides(formattedSlides);
          } else {
             // If all slides are expired, show fallback
             setSlides([
               { id: 'default1', localId: 1, title: 'Bienvenue', text_2: null, text_3: null, text_4: null, text_5: null, text_position: 'center', image_url: 'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158', text_style: 'normal', text_color: '#fff', font_size: 'medium', font_family: 'Inter', animation_type: 'fade-up', end_at: null },
               { id: 'default2', localId: 2, title: 'Sur Aladdin', text_2: null, text_3: null, text_4: null, text_5: null, text_position: 'center', image_url: 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e', text_style: 'normal', text_color: '#fff', font_size: 'medium', font_family: 'Inter', animation_type: 'fade-up', end_at: null }
             ]);
          }
        } else {
          // Fallback if no data (to avoid empty carousel)
          setSlides([
            { id: 'default1', localId: 1, title: 'Bienvenue', text_2: null, text_3: null, text_4: null, text_5: null, text_position: 'center', image_url: 'https://images.unsplash.com/photo-1581091226825-a6a2a5aee158', text_style: 'normal', text_color: '#fff', font_size: 'medium', font_family: 'Inter', animation_type: 'fade-up', end_at: null },
            { id: 'default2', localId: 2, title: 'Sur Aladdin', text_2: null, text_3: null, text_4: null, text_5: null, text_position: 'center', image_url: 'https://images.unsplash.com/photo-1485827404703-89b55fcc595e', text_style: 'normal', text_color: '#fff', font_size: 'medium', font_family: 'Inter', animation_type: 'fade-up', end_at: null }
          ]);
        }
      } catch (err) {
        console.error("Error loading carousel data", err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [carouselId]);

  const numOfSlides = slides.length;

  const changeSlide = useCallback((isRight: boolean) => {
    if (isAnimating || numOfSlides === 0) return;
    setIsAnimating(true);

    let nextIndex = isRight ? activeSlide + 1 : activeSlide - 1;
    if (nextIndex < 1) nextIndex = numOfSlides;
    if (nextIndex > numOfSlides) nextIndex = 1;

    // Définir les classes d'animation
    if (isRight) {
      setAnimClass('zoom-enter text-down');
    } else {
      setAnimClass('bubble-enter text-up');
    }

    setActiveSlide(nextIndex);

    setTimeout(() => {
      setIsAnimating(false);
    }, transitionTime);
  }, [activeSlide, isAnimating, numOfSlides]);

  // Auto-play
  useEffect(() => {
    if (isAnimating || numOfSlides === 0) return;

    const timer = setTimeout(() => {
      changeSlide(true);
    }, intervalMs);

    return () => clearTimeout(timer);
  }, [activeSlide, isAnimating, changeSlide, intervalMs, numOfSlides]); 

  const handleControlClick = (isRight: boolean) => {
    changeSlide(isRight);
  };

  const getTextStyle = (slide: Slide) => {
    const style: React.CSSProperties = {};
    
    const fontMap: Record<string, string> = {
      'Inter': "'Inter', sans-serif",
      'Playfair Display': "'Playfair Display', serif",
      'Roboto': "'Roboto', sans-serif",
      'Montserrat': "'Montserrat', sans-serif",
      'Courier Prime': "'Courier Prime', monospace",
      'Courier New': "'Courier New', monospace",
      'Open Sans': "'Open Sans', sans-serif",
      'Lato': "'Lato', sans-serif",
      'Poppins': "'Poppins', sans-serif",
      'Merriweather': "'Merriweather', serif",
      'Oswald': "'Oswald', sans-serif",
      'Dancing Script': "'Dancing Script', cursive",
      'Lobster': "'Lobster', cursive"
    };

    // Font Family
    if (slide.font_family) {
      style.fontFamily = fontMap[slide.font_family] || slide.font_family;
    }

    if (slide.text_style === 'gradient' && slide.text_color) {
      style.background = slide.text_color.includes('gradient') ? slide.text_color : `linear-gradient(45deg, ${slide.text_color}, #fff)`;
      style.WebkitBackgroundClip = 'text';
      style.WebkitTextFillColor = 'transparent';
      style.color = 'transparent'; // Fallback
    } else if (slide.text_style === 'neon' && slide.text_color) {
      style.color = slide.text_color; // Base color
      style.textShadow = `0 0 5px #fff, 0 0 10px #fff, 0 0 20px ${slide.text_color}, 0 0 30px ${slide.text_color}, 0 0 40px ${slide.text_color}`;
    } else if (slide.text_color) {
      style.color = slide.text_color;
    }

    return style;
  };
  
  const getAnimationClass = (type: string | undefined) => {
     switch(type) {
       case 'fade-up': return 'anim-fade-up';
       case 'slide-left': return 'anim-slide-left';
       case 'zoom': return 'anim-zoom';
       case 'typewriter': return 'anim-typewriter';
       default: return 'anim-fade-up';
     }
  };

  const getPositionClass = (position: string | undefined) => {
    switch(position) {
      case 'bottom_left': return 'pos-bottom-left';
      case 'bottom_right': return 'pos-bottom-right';
      case 'top_left': return 'pos-top-left';
      case 'top_right': return 'pos-top-right';
      default: return 'pos-center';
    }
  };

  if (loading) return <div className="slider banner bg-black animate-pulse" />;

  return (
    <div className="slider banner">
        <div className="slider__slides">
          {slides.map((slide) => {
            const isActive = slide.localId === activeSlide;
            let className = "slide";
            
            if (isActive) {
              className += " s--active";
              // Appliquer l'animation uniquement à la slide active
              if (animClass) className += ` ${animClass}`;
            }
            
            const positionClass = getPositionClass(slide.text_position);
            const baseTextStyle: React.CSSProperties = { ...getTextStyle(slide), unicodeBidi: 'plaintext' };
            const getDir = (text: string | null) => (text ? getTextDirection(text) : undefined);

            return (
               <div key={slide.id} className={className}>
                  <div className="bg-img" style={{ backgroundImage: `url('${slide.image_url}')` }} />
                  <div className={`slide__inner ${positionClass}`}>
                    <div className={`slide__content ${getAnimationClass(slide.animation_type)}`}>
                      <h2 
                        className={`slide__heading size-${slide.font_size || 'medium'}`} 
                        style={baseTextStyle}
                        dir={getDir(slide.title)}
                      >
                        {slide.title}
                      </h2>
                      {slide.text_2 && (
                        <h2
                          className={`slide__heading size-${slide.font_size || 'medium'}`}
                          style={baseTextStyle}
                          dir={getDir(slide.text_2)}
                        >
                          {slide.text_2}
                        </h2>
                      )}
                      {slide.text_3 && (
                        <h2
                          className={`slide__heading size-${slide.font_size || 'medium'}`}
                          style={baseTextStyle}
                          dir={getDir(slide.text_3)}
                        >
                          {slide.text_3}
                        </h2>
                      )}
                      {slide.text_4 && (
                        <h2
                          className={`slide__heading size-${slide.font_size || 'medium'}`}
                          style={baseTextStyle}
                          dir={getDir(slide.text_4)}
                        >
                          {slide.text_4}
                        </h2>
                      )}
                      {slide.text_5 && (
                        <h2
                          className={`slide__heading size-${slide.font_size || 'medium'}`}
                          style={baseTextStyle}
                          dir={getDir(slide.text_5)}
                        >
                          {slide.text_5}
                        </h2>
                      )}
                    </div>
                  </div>
               </div>
            );
          })}
        </div>
        
        {/* Contrôles */}
        <button
          type="button"
          className="slider__control has-directionnel"
          aria-label="Précédent"
          onClick={() => handleControlClick(false)}
        >
          {hasDirectionalImage ? (
            <img
              src={directionalImageSrc}
              alt=""
              className="slider__control-icon slider__control-icon--image"
              draggable={false}
              onError={handleDirectionalImageError}
            />
          ) : (
            <svg
              viewBox="0 0 24 24"
              fill="none"
              className="slider__control-icon"
              aria-hidden="true"
            >
              <path
                d="M15 18L9 12L15 6"
                stroke="currentColor"
                strokeWidth="3"
                strokeLinecap="round"
                strokeLinejoin="round"
              />
            </svg>
          )}
        </button>
        <button
          type="button"
          className="slider__control slider__control--right m--right has-directionnel"
          aria-label="Suivant"
          onClick={() => handleControlClick(true)}
        >
          {hasDirectionalImage ? (
            <img
              src={directionalImageSrc}
              alt=""
              className="slider__control-icon slider__control-icon--image slider__control-icon--right"
              draggable={false}
              onError={handleDirectionalImageError}
            />
          ) : (
            <svg
              viewBox="0 0 24 24"
              fill="none"
              className="slider__control-icon slider__control-icon--right"
              aria-hidden="true"
            >
              <path
                d="M15 18L9 12L15 6"
                stroke="currentColor"
                strokeWidth="3"
                strokeLinecap="round"
                strokeLinejoin="round"
              />
            </svg>
          )}
        </button>
      </div>
  );
};

const HeroCarousel = () => {
  return (
    <div className="hero-carousel-wrapper">
      <SingleCarousel carouselId={1} />
      <SingleCarousel carouselId={2} />
    </div>
  );
};

export default HeroCarousel;
