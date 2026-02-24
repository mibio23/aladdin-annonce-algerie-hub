import { createContext, useContext } from "react";
import type { Language } from "./types/comprehensive";

export interface I18nContextWithRouterType {
  language: Language;
  setLanguage: (lang: Language) => void;
  t: (key: string, defaultValue?: string) => string;
  isRTL: boolean;
  setLanguageFromURL: (urlLanguage: Language) => void;
}

export const I18nContextWithRouter = createContext<I18nContextWithRouterType | undefined>(undefined);

export const useI18nWithRouter = (): I18nContextWithRouterType => {
  const context = useContext(I18nContextWithRouter);
  if (context === undefined) {
    throw new Error("useI18nWithRouter must be used within an I18nProviderWithRouter");
  }
  return context;
};

export const useSafeI18nWithRouter = () => {
  const context = useContext(I18nContextWithRouter);
  if (context === undefined) {
    return {
      language: 'fr' as Language,
      setLanguage: () => {},
      t: (key: string, defaultValue?: string) => defaultValue || key,
      isRTL: false,
      setLanguageFromURL: () => {}
    } as I18nContextWithRouterType;
  }
  return context;
};