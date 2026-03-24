# 🚀 Guide de Migration vers Supabase - Aladdin

Ce guide vous accompagne pour migrer automatiquement les 29 fichiers SQL de catégories vers votre base Supabase.

## 📋 Prérequis

1. **Node.js** installé (version 14 ou supérieure)
2. **Accès à votre projet Supabase**
3. **Vos identifiants Supabase** (déjà configurés dans votre `.env`)

## 🔧 Installation

### 1. Installation des dépendances
```bash
npm install
```

### 2. Configuration (déjà faite)
Vos identifiants sont déjà configurés :
- URL: `https://smsvybphkdxzvgawzoru.supabase.co`
- Clé: `eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNtc3Z5YnBoa2R4enZnYXd6b3J1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDcyMTk1MDYsImV4cCI6MjA2Mjc5NTUwNn0.BnS7qmTl1a4htjiv3qN7zyjZ04DZgdV7N6Z0a0AU40g`

## 🚀 Exécution de la Migration

### Option 1: Migration complète (Recommandé)
```bash
node migrate_to_supabase.js
```

### Option 2: Migration avec vérification automatique
```bash
# Migrer puis vérifier
node migrate_to_supabase.js && node migrate_to_supabase.js verify
```

### Option 3: Vérifier sans migrer (si déjà migré)
```bash
node migrate_to_supabase.js verify
```

## 📊 Que fait la migration ?

1. **Lit les 29 fichiers SQL** dans l'ordre alphabétique
2. **Parse chaque instruction INSERT** pour extraire les données
3. **Crée les catégories par batch de 50** pour optimiser les performances
4. **Affiche la progression** en temps réel
5. **Génère un rapport complet** à la fin

## 🔍 Vérification Post-Migration

### Commandes de vérification disponibles :

```bash
# Vérification rapide (nombre de catégories par langue)
node verify_migration.js count

# Vérification complète de la hiérarchie
node verify_migration.js hierarchy

# Vérification de l'intégrité des données
node verify_migration.js integrity

# Liste des catégories par langue
node verify_migration.js list fr    # Français
node verify_migration.js list ar    # Arabe
node verify_migration.js list en    # English
node verify_migration.js list es    # Español
node verify_migration.js list de    # Deutsch
node verify_migration.js list it    # Italiano

# Rapport complet
node verify_migration.js full
```

## 📱 Visualisation dans Supabase

### 1. Accès à votre tableau de bord Supabase
1. Allez sur [https://app.supabase.com](https://app.supabase.com)
2. Connectez-vous avec vos identifiants
3. Sélectionnez votre projet : `smsvybphkdxzvgawzoru`

### 2. Navigation dans les données

#### Via l'interface Table Editor :
1. Cliquez sur **"Table Editor"** dans le menu gauche
2. Sélectionnez la table **"categories"**
3. Vous verrez toutes vos catégories avec :
   - `id` : Identifiant unique
   - `name` : Nom de la catégorie
   - `slug` : URL slug
   - `parent_id` : Catégorie parente (NULL pour les racines)
   - `level` : Niveau hiérarchique (0, 1, 2, 3)
   - `language` : Code langue (fr, ar, en, es, de, it)

#### Via SQL Editor :
1. Cliquez sur **"SQL Editor"** dans le menu gauche
2. Essayez ces requêtes de test :

```sql
-- Nombre total de catégories par langue
SELECT language, COUNT(*) as total_categories
FROM categories 
GROUP BY language 
ORDER BY language;

-- Structure hiérarchique (exemple en Français)
SELECT 
  level,
  parent_id,
  id,
  name
FROM categories 
WHERE language = 'fr'
ORDER BY level, parent_id NULLS FIRST, name;

-- Vérifier les catégories racines (Level 0)
SELECT id, name, language
FROM categories 
WHERE level = 0 AND parent_id IS NULL
ORDER BY language, name;

-- Compter les sous-catégories par catégorie principale
SELECT 
  parent_id,
  language,
  COUNT(*) as subcategories_count
FROM categories 
WHERE level = 1
GROUP BY parent_id, language
ORDER BY language, parent_id;
```

### 3. Filtres et recherche rapide :

Dans l'interface Table Editor, utilisez les filtres :
- **Par langue** : `language = 'fr'`
- **Par niveau** : `level = 0`
- **Par parent** : `parent_id = 'immobilier-maison'`
- **Par nom** : `name LIKE '%Téléphonie%'`

## 🎯 Structure attendue après migration

### Nombre de catégories par langue :
- **Français** : ~200+ catégories
- **Arabe** : ~200+ catégories  
- **English** : ~200+ catégories
- **Español** : ~200+ catégories
- **Deutsch** : ~200+ catégories
- **Italiano** : ~200+ catégories

### Hiérarchie :
- **Level 0** : 29 catégories principales (par langue)
- **Level 1** : Sous-catégories directes
- **Level 2** : Sous-sous-catégories
- **Level 3** : Sous-sous-sous-catégories (certains fichiers)

## 🚨 Résolution des problèmes courants

### Erreur: "Permission denied"
- Vérifiez que votre clé API a les permissions nécessaires
- Utilisez la **service key** au lieu de l'**anon key** si nécessaire

### Erreur: "Duplicate key value"
- Les catégories existent déjà
- Utilisez la commande de vérification pour confirmer

### Erreur: "Connection timeout"
- Réduisez la taille des batchs (modifiez `batchSize` dans le script)
- Vérifiez votre connexion internet

### Migration incomplète
- Relancez la migration - elle reprendra où elle s'est arrêtée
- Utilisez `node migrate_to_supabase.js verify` pour voir ce qui manque

## 📞 Support

Si vous rencontrez des problèmes :
1. **Vérifiez d'abord** avec `node migrate_to_supabase.js verify`
2. **Consultez les logs** dans le terminal
3. **Vérifiez dans Supabase** via SQL Editor
4. **Contactez-moi** avec le rapport d'erreur complet

---

**✅ Vous êtes prêt ! Lancez la migration avec :**
```bash
node migrate_to_supabase.js
```