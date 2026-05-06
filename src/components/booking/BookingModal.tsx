import React, { useState, useEffect } from 'react';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogFooter } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Label } from '@/components/ui/label';
import { Calendar, Clock, User, Phone, Mail, Loader2, CheckCircle2 } from 'lucide-react';
import { useBookingActions, useAvailabilitySlots } from '@/hooks/useBookings';
import { useAuth } from '@/contexts/useAuth';

interface BookingModalProps {
  open: boolean;
  onOpenChange: (open: boolean) => void;
  announcementId: string;
  announcementTitle: string;
  announcementPrice?: number | null;
}

const BookingModal: React.FC<BookingModalProps> = ({
  open,
  onOpenChange,
  announcementId,
  announcementTitle,
  announcementPrice,
}) => {
  const { user } = useAuth();
  const { createBooking, loading: submitting } = useBookingActions();
  const { getAvailableTimesForDate, slots, blockedDates } = useAvailabilitySlots(announcementId);

  const [selectedDate, setSelectedDate] = useState('');
  const [selectedTime, setSelectedTime] = useState<{ start: string; end: string } | null>(null);
  const [availableTimes, setAvailableTimes] = useState<{ start_time: string; end_time: string; available: boolean }[]>([]);
  const [loadingTimes, setLoadingTimes] = useState(false);
  const [guestCount, setGuestCount] = useState(1);
  const [specialRequests, setSpecialRequests] = useState('');
  const [contactPhone, setContactPhone] = useState('');
  const [contactEmail, setContactEmail] = useState('');
  const [step, setStep] = useState<'date' | 'time' | 'details' | 'success'>('date');
  const [bookingRef, setBookingRef] = useState('');

  // Get min date (tomorrow)
  const tomorrow = new Date();
  tomorrow.setDate(tomorrow.getDate() + 1);
  const minDate = tomorrow.toISOString().split('T')[0];

  // Get days that have slots
  const availableDays = [...new Set(slots.filter(s => s.is_active).map(s => s.day_of_week))];

  useEffect(() => {
    if (!open) {
      setStep('date');
      setSelectedDate('');
      setSelectedTime(null);
      setAvailableTimes([]);
      setGuestCount(1);
      setSpecialRequests('');
      setBookingRef('');
    }
  }, [open]);

  const handleDateSelect = async (date: string) => {
    setSelectedDate(date);
    setSelectedTime(null);
    setLoadingTimes(true);

    // Check if this day of week has slots
    const dateObj = new Date(date);
    const dayOfWeek = dateObj.getDay();

    if (!availableDays.includes(dayOfWeek)) {
      setAvailableTimes([]);
      setLoadingTimes(false);
      return;
    }

    const times = await getAvailableTimesForDate(date);
    setAvailableTimes(times);
    setLoadingTimes(false);
    setStep('time');
  };

  const handleTimeSelect = (time: { start_time: string; end_time: string }) => {
    setSelectedTime({ start: time.start_time, end: time.end_time });
    setStep('details');
  };

  const handleSubmit = async () => {
    if (!selectedDate || !selectedTime) return;

    const result = await createBooking({
      announcement_id: announcementId,
      booking_date: selectedDate,
      start_time: selectedTime.start,
      end_time: selectedTime.end,
      guest_count: guestCount,
      special_requests: specialRequests || undefined,
      contact_phone: contactPhone || undefined,
      contact_email: contactEmail || undefined,
      total_amount: announcementPrice || undefined,
    });

    if (result) {
      setBookingRef(result.booking_reference);
      setStep('success');
    }
  };

  const formatTime = (time: string) => {
    const [h, m] = time.split(':');
    return `${h}h${m}`;
  };

  const getDayName = (dayNum: number) => {
    const days = ['Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi'];
    return days[dayNum];
  };

  const isDateBlocked = (date: string) => {
    return blockedDates.some(bd => bd.blocked_date === date);
  };

  const isDateAvailable = (dateStr: string) => {
    const dateObj = new Date(dateStr);
    const dayOfWeek = dateObj.getDay();
    return availableDays.includes(dayOfWeek) && !isDateBlocked(dateStr);
  };

  return (
    <Dialog open={open} onOpenChange={onOpenChange}>
      <DialogContent className="sm:max-w-md">
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2 text-lg">
            <Calendar className="h-5 w-5 text-primary" />
            Réserver un créneau
          </DialogTitle>
          <p className="text-sm text-muted-foreground line-clamp-1">{announcementTitle}</p>
        </DialogHeader>

        {/* Step 1: Select Date */}
        {step === 'date' && (
          <div className="space-y-4">
            <div>
              <Label className="text-sm font-medium flex items-center gap-2 mb-3">
                <Calendar className="h-4 w-4" />
                Choisissez une date
              </Label>

              {/* Available days info */}
              {availableDays.length > 0 && (
                <div className="bg-muted/50 rounded-lg p-3 mb-3">
                  <p className="text-xs text-muted-foreground mb-1">Jours disponibles :</p>
                  <div className="flex flex-wrap gap-1">
                    {availableDays.sort().map(day => (
                      <span key={day} className="text-xs bg-primary/10 text-primary px-2 py-0.5 rounded-full">
                        {getDayName(day)}
                      </span>
                    ))}
                  </div>
                </div>
              )}

              {availableDays.length === 0 && (
                <div className="text-center py-8 text-muted-foreground">
                  <Calendar className="h-12 w-12 mx-auto mb-3 opacity-30" />
                  <p className="text-sm">Aucun créneau disponible pour cette annonce</p>
                  <p className="text-xs mt-1">Le vendeur n'a pas encore configuré ses horaires</p>
                </div>
              )}

              {availableDays.length > 0 && (
                <Input
                  type="date"
                  min={minDate}
                  value={selectedDate}
                  onChange={(e) => {
                    const val = e.target.value;
                    if (isDateAvailable(val)) {
                      handleDateSelect(val);
                    }
                  }}
                  className="w-full"
                />
              )}
            </div>
          </div>
        )}

        {/* Step 2: Select Time */}
        {step === 'time' && (
          <div className="space-y-4">
            <div className="flex items-center gap-2 text-sm text-muted-foreground">
              <Calendar className="h-4 w-4" />
              {new Date(selectedDate).toLocaleDateString('fr-FR', { weekday: 'long', day: 'numeric', month: 'long' })}
              <Button variant="ghost" size="sm" onClick={() => setStep('date')}>Changer</Button>
            </div>

            <Label className="text-sm font-medium flex items-center gap-2">
              <Clock className="h-4 w-4" />
              Choisissez un horaire
            </Label>

            {loadingTimes ? (
              <div className="flex justify-center py-8">
                <Loader2 className="h-6 w-6 animate-spin text-primary" />
              </div>
            ) : availableTimes.length === 0 ? (
              <div className="text-center py-6 text-muted-foreground">
                <Clock className="h-10 w-10 mx-auto mb-2 opacity-30" />
                <p className="text-sm">Aucun créneau disponible ce jour</p>
              </div>
            ) : (
              <div className="grid grid-cols-3 gap-2 max-h-60 overflow-y-auto">
                {availableTimes.map((time, i) => (
                  <Button
                    key={i}
                    variant={time.available ? 'outline' : 'ghost'}
                    size="sm"
                    disabled={!time.available}
                    onClick={() => handleTimeSelect(time)}
                    className={`text-sm ${!time.available ? 'opacity-40 line-through' : 'hover:bg-primary hover:text-primary-foreground'}`}
                  >
                    {formatTime(time.start_time)}
                  </Button>
                ))}
              </div>
            )}
          </div>
        )}

        {/* Step 3: Details */}
        {step === 'details' && (
          <div className="space-y-4">
            {/* Summary */}
            <div className="bg-primary/5 rounded-lg p-3 border border-primary/10">
              <div className="flex items-center gap-4 text-sm">
                <span className="flex items-center gap-1"><Calendar className="h-3.5 w-3.5" /> {new Date(selectedDate).toLocaleDateString('fr-FR', { day: 'numeric', month: 'short' })}</span>
                <span className="flex items-center gap-1"><Clock className="h-3.5 w-3.5" /> {formatTime(selectedTime!.start)} — {formatTime(selectedTime!.end)}</span>
              </div>
              <Button variant="link" size="sm" className="p-0 h-auto text-xs" onClick={() => setStep('date')}>Modifier</Button>
            </div>

            <div className="space-y-3">
              <div>
                <Label className="text-sm flex items-center gap-1"><User className="h-3.5 w-3.5" /> Nombre de personnes</Label>
                <Input type="number" min={1} max={20} value={guestCount} onChange={(e) => setGuestCount(parseInt(e.target.value) || 1)} className="mt-1" />
              </div>

              <div>
                <Label className="text-sm flex items-center gap-1"><Phone className="h-3.5 w-3.5" /> Téléphone (optionnel)</Label>
                <Input type="tel" placeholder="0555 123 456" value={contactPhone} onChange={(e) => setContactPhone(e.target.value)} className="mt-1" />
              </div>

              <div>
                <Label className="text-sm flex items-center gap-1"><Mail className="h-3.5 w-3.5" /> Email (optionnel)</Label>
                <Input type="email" placeholder="votre@email.com" value={contactEmail} onChange={(e) => setContactEmail(e.target.value)} className="mt-1" />
              </div>

              <div>
                <Label className="text-sm">Demandes spéciales (optionnel)</Label>
                <Textarea
                  placeholder="Informations supplémentaires..."
                  value={specialRequests}
                  onChange={(e) => setSpecialRequests(e.target.value)}
                  className="mt-1"
                  rows={2}
                />
              </div>
            </div>

            <DialogFooter>
              <Button variant="outline" onClick={() => setStep('time')}>Retour</Button>
              <Button onClick={handleSubmit} disabled={submitting} className="gap-2">
                {submitting ? <Loader2 className="h-4 w-4 animate-spin" /> : <Calendar className="h-4 w-4" />}
                Confirmer la réservation
              </Button>
            </DialogFooter>
          </div>
        )}

        {/* Step 4: Success */}
        {step === 'success' && (
          <div className="text-center py-6 space-y-4">
            <div className="mx-auto w-16 h-16 rounded-full bg-emerald-100 dark:bg-emerald-900/30 flex items-center justify-center">
              <CheckCircle2 className="h-8 w-8 text-emerald-600" />
            </div>
            <div>
              <h3 className="text-lg font-semibold">Réservation envoyée !</h3>
              <p className="text-sm text-muted-foreground mt-1">Le vendeur va confirmer votre créneau</p>
            </div>
            <div className="bg-muted rounded-lg p-3">
              <p className="text-xs text-muted-foreground">Référence</p>
              <p className="text-lg font-mono font-bold tracking-wider">{bookingRef}</p>
            </div>
            <div className="text-sm text-muted-foreground space-y-1">
              <p className="flex items-center justify-center gap-1">
                <Calendar className="h-3.5 w-3.5" />
                {new Date(selectedDate).toLocaleDateString('fr-FR', { weekday: 'long', day: 'numeric', month: 'long' })}
              </p>
              <p className="flex items-center justify-center gap-1">
                <Clock className="h-3.5 w-3.5" />
                {selectedTime && `${formatTime(selectedTime.start)} — ${formatTime(selectedTime.end)}`}
              </p>
            </div>
            <Button onClick={() => onOpenChange(false)} className="w-full">Fermer</Button>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
};

export default BookingModal;
