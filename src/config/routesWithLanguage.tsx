import React, { Suspense } from "react";
import { Route } from "react-router-dom";
import { Language } from "@/lib/i18n/translations";
import { languageConfig } from "@/lib/i18n/config";
import AppLayout from "@/components/layout/AppLayout";
import LoadingSpinner from "@/components/common/LoadingSpinner";
import { Navigate } from "react-router-dom";

// Import des composants existants
import Index from "@/pages/Index";
import NotFound from "@/pages/NotFound";
import Connexion from "@/pages/Connexion";
import Inscription from "@/pages/Inscription";
import CategoryPage from "@/pages/CategoryPage";

// Lazy load components
const NotreHistoire = React.lazy(() => import("@/pages/NotreHistoire"));
const Carrieres = React.lazy(() => import("@/pages/Carrieres"));
const CommentCaMarche = React.lazy(() => import("@/pages/CommentCaMarche"));
const Contact = React.lazy(() => import("@/pages/Contact"));
const ConditionsGenerales = React.lazy(() => import("@/pages/ConditionsGenerales"));
const PolitiqueConfidentialite = React.lazy(() => import("@/pages/PolitiqueConfidentialite"));
const MentionsLegales = React.lazy(() => import("@/pages/MentionsLegales"));
const GestionCookies = React.lazy(() => import("@/pages/GestionCookies"));
const SubcategoryPage = React.lazy(() => import("@/pages/SubcategoryPage"));
const Authentification = React.lazy(() => import("@/pages/Authentification"));
const Parametres = React.lazy(() => import("@/pages/Parametres"));
const MotDePasseOublie = React.lazy(() => import("@/pages/MotDePasseOublie"));
const Actualites = React.lazy(() => import("@/pages/Actualites"));
const SignalerContenu = React.lazy(() => import("@/pages/SignalerContenu"));
const ConseilsSecurite = React.lazy(() => import("@/pages/ConseilsSecurite"));
const EspacePro = React.lazy(() => import("@/pages/EspacePro"));
const CentreAide = React.lazy(() => import("@/pages/CentreAide"));
const PlanDuSite = React.lazy(() => import("@/pages/PlanDuSite"));
const FAQ = React.lazy(() => import("@/pages/FAQ"));
const AdminDashboard = React.lazy(() => import("@/pages/admin/AdminDashboard"));
const AnnouncementDetailsPage = React.lazy(() => import("@/pages/AnnouncementDetailsPage"));
const ShopDetails = React.lazy(() => import("@/pages/ShopDetails"));
const TelechargerApp = React.lazy(() => import("@/pages/TelechargerApp"));
const PublicProfile = React.lazy(() => import("@/pages/PublicProfile"));
const PaymentSuccess = React.lazy(() => import("@/pages/PaymentSuccess"));
const PaymentCancel = React.lazy(() => import("@/pages/PaymentCancel"));
const FavoritesList = React.lazy(() => import("@/components/favorites/FavoritesList"));
const SearchResultsPage = React.lazy(() => import("@/pages/SearchResultsPage"));
const VehicleSearchResultsPage = React.lazy(() => import("@/pages/VehicleSearchResultsPage"));
const Messages = React.lazy(() => import("@/pages/Messages"));
const MyAnnouncements = React.lazy(() => import("@/pages/MyAnnouncements"));
const BookingCalendar = React.lazy(() => import("@/pages/BookingCalendar"));
const CreateAnnouncementComplete = React.lazy(() => import("@/pages/CreateAnnouncementComplete"));
const UserDashboard = React.lazy(() => import("@/components/dashboard/UserDashboard"));
const MesBoutiques = React.lazy(() => import("@/pages/MesBoutiques"));
const CreateShopPage = React.lazy(() => import("@/pages/CreateShopPage"));
const Boutiques = React.lazy(() => import("@/pages/Boutiques"));
const RechercheProduit = React.lazy(() => import("@/pages/RechercheProduit"));
const DeposerOffreMetier = React.lazy(() => import("@/pages/DeposerOffreMetier"));
const JobOfferDetailsPage = React.lazy(() => import("@/pages/JobOfferDetailsPage"));
const MyJobOffers = React.lazy(() => import("@/pages/MyJobOffers"));
const Parrainage = React.lazy(() => import("@/pages/Parrainage"));
const MetiersReparateurs = React.lazy(() => import("@/pages/MetiersReparateurs"));

