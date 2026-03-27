// Utilitaires pour éviter les erreurs de sérialisation cyclique

export function safeStringify(obj: unknown, indent: number = 2): string {
  const cache = new Set();
  return JSON.stringify(obj as Record<string, unknown>, (key, value) => {
    if (typeof value === 'object' && value !== null) {
      if (cache.has(value)) {
        return '[Circular Reference]';
      }
      cache.add(value);
    }
    return value;
  }, indent);
}

export function safeLog(description: string, obj: unknown): void {
  try {
    logger.info(description);
    if (typeof obj === 'object' && obj !== null) {
      const safeObj: Record<string, unknown> = {};
      const source = obj as Record<string, unknown>;
      Object.keys(source).forEach(key => {
        const value = source[key];
        if (typeof value !== 'function' && typeof value !== 'object' || value === null) {
          safeObj[key] = value;
        } else if (Array.isArray(value)) {
          safeObj[key] = value.length;
        } else {
          safeObj[key] = '[Object]';
        }
      });
      logger.info(safeObj);
    } else {
      logger.info(obj as unknown);
    }
  } catch (error) {
    logger.error(`  ❌ Erreur de log: ${(error as Error).message}`);
  }
}

export function safeJSONParse<T>(str: string, fallback?: T): T | null {
  try {
    return JSON.parse(str);
  } catch (error) {
    logger.warn('Erreur de parsing JSON:', error as unknown as string);
    return fallback || null;
  }
}
import { logger } from '@/utils/silentLogger';
