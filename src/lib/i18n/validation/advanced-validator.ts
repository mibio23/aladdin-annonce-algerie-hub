// Browser-compatible translation validator stub
// The original Node.js CLI validator (fs, path) was removed as it's incompatible with Vite/browser

import type { TranslationMetrics } from '../types/comprehensive';

export const translationValidator = {
  async validateAll(): Promise<TranslationMetrics> {
    return {
      totalKeys: 0,
      translatedKeys: 0,
      missingKeys: 0,
      completionPercentage: 0,
      lastUpdated: new Date().toISOString(),
      languageBreakdown: {},
      coverage: {},
      missingByLanguage: {},
      domains: [],
    } as unknown as TranslationMetrics;
  },
};
