
import { supabase } from '@/integrations/supabase/client';
import { logger } from '@/utils/silentLogger';
import { UserPattern } from '@/types/search';

export const searchTrackingService = {
  async trackClick(
    searchId: string,
    resultId: string,
    resultType: string,
    clickPosition: number,
    sessionId: string,
    timeToClick?: number
  ) {
    try {
      await supabase.functions.invoke('search-learning-system', {
        body: {
          type: 'click',
          searchId,
          resultId,
          resultType,
          clickPosition,
          timeToClick,
          sessionId
        }
      });
    } catch (error) {
      logger.warn('Erreur lors du tracking du clic:', error);
    }
  },

  async trackConversion(sessionId: string) {
    try {
      await supabase.functions.invoke('search-learning-system', {
        body: {
          type: 'conversion',
          sessionId
        }
      });
    } catch (error) {
      logger.warn('Erreur lors du tracking de conversion:', error);
    }
  },

  async trackCorrection(originalQuery: string, correctedQuery: string, sessionId: string) {
    try {
      await supabase.functions.invoke('search-learning-system', {
        body: {
          type: 'correction',
          originalQuery,
          correctedQuery,
          sessionId
        }
      });
    } catch (error) {
      logger.warn('Erreur lors du tracking de correction:', error);
    }
  },

  async trackUserPattern(
    sessionId: string,
    userPattern: UserPattern
  ) {
    try {
      await supabase.functions.invoke('search-learning-system', {
        body: {
          type: 'pattern',
          sessionId,
          userPattern
        }
      });
    } catch (error) {
      logger.warn('Erreur lors du tracking de pattern:', error);
    }
  }
};
