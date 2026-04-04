-- Normalize conversations/messages schema and RLS
-- 1) Ensure conversations table exists with required columns
do $$
begin
  if not exists (select 1 from information_schema.tables where table_schema='public' and table_name='conversations') then
    create table public.conversations (
      id uuid default gen_random_uuid() primary key,
      participant_1_id uuid not null references auth.users(id) on delete cascade,
      participant_2_id uuid not null references auth.users(id) on delete cascade,
      subject_type text,
      subject_id uuid,
      title text,
      last_message_at timestamptz default now(),
      created_at timestamptz default now(),
      updated_at timestamptz default now()
    );
  end if;
end $$;

-- 2) Add missing columns or constraints
alter table public.conversations
  add column if not exists subject_type text,
  add column if not exists subject_id uuid,
  add column if not exists title text,
  add column if not exists last_message_at timestamptz default now(),
  add column if not exists created_at timestamptz default now(),
  add column if not exists updated_at timestamptz default now();

-- Subject type check
do $$
begin
  if not exists (
    select 1 from pg_constraint
    where conname = 'conversations_subject_type_check'
      and conrelid = 'public.conversations'::regclass
  ) then
    alter table public.conversations
      add constraint conversations_subject_type_check
      check (subject_type is null or subject_type in ('ad','shop','job_offer'));
  end if;
end $$;

-- Unique index to avoid duplicates for same pair + same subject, order-insensitive
create unique index if not exists conversations_unique_participants_subject
on public.conversations (
  least(participant_1_id::text, participant_2_id::text),
  greatest(participant_1_id::text, participant_2_id::text),
  coalesce(subject_type, ''),
  coalesce(subject_id::text, '')
);

-- 3) Ensure messages table exists
do $$
begin
  if not exists (select 1 from information_schema.tables where table_schema='public' and table_name='messages') then
    create table public.messages (
      id uuid default gen_random_uuid() primary key,
      conversation_id uuid not null references public.conversations(id) on delete cascade,
      sender_id uuid not null references auth.users(id) on delete set null,
      content text not null,
      is_read boolean default false,
      created_at timestamptz default now()
    );
  end if;
end $$;

-- 4) RLS policies
alter table public.conversations enable row level security;
alter table public.messages enable row level security;

drop policy if exists "Users can view their own conversations" on public.conversations;
drop policy if exists "Users can create conversations" on public.conversations;
drop policy if exists "Users can update their own conversations" on public.conversations;

create policy "Users can view their own conversations"
on public.conversations for select
using (auth.uid() = participant_1_id or auth.uid() = participant_2_id);

create policy "Users can create conversations"
on public.conversations for insert
with check (auth.uid() = participant_1_id or auth.uid() = participant_2_id);

create policy "Users can update their own conversations"
on public.conversations for update
using (auth.uid() = participant_1_id or auth.uid() = participant_2_id);

drop policy if exists "Users can view messages in their conversations" on public.messages;
drop policy if exists "Users can insert messages in their conversations" on public.messages;

create policy "Users can view messages in their conversations"
on public.messages for select
using (
  exists (
    select 1 from public.conversations c
    where c.id = messages.conversation_id
      and (c.participant_1_id = auth.uid() or c.participant_2_id = auth.uid())
  )
);

create policy "Users can insert messages in their conversations"
on public.messages for insert
with check (
  auth.uid() = sender_id and
  exists (
    select 1 from public.conversations c
    where c.id = conversation_id
      and (c.participant_1_id = auth.uid() or c.participant_2_id = auth.uid())
  )
);

-- 5) Triggers for timestamps
create or replace function public.update_updated_at_column()
returns trigger as $$
begin
  new.updated_at = now();
  return new;
end;
$$ language plpgsql;

drop trigger if exists update_conversations_updated_at on public.conversations;
create trigger update_conversations_updated_at
before update on public.conversations
for each row execute function public.update_updated_at_column();

create or replace function public.update_conversation_last_message()
returns trigger as $$
begin
  update public.conversations
  set last_message_at = new.created_at, updated_at = now()
  where id = new.conversation_id;
  return new;
end;
$$ language plpgsql;

drop trigger if exists update_conversation_last_message_trigger on public.messages;
create trigger update_conversation_last_message_trigger
after insert on public.messages
for each row execute function public.update_conversation_last_message();
