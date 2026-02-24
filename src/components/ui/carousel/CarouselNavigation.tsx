import * as React from "react"
import { cn } from "@/lib/utils"
import { Button } from "@/components/ui/button"
import { useCarousel } from "./CarouselContext"

type CarouselNavigationButtonProps = React.ComponentProps<typeof Button> & {
  directionalStyle?: boolean
}

export const CarouselPrevious = React.forwardRef<
  HTMLButtonElement,
  CarouselNavigationButtonProps
>(
  (
    { className, variant = "outline", size = "icon", directionalStyle = false, ...props },
    ref
  ) => {
  const { orientation, scrollPrev, canScrollPrev } = useCarousel();

  // Style transparent doré comme le bouton "Rechercher"
  const customStyle = "btn-publicite bg-black/80 hover:bg-black/90 transition-all duration-300";

  const directionalButtonStyle =
    "!h-[118px] !w-[50px] !rounded-full !border !border-white/20 !bg-white/10 !p-0 !text-white shadow-[0_14px_30px_rgba(0,0,0,0.18)] backdrop-blur-[10px] transition-[background,opacity,transform] duration-300 hover:!bg-white/15"

  return (
    <Button
      ref={ref}
      variant={directionalStyle ? "ghost" : variant}
      size={directionalStyle ? "icon" : size}
      className={cn(
        directionalStyle ? directionalButtonStyle : "absolute h-20 w-20",
        !directionalStyle &&
          (orientation === "horizontal"
            ? "-left-12 top-1/2 -translate-y-1/2"
            : "-top-12 left-1/2 -translate-x-1/2 rotate-90"),
        directionalStyle &&
          orientation !== "horizontal" &&
          "-top-12 left-1/2 -translate-x-1/2 rotate-90",
        !directionalStyle && customStyle,
        className
      )}
      disabled={!canScrollPrev}
      onClick={scrollPrev}
      {...props}
    >
      {directionalStyle ? (
        <svg viewBox="0 0 24 24" fill="none" className="h-[22px] w-[22px]" aria-hidden="true">
          <path
            d="M15 18L9 12L15 6"
            stroke="currentColor"
            strokeWidth="3"
            strokeLinecap="round"
            strokeLinejoin="round"
          />
        </svg>
      ) : (
        <svg
          width="28"
          height="28"
          viewBox="0 0 24 24"
          fill="none"
          className="text-brand-gold"
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
      <span className="sr-only">Previous slide</span>
    </Button>
  )
})
CarouselPrevious.displayName = "CarouselPrevious"

export const CarouselNext = React.forwardRef<
  HTMLButtonElement,
  CarouselNavigationButtonProps
>(
  (
    { className, variant = "outline", size = "icon", directionalStyle = false, ...props },
    ref
  ) => {
  const { orientation, scrollNext, canScrollNext } = useCarousel();

  // Style transparent doré comme le bouton "Rechercher"
  const customStyle = "btn-publicite bg-black/80 hover:bg-black/90 transition-all duration-300";

  const directionalButtonStyle =
    "!h-[118px] !w-[50px] !rounded-full !border !border-white/20 !bg-white/10 !p-0 !text-white shadow-[0_14px_30px_rgba(0,0,0,0.18)] backdrop-blur-[10px] transition-[background,opacity,transform] duration-300 hover:!bg-white/15"

  return (
    <Button
      ref={ref}
      variant={directionalStyle ? "ghost" : variant}
      size={directionalStyle ? "icon" : size}
      className={cn(
        directionalStyle ? directionalButtonStyle : "absolute h-20 w-20",
        !directionalStyle &&
          (orientation === "horizontal"
            ? "-right-12 top-1/2 -translate-y-1/2"
            : "-bottom-12 left-1/2 -translate-x-1/2 rotate-90"),
        directionalStyle &&
          orientation !== "horizontal" &&
          "-bottom-12 left-1/2 -translate-x-1/2 rotate-90",
        !directionalStyle && customStyle,
        className
      )}
      disabled={!canScrollNext}
      onClick={scrollNext}
      {...props}
    >
      {directionalStyle ? (
        <svg
          viewBox="0 0 24 24"
          fill="none"
          className="h-[22px] w-[22px] rotate-180"
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
      ) : (
        <svg
          width="28"
          height="28"
          viewBox="0 0 24 24"
          fill="none"
          className="text-brand-gold"
        >
          <path
            d="M9 18L15 12L9 6"
            stroke="currentColor"
            strokeWidth="3"
            strokeLinecap="round"
            strokeLinejoin="round"
          />
        </svg>
      )}
      <span className="sr-only">Next slide</span>
    </Button>
  )
})
CarouselNext.displayName = "CarouselNext"
