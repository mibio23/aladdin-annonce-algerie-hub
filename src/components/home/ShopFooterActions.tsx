import React from "react";
import { Phone, MessageSquare, Share2, MessageCircle, Heart } from "lucide-react";

interface ShopFooterActionsProps {
  isFavorite: boolean;
  followersCount: number;
  onFavoriteToggle: (e: React.MouseEvent) => void;
  onShareClick: (e: React.MouseEvent, action: string) => void;
}

const ShopFooterActions: React.FC<ShopFooterActionsProps> = ({
  isFavorite,
  followersCount,
  onFavoriteToggle,
  onShareClick,
}) => (
  <div className="flex flex-col gap-3 mb-3 px-2">
    <div className="flex items-center justify-between gap-2">
      <button
        onClick={onFavoriteToggle}
        className={`flex-1 flex items-center justify-center gap-2 px-4 py-2.5 rounded-xl transition-all font-medium shadow-sm group ${
          isFavorite 
            ? "bg-emerald-100 text-emerald-700 hover:bg-emerald-200 dark:bg-emerald-900/30 dark:text-emerald-400 border border-emerald-200 dark:border-emerald-800" 
            : "bg-slate-100 text-slate-700 hover:bg-slate-200 dark:bg-slate-800 dark:text-slate-300 border border-slate-200 dark:border-slate-700"
        }`}
      >
        <div className="relative">
          <Heart 
            size={24} 
            className={`transition-all ${isFavorite ? "fill-current scale-110 animate-pulse" : "group-hover:scale-110"}`} 
          />
        </div>
        <span>{isFavorite ? "Suivi" : "Suivre"}</span>
        {followersCount > 0 && (
          <span className={`ml-1 text-sm font-bold px-2 py-0.5 rounded-full ${
            isFavorite 
              ? "bg-emerald-200/50 text-emerald-800 dark:bg-emerald-800/50 dark:text-emerald-300" 
              : "bg-slate-200 text-slate-600 dark:bg-slate-700 dark:text-slate-400"
          }`}>
            {followersCount}
          </span>
        )}
      </button>

      <button
        onClick={(e) => onShareClick(e, "Share")}
        className="p-3 text-slate-600 hover:text-indigo-600 dark:text-slate-400 dark:hover:text-indigo-500 rounded-xl transition-colors bg-slate-100 dark:bg-slate-800 hover:bg-indigo-50 dark:hover:bg-indigo-900/30 border border-slate-200 dark:border-slate-700"
        title="Partager"
      >
        <Share2 size={32} />
      </button>
    </div>

    <div className="flex items-center justify-between gap-2">
      <button
        onClick={(e) => onShareClick(e, "Phone")}
        className="flex-1 p-4 text-slate-600 hover:text-emerald-600 dark:text-slate-400 dark:hover:text-emerald-500 rounded-xl transition-colors bg-slate-100 dark:bg-slate-800 hover:bg-emerald-50 dark:hover:bg-emerald-900/30 border border-slate-200 dark:border-slate-700 flex justify-center items-center"
        title="Appeler"
      >
        <Phone size={32} />
      </button>
      <button
        onClick={(e) => onShareClick(e, "Message")}
        className="flex-1 p-4 text-slate-600 hover:text-blue-600 dark:text-slate-400 dark:hover:text-blue-500 rounded-xl transition-colors bg-slate-100 dark:bg-slate-800 hover:bg-blue-50 dark:hover:bg-blue-900/30 border border-slate-200 dark:border-slate-700 flex justify-center items-center"
        title="Message"
      >
        <MessageSquare size={32} />
      </button>
      <button
        onClick={(e) => onShareClick(e, "WhatsApp")}
        className="flex-1 p-4 text-slate-600 hover:text-green-600 dark:text-slate-400 dark:hover:text-green-500 rounded-xl transition-colors bg-slate-100 dark:bg-slate-800 hover:bg-green-50 dark:hover:bg-green-900/30 border border-slate-200 dark:border-slate-700 flex justify-center items-center"
        title="WhatsApp"
      >
        <MessageCircle size={32} />
      </button>
    </div>
  </div>
);

export default ShopFooterActions;
