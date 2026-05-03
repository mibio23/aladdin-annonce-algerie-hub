
import { Routes, Route } from "react-router-dom";
import { lazy, Suspense } from "react";
import AdminSidebar from "@/components/admin/AdminSidebar";
import AdminHeader from "@/components/admin/AdminHeader";
import { AdminProtectedRoute } from "@/components/admin/AdminProtectedRoute";
import { Loader2 } from "lucide-react";

// Lazy-load all admin sub-routes to reduce initial bundle size
const DashboardHome = lazy(() => import("@/components/admin/dashboard/DashboardHome"));
const EnhancedBannerManagement = lazy(() => import("@/components/admin/banners/EnhancedBannerManagement"));
const CategoryManagement = lazy(() => import("@/components/admin/categories/CategoryManagement"));
const AnnouncementManagement = lazy(() => import("@/components/admin/announcements/AnnouncementManagement"));
const UserManagement = lazy(() => import("@/components/admin/users/UserManagement"));
const AdminUserDetails = lazy(() => import("@/components/admin/users/AdminUserDetails"));
const AnalyticsPanel = lazy(() => import("@/components/admin/analytics/AnalyticsPanel"));
const SettingsPanel = lazy(() => import("@/components/admin/settings/SettingsPanel"));
const ContentManagement = lazy(() => import("@/components/admin/content/ContentManagement"));
const FeatureManagement = lazy(() => import("@/components/admin/features/FeatureManagement"));
const SearchManagement = lazy(() => import("@/components/admin/SearchManagement"));
const NotificationSystemPanel = lazy(() => import("@/components/admin/features/panels/notifications/NotificationSystemPanel"));
const HeroCarouselManagement = lazy(() => import("@/components/admin/hero-carousel/HeroCarouselManagement"));
const ModerationPanel = lazy(() => import("@/components/admin/ModerationPanel"));

const AdminLoading = () => (
  <div className="flex items-center justify-center h-64">
    <Loader2 className="h-8 w-8 animate-spin text-primary" />
  </div>
);

const AdminDashboard = () => {
  return (
    <AdminProtectedRoute>
      <div className="min-h-screen bg-gray-100 flex">
        <AdminSidebar />
        <div className="flex-1 flex flex-col">
          <AdminHeader />
          <main className="flex-1 overflow-y-auto">
            <Suspense fallback={<AdminLoading />}>
              <Routes>
                <Route path="/" element={<DashboardHome />} />
                <Route path="/banners" element={<EnhancedBannerManagement />} />
                <Route path="/categories" element={<CategoryManagement />} />
                <Route path="/announcements" element={<AnnouncementManagement />} />
                <Route path="/users" element={
                  <AdminProtectedRoute requireAdmin={true}>
                    <UserManagement />
                  </AdminProtectedRoute>
                } />
                <Route path="/users/:id" element={
                  <AdminProtectedRoute requireAdmin={true}>
                    <AdminUserDetails />
                  </AdminProtectedRoute>
                } />
                <Route path="/analytics" element={<AnalyticsPanel />} />
                <Route path="/search" element={<SearchManagement />} />
                <Route path="/moderation" element={<ModerationPanel />} />
                <Route path="/features" element={
                  <AdminProtectedRoute requireAdmin={true}>
                    <FeatureManagement />
                  </AdminProtectedRoute>
                } />
                <Route path="/notifications" element={<NotificationSystemPanel />} />
                <Route path="/hero-carousel" element={<HeroCarouselManagement />} />
                <Route path="/content" element={<ContentManagement />} />
                <Route path="/settings" element={
                  <AdminProtectedRoute requireAdmin={true}>
                    <SettingsPanel />
                  </AdminProtectedRoute>
                } />
              </Routes>
            </Suspense>
          </main>
        </div>
      </div>
    </AdminProtectedRoute>
  );
};

export default AdminDashboard;