// Suspense wrapper optimisé
const SuspenseWrapper: React.FC<{ children: React.ReactNode; fallback?: React.ReactNode }> = ({ 
  children, 
  fallback = (
    <div className="flex items-center justify-center min-h-[40vh]">
      <LoadingSpinner size="md" />
    </div>
  )
}) => (
  <Suspense fallback={fallback}>
    {children}
  </Suspense>
);

// Helper pour créer une route avec layout
const withLayout = (Component: React.ComponentType, showHeader: boolean = true, priority: 'high' | 'normal' | 'low' = 'normal') => {
  const fastFallback = priority === 'high' ? (
    <div className="flex items-center justify-center min-h-[20vh]">
      <div className="animate-pulse bg-muted rounded h-4 w-32"></div>
    </div>
  ) : undefined;
  
  return (
    <AppLayout showHeader={showHeader}>
      <SuspenseWrapper fallback={fastFallback}>
        <Component />
      </SuspenseWrapper>
    </AppLayout>
  );
};

// Helper pour les composants eager-loaded
const withLayoutEager = (Component: React.ComponentType, showHeader: boolean = true) => (
  <AppLayout showHeader={showHeader}>
    <Component />
  </AppLayout>
);

/**
 * Crée les routes pour une langue spécifique
 */
export const createLanguageRoutes = (language: Language) => {
  const prefix = `/${language}`;
  
  return [
    // Routes critiques - eager loaded
    <Route key={`home-${language}`} path={`${prefix}/`} element={withLayoutEager(Index)} />,
    <Route key={`category-${language}`} path={`${prefix}/category/:slug`} element={withLayoutEager(CategoryPage)} />,
    <Route key={`connexion-${language}`} path={`${prefix}/connexion`} element={withLayoutEager(Connexion)} />,
    <Route key={`inscription-${language}`} path={`${prefix}/inscription`} element={withLayoutEager(Inscription)} />,
    
    // Routes haute priorité
    <Route key={`subcategory-${language}`} path={`${prefix}/category/:slug/:subslug`} element={withLayout(SubcategoryPage, true, 'high')} />,
    <Route key={`annonce-${language}`} path={`${prefix}/annonce/:id`} element={withLayout(AnnouncementDetailsPage, true, 'high')} />,
    <Route key={`offre-metier-${language}`} path={`${prefix}/offre-metier/:id`} element={withLayout(JobOfferDetailsPage, true, 'high')} />,
    <Route key={`search-${language}`} path={`${prefix}/search`} element={withLayout(SearchResultsPage, true, 'high')} />,
    <Route key={`search-vehicles-${language}`} path={`${prefix}/search/vehicles`} element={withLayout(VehicleSearchResultsPage, true, 'high')} />,
    <Route key={`authentification-${language}`} path={`${prefix}/authentification`} element={withLayout(Authentification, true, 'high')} />,
    <Route key={`metiers-reparateurs-${language}`} path={`${prefix}/metiers-reparateurs`} element={withLayout(MetiersReparateurs, true, 'high')} />,
    <Route key={`reparation-${language}`} path={`${prefix}/reparation/:profession`} element={withLayout(MetiersReparateurs, true, 'high')} />,
    <Route key={`shop-${language}`} path={`${prefix}/shop/:id`} element={withLayout(ShopDetails, true, 'high')} />,
    <Route key={`boutique-${language}`} path={`${prefix}/boutique/:id`} element={withLayout(ShopDetails, true, 'high')} />,
    <Route key={`boutiques-${language}`} path={`${prefix}/boutiques`} element={withLayout(Boutiques, true, 'high')} />,
    <Route key={`boutiques-rubrique-${language}`} path={`${prefix}/boutiques/:rubrique`} element={withLayout(Boutiques, true, 'high')} />,
    <Route key={`public-profile-${language}`} path={`${prefix}/user/:userId`} element={withLayout(PublicProfile, true, 'high')} />,
    
    // Pages normales
    <Route key={`notre-histoire-${language}`} path={`${prefix}/notre-histoire`} element={withLayout(NotreHistoire)} />,
    <Route key={`comment-ca-marche-${language}`} path={`${prefix}/comment-ca-marche`} element={withLayout(CommentCaMarche)} />,
    <Route key={`contact-${language}`} path={`${prefix}/contact`} element={withLayout(Contact)} />,
    <Route key={`actualites-${language}`} path={`${prefix}/actualites`} element={withLayout(Actualites)} />,
    <Route key={`faq-${language}`} path={`${prefix}/faq`} element={withLayout(FAQ)} />,
    <Route key={`parrainage-${language}`} path={`${prefix}/parrainage`} element={withLayout(Parrainage)} />,
    <Route key={`aide-${language}`} path={`${prefix}/aide`} element={withLayout(CentreAide)} />,
    
    // Routes utilisateur
    <Route key={`dashboard-${language}`} path={`${prefix}/dashboard`} element={withLayout(UserDashboard, true, 'high')} />,
    <Route key={`mes-annonces-${language}`} path={`${prefix}/mes-annonces`} element={withLayout(MyAnnouncements, true, 'high')} />,
    <Route key={`mes-favoris-${language}`} path={`${prefix}/mes-favoris`} element={withLayout(FavoritesList, true, 'high')} />,
    <Route key={`deposer-annonce-${language}`} path={`${prefix}/deposer-annonce`} element={withLayout(CreateAnnouncementComplete, true, 'high')} />,
    <Route key={`edit-announcement-${language}`} path={`${prefix}/edit-announcement/:id`} element={withLayout(CreateAnnouncementComplete, true, 'high')} />,
    <Route key={`messages-${language}`} path={`${prefix}/messages`} element={withLayout(Messages, true, 'high')} />,
    <Route key={`reservations-${language}`} path={`${prefix}/reservations`} element={withLayout(BookingCalendar)} />,
    <Route key={`mes-boutiques-${language}`} path={`${prefix}/mes-boutiques`} element={withLayout(MesBoutiques)} />,
    <Route key={`creer-boutique-${language}`} path={`${prefix}/creer-boutique`} element={withLayout(CreateShopPage, true, 'high')} />,
    <Route key={`je-recherche-${language}`} path={`${prefix}/je-recherche`} element={withLayout(RechercheProduit)} />,
    <Route key={`deposer-offre-metier-${language}`} path={`${prefix}/deposer-offre-metier`} element={withLayout(DeposerOffreMetier, true, 'high')} />,
    <Route key={`mes-offres-metiers-${language}`} path={`${prefix}/mes-offres-metiers`} element={withLayout(MyJobOffers, true, 'high')} />,
    <Route key={`parametres-${language}`} path={`${prefix}/parametres`} element={withLayout(Parametres, true, 'high')} />,
    <Route key={`mot-de-passe-oublie-${language}`} path={`${prefix}/mot-de-passe-oublie`} element={withLayout(MotDePasseOublie)} />,
    
    // Pages basse priorité
    <Route key={`carrieres-${language}`} path={`${prefix}/carrieres`} element={withLayout(Carrieres, true, 'low')} />,
    <Route key={`conditions-generales-${language}`} path={`${prefix}/conditions-generales`} element={withLayout(ConditionsGenerales, true, 'low')} />,
    <Route key={`politique-confidentialite-${language}`} path={`${prefix}/politique-confidentialite`} element={withLayout(PolitiqueConfidentialite, true, 'low')} />,
    <Route key={`mentions-legales-${language}`} path={`${prefix}/mentions-legales`} element={withLayout(MentionsLegales, true, 'low')} />,
    <Route key={`gestion-cookies-${language}`} path={`${prefix}/gestion-cookies`} element={withLayout(GestionCookies, true, 'low')} />,
    <Route key={`signaler-${language}`} path={`${prefix}/signaler`} element={withLayout(SignalerContenu, true, 'low')} />,
    <Route key={`plan-du-site-${language}`} path={`${prefix}/plan-du-site`} element={withLayout(PlanDuSite, true, 'low')} />,
    <Route key={`conseils-securite-${language}`} path={`${prefix}/conseils-securite`} element={withLayout(ConseilsSecurite, true, 'low')} />,
    <Route key={`pro-${language}`} path={`${prefix}/pro`} element={withLayout(EspacePro, true, 'low')} />,
    <Route key={`telecharger-app-${language}`} path={`${prefix}/telecharger-app`} element={withLayout(TelechargerApp, true, 'low')} />,
    <Route key={`payment-success-${language}`} path={`${prefix}/payment-success`} element={withLayout(PaymentSuccess, true, 'low')} />,
    <Route key={`payment-cancel-${language}`} path={`${prefix}/payment-cancel`} element={withLayout(PaymentCancel, true, 'low')} />,
    
    // Routes admin
    <Route key={`admin-${language}`} path={`${prefix}/admin/*`} element={
      <SuspenseWrapper>
        <AdminDashboard />
      </SuspenseWrapper>
    } />,
  ];
};

