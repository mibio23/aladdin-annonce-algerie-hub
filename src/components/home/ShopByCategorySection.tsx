import { Link } from "react-router-dom";
import { 
  Carousel,
  CarouselContent,
  CarouselItem,
  CarouselNext,
  CarouselPrevious,
} from "@/components/ui/carousel";
import { Badge } from "@/components/ui/badge";
import { usePopularCategories } from "@/hooks/usePopularCategories";
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import ShopByCategoryBanner from "./ShopByCategoryBanner";
import searchBackground from "@/assets/search-background.png";

type ShopByCategorySectionProps = {
  totalCount?: number;
  categoryCounts?: Record<string, number>;
};

const ShopByCategorySection = ({ totalCount, categoryCounts }: ShopByCategorySectionProps) => {
  const { t, isRTL } = useSafeI18nWithRouter();
  const popularCategories = usePopularCategories();

  return (
    <section 
      className="bg-white border rounded-lg p-4 dark:bg-slate-800 dark:border-slate-700 relative overflow-hidden"
      style={{
        backgroundImage: `url(${searchBackground})`,
        backgroundSize: 'cover',
        backgroundPosition: 'center',
        backgroundRepeat: 'no-repeat'
      }}
    >
      <div className="absolute inset-0 bg-white/90 dark:bg-slate-800/90 backdrop-blur-sm"></div>
      <div className="relative z-10">
        <ShopByCategoryBanner totalCount={totalCount} />
      
      <Carousel
        opts={{
          align: "start",
          loop: true,
          slidesToScroll: 1,
          direction: isRTL ? "rtl" : "ltr",
        }}
        className="w-full py-6 group"
      >
        <CarouselContent className={`${isRTL ? "-mr-4" : "-ml-4"} pb-4 pt-4`}>
          {popularCategories.map((category, index) => {
            const translatedName = category.slug === 'education-loisirs' 
              ? t('categories.education-loisirs') 
              : (t(`categories.${category.slug}`) !== `categories.${category.slug}` 
                ? t(`categories.${category.slug}`) 
                : category.name);

            const initialSrc =
              category.slug === "vehicules-equipements"
                ? "/images/categories/main/vehicules-equipements.webp"
                : category.slug === "telephonie"
                ? "/images/categories/main/telephonie.webp"
                : category.slug === "immobilier-maison"
                ? "/images/categories/main/immobilier-maison.webp"
                : category.slug === "informatique-electronique"
                ? "/images/categories/main/informatique-electronique.webp"
                : category.slug === "velo-cyclisme-equipements"
                ? "/images/categories/main/velo-cyclisme-equipements.webp"
                : category.slug === "nautisme"
                ? "/images/categories/main/nautisme.webp"
                : category.slug === "btp-engins-construction"
                ? "/images/categories/main/btp-engins-construction.webp"
                : category.slug === "mode-accessoires"
                ? "/images/categories/main/mode-accessoires.webp"
                : category.slug === "mode-et-accessoires"
                ? "/images/categories/main/mode-et-accessoires.webp"
                : category.slug === "bebe-puericulture"
                ? "/images/categories/main/bebe-puericulture.webp"
                : category.slug === "sacs-et-bagages"
                ? "/images/categories/main/sacs-et-bagages.webp"
                : category.slug === "electromenager"
                ? "/images/categories/main/electromenager.webp"
                : category.slug === "mobilier-et-decoration"
                ? "/images/categories/main/mobilier-et-decoration.webp"
                : category.slug === "image-son-equipement-musique"
                ? "/images/categories/main/image-son-equipement-musique.webp"
                : category.slug === "jeux-video-consoles"
                ? "/images/categories/main/jeux-video-consoles.webp"
                : category.slug === "quincaillerie-generale"
                ? "/images/categories/main/quincaillerie-generale.webp"
                : category.slug === "agriculture-agroalimentaire"
                ? "/images/categories/main/agriculture-agroalimentaire.webp"
                : category.slug === "parapharmacie-produit-chimique"
                ? "/images/categories/main/parapharmacie-produit-chimique.webp"
                : category.slug === "sante-beaute"
                ? "/images/categories/main/sante-beaute.webp"
                : category.slug === "gastronomie-alimentation"
                ? "/images/categories/main/gastronomie-alimentation.webp"
                : category.slug === "artisanat-traditionnel-algerien"
                ? "/images/categories/main/artisanat-traditionnel-algerien.webp"
                : category.slug === "voyages-tourisme"
                ? "/images/categories/main/voyages-tourisme.webp"
                : category.slug === "evenements-billetterie"
                ? "/images/categories/main/evenements-billetterie.webp"
                : category.slug === "emploi-carriere"
                ? "/images/categories/main/emploi-carriere.webp"
                : category.slug === "education-loisirs"
                ? "/images/categories/main/education-loisirs.webp"
                : category.slug === "animaux-accessoires"
                ? "/images/categories/main/animaux-accessoires.webp"
    : category.slug === "finance"
    ? "/images/categories/main/finance.webp"
    : category.slug === "services-support"
    ? "/images/categories/main/services-support.webp"
    : category.slug === "echanges-partage"
    ? "/images/categories/main/echanges-partage.webp"
    : `/images/categories/main/${category.slug}.jpg`;
            
            return (
              <CarouselItem key={category.id} className={`${isRTL ? "pr-2" : "pl-2"} basis-1/4 sm:basis-1/5 md:basis-1/7 lg:basis-1/9 xl:basis-1/10 2xl:basis-1/12`}>
                <Link 
                  to={`/category/${category.slug}`} 
                  className="block group h-full"
                >
                  {/* Recessed Style Container */}
                  <div className="p-2 pb-0">
                    <div className="relative aspect-square overflow-hidden rounded-[24px] border-[3px] border-red-500/80 bg-white p-1.5 shadow-[0_8px_16px_rgba(0,0,0,0.1)] group-hover:border-red-600 group-hover:shadow-[0_12px_24px_rgba(220,38,38,0.2)] transition-all duration-300">
                      <div className="w-full h-full overflow-hidden rounded-[16px] shadow-[inset_0_10px_20px_rgba(0,0,0,0.25),inset_0_-2px_6px_rgba(255,255,255,0.3)] bg-slate-100 relative">
                        
                        {/* Badge inside recessed area */}
                        {typeof categoryCounts?.[category.id] === "number" ? (
                          <div className={`absolute top-2 ${isRTL ? "left-2" : "right-2"} z-20`}>
                            <Badge variant="secondary" className="bg-black/60 text-white border-transparent backdrop-blur-sm">
                              {categoryCounts[category.id]}
                            </Badge>
                          </div>
                        ) : null}

                        <img
                          src={initialSrc}
                          alt={translatedName}
                          className="w-full h-full object-cover transition-transform duration-500 group-hover:scale-110"
                          loading={index === 0 ? "eager" : "lazy"}
                          onError={(e) => {
                            const img = e.currentTarget;
                            const step = img.dataset.fallbackStep ?? "0";

                            if (step === "0") {
                              img.dataset.fallbackStep = "1";
                              img.src = `/images/categories/main/${category.slug}.jpg`;
                              return;
                            }

                            if (step === "1") {
                              img.dataset.fallbackStep = "2";
                              img.src = `/images/categories/main/${category.slug}.svg`;
                              return;
                            }

                            if (step === "2") {
                              img.dataset.fallbackStep = "3";
                              img.src = category.imageUrl;
                              return;
                            }

                            img.style.display = "none";
                          }}
                        />
                        
                        <div className="absolute bottom-0 left-0 right-0 p-3">
                          <div className={`absolute inset-0 ${
                            index % 6 === 0 ? 'bg-blue-600/60' :
                            index % 6 === 1 ? 'bg-purple-600/60' :
                            index % 6 === 2 ? 'bg-green-600/60' :
                            index % 6 === 3 ? 'bg-orange-600/60' :
                            index % 6 === 4 ? 'bg-red-600/60' :
                            'bg-teal-600/60'
                          }`} 
                          style={{ backdropFilter: 'blur(3px)' }}
                          />
                          <h3 
                            className="relative text-white text-emphasis text-sm leading-tight font-extrabold text-center text-center-always"
                            style={{
                              WebkitTextStroke: '1px black',
                              textShadow: '2px 2px 0 #000, 3px 3px 2px rgba(0,0,0,0.5)',
                              paintOrder: 'stroke fill'
                            }}
                          >
                            {translatedName}
                          </h3>
                        </div>
                      </div>
                    </div>
                  </div>
                </Link>
              </CarouselItem>
            );
          })}
        </CarouselContent>
        <CarouselPrevious
          directionalStyle
          className={`absolute ${isRTL ? "right-1.5" : "left-1.5"} top-1/2 -translate-y-1/2 z-10 opacity-100 md:opacity-0 md:group-hover:opacity-100 hover:scale-[1.03]`}
        />
        <CarouselNext
          directionalStyle
          className={`absolute ${isRTL ? "left-1.5" : "right-1.5"} top-1/2 -translate-y-1/2 z-10 opacity-100 md:opacity-0 md:group-hover:opacity-100 hover:scale-[1.03]`}
        />
      </Carousel>
      </div>
    </section>
  );
};

export default ShopByCategorySection;
