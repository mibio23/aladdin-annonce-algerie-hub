import { describe, it, expect } from 'vitest';
import { isSupabaseConfigured } from '../integrations/supabase/client';

describe('Configuration Supabase', () => {
  it('a les variables d\'environnement nécessaires', () => {
    expect(import.meta.env.VITE_SUPABASE_URL).toBeTruthy();
    expect(import.meta.env.VITE_SUPABASE_PUBLISHABLE_KEY).toBeTruthy();
  });

  it('détecte que Supabase est bien configuré', () => {
    expect(isSupabaseConfigured).toBe(true);
  });
});

describe('Utilitaires', () => {
  it('safeStringify fonctionne', async () => {
    const { safeStringify } = await import('../utils/safeStringify');
    expect(safeStringify({ a: 1 })).toBe('{"a":1}');
  });

  it('dateUtils exporte les fonctions attendues', async () => {
    const dateUtils = await import('../lib/utils/dateUtils');
    expect(typeof dateUtils.formatDate).toBe('function');
    expect(typeof dateUtils.formatRelativeTime).toBe('function');
    expect(typeof dateUtils.formatSafeRelativeTime).toBe('function');
  });

  it('debounce exporte la fonction attendue', async () => {
    const { debounce } = await import('../utils/debounce');
    expect(typeof debounce).toBe('function');
  });
});

describe('Données', () => {
  it('wilayaData contient les 58 wilayas', async () => {
    const { wilayas } = await import('../data/wilayaData');
    expect(wilayas.length).toBeGreaterThanOrEqual(58);
    expect(wilayas[0]).toHaveProperty('name_fr');
    expect(wilayas[0]).toHaveProperty('name_ar');
  });

  it('communeData charge correctement', async () => {
    const { communes } = await import('../data/communeData');
    expect(typeof communes).toBe('object');
    expect(Object.keys(communes).length).toBeGreaterThan(0);
  });

  it('categoryData exporte les catégories', async () => {
    const cat = await import('../data/categoryData');
    expect(cat).toBeDefined();
  });
});