/**
 * Génère toutes les routes pour toutes les langues supportées
 */
export const generateAllLanguageRoutes = () => {
  const allRoutes: React.ReactElement[] = [];
  
  // Générer les routes pour chaque langue
  languageConfig.supportedLanguages.forEach(language => {
    allRoutes.push(...createLanguageRoutes(language));
  });
  
  return allRoutes;
};

/**
 * Routes de redirection pour les anciennes URLs (compatibilité)
 */
export const legacyRedirectRoutes = [
  // Redirection depuis la racine
  <Route key="root-redirect" path="/" element={<Navigate to={`/${languageConfig.defaultLanguage}/`} replace />} />,
  
  // Redirections pour les anciennes routes sans préfixe
  <Route key="legacy-category" path="/category/:slug" element={<Navigate to={`/${languageConfig.defaultLanguage}/category/:slug`} replace />} />,
  <Route key="legacy-subcategory" path="/category/:slug/:subslug" element={<Navigate to={`/${languageConfig.defaultLanguage}/category/:slug/:subslug`} replace />} />,
  <Route key="legacy-annonce" path="/annonce/:id" element={<Navigate to={`/${languageConfig.defaultLanguage}/annonce/:id`} replace />} />,
  <Route key="legacy-search" path="/search" element={<Navigate to={`/${languageConfig.defaultLanguage}/search`} replace />} />,
  <Route key="legacy-search-vehicles" path="/search/vehicles" element={<Navigate to={`/${languageConfig.defaultLanguage}/search/vehicles`} replace />} />,
  <Route key="legacy-connexion" path="/connexion" element={<Navigate to={`/${languageConfig.defaultLanguage}/connexion`} replace />} />,
  <Route key="legacy-inscription" path="/inscription" element={<Navigate to={`/${languageConfig.defaultLanguage}/inscription`} replace />} />,
  <Route key="legacy-metiers-reparateurs" path="/metiers-reparateurs" element={<Navigate to={`/${languageConfig.defaultLanguage}/metiers-reparateurs`} replace />} />,
  <Route key="legacy-reparation" path="/reparation/:profession" element={<Navigate to={`/${languageConfig.defaultLanguage}/reparation/:profession`} replace />} />,
  <Route key="legacy-creer-boutique" path="/creer-boutique" element={<Navigate to={`/${languageConfig.defaultLanguage}/creer-boutique`} replace />} />,
  <Route key="legacy-deposer-offre-metier" path="/deposer-offre-metier" element={<Navigate to={`/${languageConfig.defaultLanguage}/deposer-offre-metier`} replace />} />,
  <Route key="legacy-rechercher-reparateur" path="/rechercher-reparateur" element={<Navigate to={`/${languageConfig.defaultLanguage}/deposer-offre-metier`} replace />} />,
  <Route key="legacy-boutique" path="/boutique/:id" element={<Navigate to={`/${languageConfig.defaultLanguage}/boutique/:id`} replace />} />,
  <Route key="legacy-shop" path="/shop/:id" element={<Navigate to={`/${languageConfig.defaultLanguage}/shop/:id`} replace />} />,
  <Route key="legacy-boutiques" path="/boutiques" element={<Navigate to={`/${languageConfig.defaultLanguage}/boutiques`} replace />} />,
  <Route key="legacy-boutiques-rubrique" path="/boutiques/:rubrique" element={<Navigate to={`/${languageConfig.defaultLanguage}/boutiques/:rubrique`} replace />} />,
  <Route key="legacy-offre-metier" path="/offre-metier/:id" element={<Navigate to={`/${languageConfig.defaultLanguage}/offre-metier/:id`} replace />} />,
  <Route key="legacy-mes-offres-metiers" path="/mes-offres-metiers" element={<Navigate to={`/${languageConfig.defaultLanguage}/mes-offres-metiers`} replace />} />,
];

// Route 404
export const notFoundRoute = <Route key="not-found" path="*" element={<NotFound />} />;
