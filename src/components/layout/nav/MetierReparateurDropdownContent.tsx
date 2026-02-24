import { LocalizedLink } from "@/utils/linkUtils";
import { NavigationMenuLink } from "@/components/ui/navigation-menu";
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useEffect, useMemo, useRef, useState } from "react";
import { ChevronDown } from "lucide-react";

const MetierReparateurDropdownContent = () => {
  const { t } = useSafeI18nWithRouter();

  const items = useMemo(() => {
    return [
      { slug: "plumber", labelKey: "jobOffer.professions.plumber" },
      { slug: "electrician", labelKey: "jobOffer.professions.electrician" },
      { slug: "mechanic", labelKey: "jobOffer.professions.mechanic" },
      { slug: "woodworker", labelKey: "jobOffer.professions.woodworker" },
      { slug: "painter", labelKey: "jobOffer.professions.painter" },
      { slug: "mason", labelKey: "jobOffer.professions.mason" },
      { slug: "roofer", labelKey: "jobOffer.professions.roofer" },
      { slug: "tiler", labelKey: "jobOffer.professions.tiler" },
      { slug: "gardener", labelKey: "jobOffer.professions.gardener" },
      { slug: "tailor", labelKey: "jobOffer.professions.tailor" },
      { slug: "cook", labelKey: "jobOffer.professions.cook" },
      { slug: "hairdresser", labelKey: "jobOffer.professions.hairdresser" },
      { slug: "beautician", labelKey: "jobOffer.professions.beautician" },
      { slug: "computerTechnician", labelKey: "jobOffer.professions.computerTechnician" },
      { slug: "heatingTechnician", labelKey: "jobOffer.professions.heatingTechnician" },
      { slug: "applianceRepairman", labelKey: "jobOffer.professions.applianceRepairman" },
      { slug: "welder", labelKey: "jobOffer.professions.welder" },
      { slug: "ironworker", labelKey: "jobOffer.professions.ironworker" },
      { slug: "glazier", labelKey: "jobOffer.professions.glazier" },
      { slug: "bodyworker", labelKey: "jobOffer.professions.bodyworker" },
      { slug: "cabinetmaker", labelKey: "jobOffer.professions.cabinetmaker" },
      { slug: "upholsterer", labelKey: "jobOffer.professions.upholsterer" },
      { slug: "airConditioningTechnician", labelKey: "jobOffer.professions.airConditioningTechnician" },
      { slug: "photographer", labelKey: "jobOffer.professions.photographer" },
      { slug: "videographer", labelKey: "jobOffer.professions.videographer" },
      { slug: "translator", labelKey: "jobOffer.professions.translator" },
      { slug: "secretary", labelKey: "jobOffer.professions.secretary" },
      { slug: "accountant", labelKey: "jobOffer.professions.accountant" },
      { slug: "privateTeacher", labelKey: "jobOffer.professions.privateTeacher" },
      { slug: "otherProfessions", labelKey: "jobOffer.professions.otherProfessions" },
    ];
  }, []);

  const scrollRef = useRef<HTMLDivElement | null>(null);
  const [canScrollDown, setCanScrollDown] = useState(false);
  const scrollRafRef = useRef<number | null>(null);

  const updateScrollState = () => {
    const el = scrollRef.current;
    if (!el) return;
    setCanScrollDown(el.scrollTop + el.clientHeight < el.scrollHeight - 1);
  };

  useEffect(() => {
    const raf = requestAnimationFrame(updateScrollState);
    return () => cancelAnimationFrame(raf);
  }, [items.length]);

  useEffect(() => {
    return () => {
      if (scrollRafRef.current !== null) {
        cancelAnimationFrame(scrollRafRef.current);
        scrollRafRef.current = null;
      }
    };
  }, []);

  const startAutoScrollDown = () => {
    if (scrollRafRef.current !== null) return;

    const step = () => {
      const el = scrollRef.current;
      if (!el) {
        if (scrollRafRef.current !== null) cancelAnimationFrame(scrollRafRef.current);
        scrollRafRef.current = null;
        return;
      }

      const atBottom = el.scrollTop + el.clientHeight >= el.scrollHeight - 1;
      if (atBottom) {
        if (scrollRafRef.current !== null) cancelAnimationFrame(scrollRafRef.current);
        scrollRafRef.current = null;
        updateScrollState();
        return;
      }

      el.scrollTop = el.scrollTop + 6;
      updateScrollState();
      scrollRafRef.current = requestAnimationFrame(step);
    };

    scrollRafRef.current = requestAnimationFrame(step);
  };

  const stopAutoScroll = () => {
    if (scrollRafRef.current === null) return;
    cancelAnimationFrame(scrollRafRef.current);
    scrollRafRef.current = null;
  };

  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-lg border border-gray-200 dark:border-gray-700 p-2 min-w-[250px]">
      <div className="space-y-1">
        <NavigationMenuLink asChild>
          <LocalizedLink 
            to="/metiers-reparateurs"
            className="block px-3 py-2 text-sm text-red-600 font-bold hover:text-red-800 hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors border-b border-gray-200 dark:border-gray-600 mb-1"
          >
            {t('menu.professions.viewAll')}
          </LocalizedLink>
        </NavigationMenuLink>

        <div
          ref={scrollRef}
          onScroll={updateScrollState}
          onMouseEnter={updateScrollState}
          className="relative max-h-[60vh] overflow-y-auto overscroll-contain pr-1 pb-8 scrollbar-hide"
          style={{ scrollbarWidth: "none", msOverflowStyle: "none" }}
        >
          <ul className="space-y-1">
            {items.map((item) => (
              <li key={item.slug}>
                <NavigationMenuLink asChild>
                  <LocalizedLink
                    to={`/reparation/${item.slug}`}
                    className="block px-3 py-2 text-sm text-black dark:text-white hover:text-black dark:hover:text-white hover:bg-gray-100 dark:hover:bg-gray-700 rounded-md transition-colors font-medium aladdin-glow-hover"
                  >
                    {t(item.labelKey)}
                  </LocalizedLink>
                </NavigationMenuLink>
              </li>
            ))}
          </ul>

          {canScrollDown && (
            <button
              type="button"
              aria-label="Défiler vers le bas"
              onClick={() => {
                const el = scrollRef.current;
                if (!el) return;
                el.scrollBy({ top: Math.max(120, Math.floor(el.clientHeight * 0.6)), behavior: "smooth" });
              }}
              onMouseEnter={startAutoScrollDown}
              onMouseLeave={stopAutoScroll}
              onFocus={startAutoScrollDown}
              onBlur={stopAutoScroll}
              className="sticky bottom-0 left-0 right-0 mx-auto flex w-full items-center justify-center bg-gradient-to-t from-white dark:from-gray-800 via-white/90 dark:via-gray-800/90 to-transparent pt-3 pb-2"
            >
              <span className="flex h-8 w-8 items-center justify-center rounded-full border border-gray-200 dark:border-gray-700 bg-white dark:bg-gray-900 shadow-sm">
                <ChevronDown className="h-5 w-5 text-gray-700 dark:text-gray-200" />
              </span>
            </button>
          )}
        </div>
      </div>
    </div>
  );
};

export default MetierReparateurDropdownContent;
