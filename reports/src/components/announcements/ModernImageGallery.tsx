import React, { useState } from 'react';
import { ChevronLeft, ChevronRight, Maximize2, Play } from 'lucide-react';
import { Dialog, DialogContent, DialogTrigger } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { cn } from '@/lib/utils';

interface ModernImageGalleryProps {
  images: string[];
  title: string;
}

const isVideo = (url: string) => {
  return /\.(mp4|webm|ogg|m3u8|mov|m4v)$/i.test(url);
};

const ModernImageGallery: React.FC<ModernImageGalleryProps> = ({ images, title }) => {
  const [selectedIndex, setSelectedIndex] = useState(0);
  const [isLightboxOpen, setIsLightboxOpen] = useState(false);

  if (!images || images.length === 0) {
    return (
      <div className="w-full h-[400px] bg-gray-100 rounded-lg flex items-center justify-center text-gray-400">
        No media available
      </div>
    );
  }

  const handlePrevious = (e?: React.MouseEvent) => {
    e?.stopPropagation();
    setSelectedIndex((prev) => (prev === 0 ? images.length - 1 : prev - 1));
  };

  const handleNext = (e?: React.MouseEvent) => {
    e?.stopPropagation();
    setSelectedIndex((prev) => (prev === images.length - 1 ? 0 : prev + 1));
  };

  const currentMedia = images[selectedIndex];

  return (
    <div className="flex flex-col-reverse md:flex-row gap-4 h-full">
      {/* Thumbnails List - Left Side (Desktop) / Bottom (Mobile) */}
      <div className="flex md:flex-col gap-2 overflow-x-auto md:overflow-y-auto md:w-24 md:h-[500px] scrollbar-hide py-2 md:py-0 px-1 md:px-0">
        {images.map((media, index) => {
          const isVid = isVideo(media);
          return (
            <button
              key={index}
              onClick={() => setSelectedIndex(index)}
              className={cn(
                "relative flex-shrink-0 w-16 h-16 md:w-20 md:h-20 rounded-md overflow-hidden border-2 transition-all",
                selectedIndex === index
                  ? "border-primary ring-2 ring-primary/30"
                  : "border-transparent hover:border-gray-300"
              )}
            >
              {isVid ? (
                <div className="w-full h-full bg-black flex items-center justify-center">
                  <Play className="w-6 h-6 text-white opacity-80" />
                </div>
              ) : (
                <img
                  src={media}
                  alt={`${title} - View ${index + 1}`}
                  className="w-full h-full object-cover"
                />
              )}
            </button>
          );
        })}
      </div>

      {/* Main Image/Video Area */}
      <div className="flex-1 relative group h-[300px] md:h-[500px] bg-gray-50 rounded-xl overflow-hidden border border-gray-100 flex items-center justify-center bg-black/5">
        {isVideo(currentMedia) ? (
          <video
            src={currentMedia}
            controls
            className="w-full h-full object-contain"
            poster={images.find(img => !isVideo(img))} // Try to use first image as poster
          />
        ) : (
          <img
            src={currentMedia}
            alt={`${title} - Main view`}
            className="w-full h-full object-contain mix-blend-multiply"
          />
        )}

        {/* Navigation Arrows */}
        {images.length > 1 && (
          <>
            <button
              onClick={handlePrevious}
              className="absolute left-2 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 p-2 rounded-full shadow-md opacity-0 group-hover:opacity-100 transition-opacity z-10"
              aria-label="Previous"
            >
              <ChevronLeft className="w-6 h-6" />
            </button>
            <button
              onClick={handleNext}
              className="absolute right-2 top-1/2 -translate-y-1/2 bg-white/80 hover:bg-white text-gray-800 p-2 rounded-full shadow-md opacity-0 group-hover:opacity-100 transition-opacity z-10"
              aria-label="Next"
            >
              <ChevronRight className="w-6 h-6" />
            </button>
          </>
        )}

        {/* Lightbox Trigger */}
        <Dialog open={isLightboxOpen} onOpenChange={setIsLightboxOpen}>
          <DialogTrigger asChild>
            <Button
              variant="ghost"
              size="icon"
              className="absolute top-2 right-2 bg-black/5 hover:bg-black/10 text-gray-700 opacity-0 group-hover:opacity-100 transition-opacity z-10"
            >
              <Maximize2 className="w-5 h-5" />
            </Button>
          </DialogTrigger>
          <DialogContent className="max-w-[95vw] max-h-[95vh] p-0 bg-black/90 border-none">
            <div className="relative w-full h-full flex items-center justify-center p-4">
              {isVideo(currentMedia) ? (
                <video
                    src={currentMedia}
                    controls
                    className="max-w-full max-h-[85vh] object-contain"
                    autoPlay
                />
              ) : (
                <img
                    src={currentMedia}
                    alt={`${title} - Fullscreen`}
                    className="max-w-full max-h-[85vh] object-contain"
                />
              )}
              
              {images.length > 1 && (
                <>
                  <button
                    onClick={handlePrevious}
                    className="absolute left-4 top-1/2 -translate-y-1/2 text-white hover:text-gray-300 p-2 z-20"
                  >
                    <ChevronLeft className="w-10 h-10" />
                  </button>
                  <button
                    onClick={handleNext}
                    className="absolute right-4 top-1/2 -translate-y-1/2 text-white hover:text-gray-300 p-2 z-20"
                  >
                    <ChevronRight className="w-10 h-10" />
                  </button>
                </>
              )}
              
              {/* Lightbox Thumbnails */}
              <div className="absolute bottom-4 left-1/2 -translate-x-1/2 flex gap-2 overflow-x-auto max-w-[80%] pb-2 z-20">
                {images.map((media, index) => {
                  const isVid = isVideo(media);
                  return (
                    <button
                        key={index}
                        onClick={(e) => {
                        e.stopPropagation();
                        setSelectedIndex(index);
                        }}
                        className={cn(
                        "w-12 h-12 rounded-sm overflow-hidden border-2 transition-all flex-shrink-0",
                        selectedIndex === index ? "border-white" : "border-transparent opacity-50 hover:opacity-100"
                        )}
                    >
                        {isVid ? (
                            <div className="w-full h-full bg-gray-800 flex items-center justify-center">
                                <Play className="w-4 h-4 text-white" />
                            </div>
                        ) : (
                            <img src={media} alt="thumb" className="w-full h-full object-cover" />
                        )}
                    </button>
                  );
                })}
              </div>
            </div>
          </DialogContent>
        </Dialog>
      </div>
    </div>
  );
};

export default ModernImageGallery;
