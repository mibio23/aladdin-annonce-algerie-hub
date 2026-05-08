import React, { useState } from 'react';
import { Card } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Calendar, Clock, CheckCircle2, XCircle, Inbox, User, ChevronRight, CalendarDays, Loader2 } from 'lucide-react';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";
import { useMyBookings, useVendorBookings, useBookingActions, Booking } from '@/hooks/useBookings';
import BookingStatusBadge from '@/components/booking/BookingStatusBadge';
import { useAuth } from '@/contexts/useAuth';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';
import {
  AlertDialog,
  AlertDialogAction,
  AlertDialogCancel,
  AlertDialogContent,
  AlertDialogDescription,
  AlertDialogFooter,
  AlertDialogHeader,
  AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";

const BookingCalendar = () => {
  useSafeI18nWithRouter();
  const { user } = useAuth();
  const { getLocalizedPath } = useLanguageNavigation();
  const { bookings: myBookings, loading: loadingMy, refetch: refetchMy } = useMyBookings();
  const { bookings: vendorBookings, loading: loadingVendor, refetch: refetchVendor } = useVendorBookings();
  const { updateBookingStatus, loading: actionLoading } = useBookingActions();
  const [activeTab, setActiveTab] = useState('my-bookings');

  if (!user) {
    return (
      <div className="min-h-screen bg-background py-8">
        <div className="container mx-auto px-4 max-w-3xl text-center py-20">
          <Calendar className="h-16 w-16 mx-auto mb-4 text-muted-foreground opacity-40" />
          <h2 className="text-xl font-semibold mb-2">Connectez-vous pour voir vos réservations</h2>
          <p className="text-muted-foreground mb-4">Vous devez être connecté pour accéder à cette page</p>
          <Button onClick={() => window.dispatchEvent(new CustomEvent('open-auth-drawer', { detail: 'login' }))}>
            Se connecter
          </Button>
        </div>
      </div>
    );
  }

  const handleAction = async (bookingId: string, status: 'confirmed' | 'cancelled' | 'completed') => {
    const success = await updateBookingStatus(bookingId, status);
    if (success) {
      refetchMy();
      refetchVendor();
    }
  };

  const formatDate = (dateStr: string) => {
    return new Date(dateStr).toLocaleDateString('fr-FR', {
      weekday: 'short',
      day: 'numeric',
      month: 'short',
      year: 'numeric',
    });
  };

  const formatTime = (time: string) => {
    const [h, m] = time.split(':');
    return `${h}h${m}`;
  };

  const pendingCount = vendorBookings.filter(b => b.status === 'pending').length;

  const BookingCard = ({ booking, isVendor = false }: { booking: Booking; isVendor?: boolean }) => (
    <Card className="overflow-hidden hover:shadow-md transition-shadow">
      <div className="flex">
        {/* Left color bar */}
        <div className={`w-1.5 ${
          booking.status === 'pending' ? 'bg-amber-500' :
          booking.status === 'confirmed' ? 'bg-emerald-500' :
          booking.status === 'cancelled' ? 'bg-red-500' :
          'bg-blue-500'
        }`} />

        <div className="flex-1 p-4">
          {/* Header */}
          <div className="flex items-start justify-between mb-3">
            <div className="flex-1 min-w-0">
              <h3 className="font-medium text-sm line-clamp-1">{booking.announcement?.title || 'Annonce'}</h3>
              <p className="text-xs text-muted-foreground mt-0.5">Réf: {booking.booking_reference}</p>
            </div>
            <BookingStatusBadge status={booking.status as 'pending' | 'confirmed' | 'cancelled' | 'completed'} size="sm" />
          </div>

          {/* Date & Time */}
          <div className="flex items-center gap-4 text-sm text-muted-foreground mb-3">
            <span className="flex items-center gap-1">
              <CalendarDays className="h-3.5 w-3.5" />
              {formatDate(booking.booking_date)}
            </span>
            <span className="flex items-center gap-1">
              <Clock className="h-3.5 w-3.5" />
              {formatTime(booking.start_time)} — {formatTime(booking.end_time)}
            </span>
            {booking.guest_count && booking.guest_count > 1 && (
              <span className="flex items-center gap-1">
                <User className="h-3.5 w-3.5" />
                {booking.guest_count} pers.
              </span>
            )}
          </div>

          {/* Special Requests */}
          {booking.special_requests && (
            <p className="text-xs bg-muted/50 rounded p-2 mb-3 text-muted-foreground">
              💬 {booking.special_requests}
            </p>
          )}

          {/* Actions */}
          <div className="flex items-center gap-2">
            {isVendor && booking.status === 'pending' && (
              <>
                <Button
                  size="sm"
                  className="gap-1 bg-emerald-600 hover:bg-emerald-700"
                  onClick={() => handleAction(booking.id, 'confirmed')}
                  disabled={actionLoading}
                >
                  <CheckCircle2 className="h-3.5 w-3.5" /> Confirmer
                </Button>
                <AlertDialog>
                  <AlertDialogTrigger asChild>
                    <Button size="sm" variant="outline" className="gap-1 text-red-600 hover:text-red-700">
                      <XCircle className="h-3.5 w-3.5" /> Refuser
                    </Button>
                  </AlertDialogTrigger>
                  <AlertDialogContent>
                    <AlertDialogHeader>
                      <AlertDialogTitle>Refuser cette réservation ?</AlertDialogTitle>
                      <AlertDialogDescription>
                        Le client sera notifié que sa réservation a été refusée.
                      </AlertDialogDescription>
                    </AlertDialogHeader>
                    <AlertDialogFooter>
                      <AlertDialogCancel>Annuler</AlertDialogCancel>
                      <AlertDialogAction
                        className="bg-red-600 hover:bg-red-700"
                        onClick={() => handleAction(booking.id, 'cancelled')}
                      >
                        Refuser
                      </AlertDialogAction>
                    </AlertDialogFooter>
                  </AlertDialogContent>
                </AlertDialog>
              </>
            )}

            {isVendor && booking.status === 'confirmed' && (
              <Button
                size="sm"
                variant="outline"
                className="gap-1"
                onClick={() => handleAction(booking.id, 'completed')}
                disabled={actionLoading}
              >
                <CheckCircle2 className="h-3.5 w-3.5" /> Marquer terminée
              </Button>
            )}

            {!isVendor && booking.status === 'pending' && (
              <AlertDialog>
                <AlertDialogTrigger asChild>
                  <Button size="sm" variant="outline" className="gap-1 text-red-600">
                    <XCircle className="h-3.5 w-3.5" /> Annuler
                  </Button>
                </AlertDialogTrigger>
                <AlertDialogContent>
                  <AlertDialogHeader>
                    <AlertDialogTitle>Annuler cette réservation ?</AlertDialogTitle>
                    <AlertDialogDescription>
                      Cette action ne peut pas être annulée.
                    </AlertDialogDescription>
                  </AlertDialogHeader>
                  <AlertDialogFooter>
                    <AlertDialogCancel>Non</AlertDialogCancel>
                    <AlertDialogAction
                      className="bg-red-600 hover:bg-red-700"
                      onClick={() => handleAction(booking.id, 'cancelled')}
                    >
                      Oui, annuler
                    </AlertDialogAction>
                  </AlertDialogFooter>
                </AlertDialogContent>
              </AlertDialog>
            )}

            {!isVendor && (
              <Button
                size="sm"
                variant="ghost"
                className="gap-1 text-xs ml-auto"
                onClick={() => window.location.href = getLocalizedPath(`/annonce/${booking.announcement_id}`)}
              >
                Voir l'annonce <ChevronRight className="h-3 w-3" />
              </Button>
            )}
          </div>
        </div>
      </div>
    </Card>
  );

  const EmptyState = ({ message }: { message: string }) => (
    <div className="text-center py-16">
      <Inbox className="h-16 w-16 mx-auto mb-4 text-muted-foreground opacity-30" />
      <p className="text-muted-foreground">{message}</p>
    </div>
  );

  const LoadingState = () => (
    <div className="flex justify-center py-16">
      <Loader2 className="h-8 w-8 animate-spin text-primary" />
    </div>
  );

  return (
    <div className="min-h-screen bg-background py-6">
      <div className="container mx-auto px-4 max-w-3xl">
        {/* Header */}
        <div className="flex items-center gap-3 mb-6">
          <div className="w-10 h-10 rounded-xl bg-primary/10 flex items-center justify-center">
            <Calendar className="h-5 w-5 text-primary" />
          </div>
          <div>
            <h1 className="text-xl font-bold">Mes réservations</h1>
            <p className="text-sm text-muted-foreground">Gérez vos rendez-vous et créneaux</p>
          </div>
        </div>

        <Tabs value={activeTab} onValueChange={setActiveTab}>
          <TabsList className="grid w-full grid-cols-2 mb-6">
            <TabsTrigger value="my-bookings" className="gap-1.5">
              <Calendar className="h-4 w-4" />
              Mes réservations
            </TabsTrigger>
            <TabsTrigger value="received" className="gap-1.5 relative">
              <Inbox className="h-4 w-4" />
              Reçues
              {pendingCount > 0 && (
                <span className="absolute -top-1 -right-1 bg-red-500 text-white text-[10px] font-bold rounded-full w-5 h-5 flex items-center justify-center">
                  {pendingCount}
                </span>
              )}
            </TabsTrigger>
          </TabsList>

          {/* Tab 1: My Bookings (as client) */}
          <TabsContent value="my-bookings" className="space-y-3">
            {loadingMy ? <LoadingState /> : myBookings.length === 0 ? (
              <EmptyState message="Vous n'avez aucune réservation pour le moment" />
            ) : (
              myBookings.map(booking => (
                <BookingCard key={booking.id} booking={booking} />
              ))
            )}
          </TabsContent>

          {/* Tab 2: Received Bookings (as vendor) */}
          <TabsContent value="received" className="space-y-3">
            {loadingVendor ? <LoadingState /> : vendorBookings.length === 0 ? (
              <EmptyState message="Aucune réservation reçue — activez les réservations sur vos annonces de services" />
            ) : (
              <>
                {/* Pending first */}
                {vendorBookings.filter(b => b.status === 'pending').length > 0 && (
                  <div className="space-y-2">
                    <h3 className="text-sm font-medium text-amber-600 flex items-center gap-1">
                      <Clock className="h-4 w-4" /> En attente de confirmation
                    </h3>
                    {vendorBookings.filter(b => b.status === 'pending').map(booking => (
                      <BookingCard key={booking.id} booking={booking} isVendor />
                    ))}
                  </div>
                )}

                {/* Others */}
                {vendorBookings.filter(b => b.status !== 'pending').length > 0 && (
                  <div className="space-y-2 mt-4">
                    <h3 className="text-sm font-medium text-muted-foreground">Historique</h3>
                    {vendorBookings.filter(b => b.status !== 'pending').map(booking => (
                      <BookingCard key={booking.id} booking={booking} isVendor />
                    ))}
                  </div>
                )}
              </>
            )}
          </TabsContent>
        </Tabs>
      </div>
    </div>
  );
};

export default BookingCalendar;