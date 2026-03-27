/**
 * Safely stringifies an object, handling circular references and other edge cases
 * This is a utility function to prevent "safeStringify is not defined" errors
 */

export function safeStringify(obj: unknown, indent?: number): string {
  try {
    // Handle null/undefined cases
    if (obj === null || obj === undefined) {
      return String(obj);
    }
    
    // Handle primitive types
    if (typeof obj !== 'object') {
      return String(obj);
    }
    
    // Create a cache to detect circular references
    const cache = new Set();
    
    return JSON.stringify(obj as Record<string, unknown>, (key, value) => {
      if (typeof value === 'object' && value !== null) {
        // Circular reference detected
        if (cache.has(value)) {
          return '[Circular]';
        }
        cache.add(value);
      }
      return value;
    }, indent);
  } catch (error) {
    logger.error('Error in safeStringify:', error);
    // Fallback to basic string representation
    return String(obj);
  }
}

export default safeStringify;
import { logger } from '@/utils/silentLogger';