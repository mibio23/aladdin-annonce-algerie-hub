/**
 * Silent logger for production - zero overhead
 */

const isProduction = import.meta.env.MODE === 'production';

export const logger = {
  debug: (...args: unknown[]) => {
    if (!isProduction) console.debug(...args);
  },
  info: (...args: unknown[]) => {
    if (!isProduction) console.info(...args);
  },
  warn: (...args: unknown[]) => {
    if (!isProduction) console.warn(...args);
  },
  error: (...args: unknown[]) => {
    if (!isProduction) console.error(...args);
  }
};