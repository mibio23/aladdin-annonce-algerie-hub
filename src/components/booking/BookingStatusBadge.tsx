import React from 'react';
import { Badge } from '@/components/ui/badge';
import { Clock, CheckCircle2, XCircle, Trophy } from 'lucide-react';

interface BookingStatusBadgeProps {
  status: 'pending' | 'confirmed' | 'cancelled' | 'completed';
  size?: 'sm' | 'md';
}

const statusConfig = {
  pending: {
    label: { fr: 'En attente', ar: 'في الانتظار', en: 'Pending' },
    icon: Clock,
    className: 'bg-amber-100 text-amber-800 border-amber-200 dark:bg-amber-900/30 dark:text-amber-300 dark:border-amber-800',
  },
  confirmed: {
    label: { fr: 'Confirmée', ar: 'مؤكدة', en: 'Confirmed' },
    icon: CheckCircle2,
    className: 'bg-emerald-100 text-emerald-800 border-emerald-200 dark:bg-emerald-900/30 dark:text-emerald-300 dark:border-emerald-800',
  },
  cancelled: {
    label: { fr: 'Annulée', ar: 'ملغاة', en: 'Cancelled' },
    icon: XCircle,
    className: 'bg-red-100 text-red-800 border-red-200 dark:bg-red-900/30 dark:text-red-300 dark:border-red-800',
  },
  completed: {
    label: { fr: 'Terminée', ar: 'مكتملة', en: 'Completed' },
    icon: Trophy,
    className: 'bg-blue-100 text-blue-800 border-blue-200 dark:bg-blue-900/30 dark:text-blue-300 dark:border-blue-800',
  },
};

const BookingStatusBadge: React.FC<BookingStatusBadgeProps> = ({ status, size = 'md' }) => {
  const config = statusConfig[status] || statusConfig.pending;
  const Icon = config.icon;

  return (
    <Badge
      variant="outline"
      className={`${config.className} ${size === 'sm' ? 'text-xs px-2 py-0.5' : 'text-sm px-3 py-1'} font-medium`}
    >
      <Icon className={`${size === 'sm' ? 'h-3 w-3' : 'h-4 w-4'} mr-1`} />
      {config.label.fr}
    </Badge>
  );
};

export default BookingStatusBadge;
