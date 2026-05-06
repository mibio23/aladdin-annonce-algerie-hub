-- ============================================================================
-- BOOKING SYSTEM — Availability Slots + Enhanced Policies
-- Allows service providers to define available time slots
-- Allows clients to book only available slots
-- ============================================================================

-- ============================================================================
-- 1. Create availability_slots table (vendor defines their schedule)
-- ============================================================================
CREATE TABLE IF NOT EXISTS public.availability_slots (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  announcement_id UUID NOT NULL REFERENCES public.announcements(id) ON DELETE CASCADE,
  user_id UUID NOT NULL,
  day_of_week INTEGER NOT NULL CHECK (day_of_week BETWEEN 0 AND 6),
  -- 0=Dimanche, 1=Lundi, 2=Mardi, 3=Mercredi, 4=Jeudi, 5=Vendredi, 6=Samedi
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,
  slot_duration_minutes INTEGER NOT NULL DEFAULT 60,
  is_active BOOLEAN NOT NULL DEFAULT true,
  max_bookings_per_slot INTEGER NOT NULL DEFAULT 1,
  price_override DECIMAL(10,2),
  created_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT now(),
  CONSTRAINT valid_time_range CHECK (start_time < end_time)
);

ALTER TABLE public.availability_slots ENABLE ROW LEVEL SECURITY;

-- Vendor can manage their own slots
CREATE POLICY "Owners can manage availability_slots"
ON public.availability_slots FOR ALL
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

-- Everyone can read active slots (to see available times)
CREATE POLICY "Everyone can view active availability_slots"
ON public.availability_slots FOR SELECT
USING (is_active = true);

-- Indexes
CREATE INDEX IF NOT EXISTS idx_availability_slots_announcement ON public.availability_slots(announcement_id);
CREATE INDEX IF NOT EXISTS idx_availability_slots_user ON public.availability_slots(user_id);
CREATE INDEX IF NOT EXISTS idx_availability_slots_day ON public.availability_slots(day_of_week);

-- Trigger for updated_at
DROP TRIGGER IF EXISTS update_availability_slots_updated_at ON public.availability_slots;
CREATE TRIGGER update_availability_slots_updated_at
  BEFORE UPDATE ON public.availability_slots
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();

-- ============================================================================
-- 2. Add column to announcements to enable booking
-- ============================================================================
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_schema = 'public' AND table_name = 'announcements' AND column_name = 'booking_enabled'
  ) THEN
    ALTER TABLE public.announcements ADD COLUMN booking_enabled BOOLEAN DEFAULT false;
  END IF;
END $$;

-- ============================================================================
-- 3. Enhanced bookings policies — vendor can see bookings for their announcements
-- ============================================================================
DROP POLICY IF EXISTS "Vendors can view bookings for their announcements" ON public.bookings;

CREATE POLICY "Vendors can view bookings for their announcements"
ON public.bookings FOR SELECT
TO authenticated
USING (
  EXISTS (
    SELECT 1 FROM public.announcements a
    WHERE a.id = bookings.announcement_id
      AND a.user_id = auth.uid()
  )
);

-- Vendor can update booking status (confirm/cancel)
DROP POLICY IF EXISTS "Vendors can update booking status" ON public.bookings;

CREATE POLICY "Vendors can update booking status"
ON public.bookings FOR UPDATE
TO authenticated
USING (
  EXISTS (
    SELECT 1 FROM public.announcements a
    WHERE a.id = bookings.announcement_id
      AND a.user_id = auth.uid()
  )
);

-- ============================================================================
-- 4. Create blocked_dates table (vendor blocks specific dates)
-- ============================================================================
CREATE TABLE IF NOT EXISTS public.blocked_dates (
  id UUID NOT NULL DEFAULT gen_random_uuid() PRIMARY KEY,
  announcement_id UUID NOT NULL REFERENCES public.announcements(id) ON DELETE CASCADE,
  user_id UUID NOT NULL,
  blocked_date DATE NOT NULL,
  reason TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT now()
);

ALTER TABLE public.blocked_dates ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Owners can manage blocked_dates"
ON public.blocked_dates FOR ALL
TO authenticated
USING (user_id = auth.uid())
WITH CHECK (user_id = auth.uid());

CREATE POLICY "Everyone can view blocked_dates"
ON public.blocked_dates FOR SELECT
USING (true);

CREATE INDEX IF NOT EXISTS idx_blocked_dates_announcement ON public.blocked_dates(announcement_id);
CREATE INDEX IF NOT EXISTS idx_blocked_dates_date ON public.blocked_dates(blocked_date);

-- ============================================================================
-- DONE
-- ============================================================================
