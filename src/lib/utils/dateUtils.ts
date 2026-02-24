
/**
 * Safely formats a date string to a relative time format
 * @param dateString - The date string to format (ISO string expected)
 * @param fallback - Fallback text if date is invalid
 * @returns Formatted relative time string
 */
export const formatSafeRelativeTime = (
  dateString: string | null | undefined, 
  fallback: string = 'Récent'
): string => {
  if (!dateString) return fallback;
  return formatRelativeTime(dateString);
};

/**
 * Formats a date to a specific format (Day Month Year)
 * @param date - The date to format
 * @returns Formatted date string
 */
export const formatDate = (date: string | Date): string => {
  const d = new Date(date);
  return d.toLocaleDateString('fr-FR', {
    year: 'numeric',
    month: 'long',
    day: 'numeric'
  });
};

/**
 * Formats a date to relative time, switching to absolute date after 7 days
 * @param date - The date to format
 * @returns Formatted string
 */
export const formatRelativeTime = (date: string | Date): string => {
  try {
    const targetDate = new Date(date);
    
    // Check if the date is valid
    if (isNaN(targetDate.getTime())) {
      return typeof date === 'string' ? date : 'Récent';
    }

    const now = new Date();
    const diffInSeconds = Math.floor((now.getTime() - targetDate.getTime()) / 1000);

    // Future date protection
    if (diffInSeconds < 0) return "À l'instant";

    if (diffInSeconds < 60) {
      return 'À l\'instant';
    }

    const diffInMinutes = Math.floor(diffInSeconds / 60);
    if (diffInMinutes < 60) {
      return `Il y a ${diffInMinutes} minute${diffInMinutes > 1 ? 's' : ''}`;
    }

    const diffInHours = Math.floor(diffInMinutes / 60);
    if (diffInHours < 24) {
      return `Il y a ${diffInHours} heure${diffInHours > 1 ? 's' : ''}`;
    }

    const diffInDays = Math.floor(diffInHours / 24);
    if (diffInDays < 7) {
      return `Il y a ${diffInDays} jour${diffInDays > 1 ? 's' : ''}`;
    }

    return formatDate(date);
  } catch {
    return 'Récent';
  }
};

/**
 * Safely converts any date input to a valid ISO string
 * @param dateInput - Date input (string, Date, or null)
 * @returns Valid ISO date string
 */
export const toSafeISOString = (dateInput: string | Date | null | undefined): string => {
  if (!dateInput) return new Date().toISOString();
  
  try {
    const date = new Date(dateInput);
    if (isNaN(date.getTime())) {
      return new Date().toISOString();
    }
    return date.toISOString();
  } catch {
    return new Date().toISOString();
  }
};

/**
 * Checks if a date string is a valid date
 * @param dateString - The date string to validate
 * @returns True if valid, false otherwise
 */
export const isValidDate = (dateString: string | null | undefined): boolean => {
  if (!dateString) return false;
  
  try {
    const date = new Date(dateString);
    return !isNaN(date.getTime());
  } catch {
    return false;
  }
};
