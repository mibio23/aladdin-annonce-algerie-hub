
import { useEffect, useMemo, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Users, FileText, Eye, TrendingUp } from "lucide-react";
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer, BarChart, Bar } from "recharts";
import { OfflineMode } from "@/components/offline/OfflineMode";
import { supabase } from "@/integrations/supabase/client";
import { logger } from "@/utils/silentLogger";

type DashboardStat = {
  title: string;
  value: string;
  change: string;
  changeClassName: string;
  icon: typeof Users;
  color: string;
};

const DashboardHome = () => {
  const [loading, setLoading] = useState(true);
  const [stats, setStats] = useState<DashboardStat[]>([]);
  const [chartData, setChartData] = useState<Array<{ name: string; annonces: number; utilisateurs: number }>>([]);
  const [recentActivities, setRecentActivities] = useState<Array<{ id: string; type: "success" | "warning" | "info"; message: string; time: string }>>([]);

  const formatPercent = (current: number, previous: number) => {
    if (previous <= 0 && current <= 0) return { text: "0%", className: "text-muted-foreground" };
    if (previous <= 0 && current > 0) return { text: "+100%", className: "text-green-600" };
    const delta = ((current - previous) / previous) * 100;
    const rounded = Math.round(delta);
    return {
      text: `${rounded >= 0 ? "+" : ""}${rounded}%`,
      className: rounded >= 0 ? "text-green-600" : "text-red-600",
    };
  };

  const monthLabel = (date: Date) =>
    date
      .toLocaleDateString("fr-FR", { month: "short" })
      .replace(".", "")
      .replace(/^./, (c) => c.toUpperCase());

  const relativeTime = (iso: string) => {
    const then = new Date(iso).getTime();
    const now = Date.now();
    const diffMinutes = Math.max(0, Math.floor((now - then) / 60000));
    if (diffMinutes < 1) return "À l'instant";
    if (diffMinutes < 60) return `Il y a ${diffMinutes} min`;
    const diffHours = Math.floor(diffMinutes / 60);
    if (diffHours < 24) return `Il y a ${diffHours} h`;
    const diffDays = Math.floor(diffHours / 24);
    return `Il y a ${diffDays} j`;
  };

  useEffect(() => {
    const loadDashboard = async () => {
      setLoading(true);
      try {
        const now = new Date();
        const startCurrentMonth = new Date(now.getFullYear(), now.getMonth(), 1);
        const startNextMonth = new Date(now.getFullYear(), now.getMonth() + 1, 1);
        const startPreviousMonth = new Date(now.getFullYear(), now.getMonth() - 1, 1);
        const startThirtyDaysAgo = new Date(now.getTime() - 30 * 24 * 60 * 60 * 1000);
        const startSixMonthsAgo = new Date(now.getFullYear(), now.getMonth() - 5, 1);

        const [
          profilesTotalRes,
          profilesActiveRes,
          profilesCurrentMonthRes,
          profilesPreviousMonthRes,
          profilesSixMonthsRes,
          announcementsTotalRes,
          announcementsCurrentMonthRes,
          announcementsPreviousMonthRes,
          announcementsSixMonthsRes,
          announcementsViewsRes,
          bannersActiveRes,
          bannersTotalRes,
          latestAnnouncementsRes,
          latestReportsRes,
          latestProfilesRes,
          latestBannersRes,
        ] = await Promise.all([
          supabase.from("profiles").select("id", { count: "exact", head: true }),
          supabase.from("profiles").select("id", { count: "exact", head: true }).gte("updated_at", startThirtyDaysAgo.toISOString()),
          supabase.from("profiles").select("id", { count: "exact", head: true }).gte("created_at", startCurrentMonth.toISOString()).lt("created_at", startNextMonth.toISOString()),
          supabase.from("profiles").select("id", { count: "exact", head: true }).gte("created_at", startPreviousMonth.toISOString()).lt("created_at", startCurrentMonth.toISOString()),
          supabase.from("profiles").select("created_at").gte("created_at", startSixMonthsAgo.toISOString()),
          supabase.from("announcements_public").select("id", { count: "exact", head: true }).eq("status", "active"),
          supabase.from("announcements_public").select("id", { count: "exact", head: true }).eq("status", "active").gte("created_at", startCurrentMonth.toISOString()).lt("created_at", startNextMonth.toISOString()),
          supabase.from("announcements_public").select("id", { count: "exact", head: true }).eq("status", "active").gte("created_at", startPreviousMonth.toISOString()).lt("created_at", startCurrentMonth.toISOString()),
          supabase.from("announcements_public").select("created_at").eq("status", "active").gte("created_at", startSixMonthsAgo.toISOString()),
          supabase.from("announcements").select("view_count, created_at").eq("status", "active"),
          supabase.from("advertising_banners").select("id", { count: "exact", head: true }).eq("is_active", true),
          supabase.from("advertising_banners").select("id", { count: "exact", head: true }),
          supabase.from("announcements_public").select("id, title, created_at").eq("status", "active").order("created_at", { ascending: false }).limit(3),
          supabase.from("reports").select("id, target_title, created_at").order("created_at", { ascending: false }).limit(2),
          supabase.from("profiles").select("id, first_name, last_name, created_at").order("created_at", { ascending: false }).limit(2),
          supabase.from("advertising_banners").select("id, title, created_at").eq("is_active", true).order("created_at", { ascending: false }).limit(1),
        ]);

        const activeUsers = profilesActiveRes.count || 0;
        const totalAnnouncements = announcementsTotalRes.count || 0;
        const activeBanners = bannersActiveRes.count || 0;
        const totalBanners = bannersTotalRes.count || 0;

        const viewsRows = (announcementsViewsRes.data || []) as Array<{ view_count: number | null; created_at: string | null }>;
        const totalViews = viewsRows.reduce((sum, row) => sum + (row.view_count || 0), 0);

        const currentMonthViews = viewsRows
          .filter((row) => row.created_at && new Date(row.created_at) >= startCurrentMonth && new Date(row.created_at) < startNextMonth)
          .reduce((sum, row) => sum + (row.view_count || 0), 0);
        const previousMonthViews = viewsRows
          .filter((row) => row.created_at && new Date(row.created_at) >= startPreviousMonth && new Date(row.created_at) < startCurrentMonth)
          .reduce((sum, row) => sum + (row.view_count || 0), 0);

        const usersTrend = formatPercent(profilesCurrentMonthRes.count || 0, profilesPreviousMonthRes.count || 0);
        const announcementsTrend = formatPercent(announcementsCurrentMonthRes.count || 0, announcementsPreviousMonthRes.count || 0);
        const viewsTrend = formatPercent(currentMonthViews, previousMonthViews);

        setStats([
          {
            title: "Utilisateurs Actifs",
            value: activeUsers.toLocaleString("fr-FR"),
            change: usersTrend.text,
            changeClassName: usersTrend.className,
            icon: Users,
            color: "text-blue-600",
          },
          {
            title: "Annonces Publiées",
            value: totalAnnouncements.toLocaleString("fr-FR"),
            change: announcementsTrend.text,
            changeClassName: announcementsTrend.className,
            icon: FileText,
            color: "text-green-600",
          },
          {
            title: "Vues Totales",
            value: totalViews.toLocaleString("fr-FR"),
            change: viewsTrend.text,
            changeClassName: viewsTrend.className,
            icon: Eye,
            color: "text-purple-600",
          },
          {
            title: "Bannières Actives",
            value: activeBanners.toLocaleString("fr-FR"),
            change: `${totalBanners.toLocaleString("fr-FR")} total`,
            changeClassName: "text-orange-600",
            icon: TrendingUp,
            color: "text-orange-600",
          },
        ]);

        const monthBuckets: Array<{ monthDate: Date; name: string; annonces: number; utilisateurs: number }> = Array.from({ length: 6 }).map((_, idx) => {
          const d = new Date(now.getFullYear(), now.getMonth() - (5 - idx), 1);
          return { monthDate: d, name: monthLabel(d), annonces: 0, utilisateurs: 0 };
        });

        const byKey = new Map(monthBuckets.map((m) => [`${m.monthDate.getFullYear()}-${m.monthDate.getMonth()}`, m]));

        ((announcementsSixMonthsRes.data || []) as Array<{ created_at: string | null }>).forEach((row) => {
          if (!row.created_at) return;
          const d = new Date(row.created_at);
          const key = `${d.getFullYear()}-${d.getMonth()}`;
          const target = byKey.get(key);
          if (target) target.annonces += 1;
        });

        ((profilesSixMonthsRes.data || []) as Array<{ created_at: string | null }>).forEach((row) => {
          if (!row.created_at) return;
          const d = new Date(row.created_at);
          const key = `${d.getFullYear()}-${d.getMonth()}`;
          const target = byKey.get(key);
          if (target) target.utilisateurs += 1;
        });

        setChartData(monthBuckets.map(({ name, annonces, utilisateurs }) => ({ name, annonces, utilisateurs })));

        const activitiesRaw: Array<{ id: string; created_at: string; type: "success" | "warning" | "info"; message: string }> = [];

        ((latestAnnouncementsRes.data || []) as Array<{ id: string; title: string | null; created_at: string | null }>).forEach((item) => {
          if (!item.created_at) return;
          activitiesRaw.push({
            id: `a-${item.id}`,
            created_at: item.created_at,
            type: "success",
            message: `Nouvelle annonce publiée: ${item.title || "Sans titre"}`,
          });
        });

        ((latestReportsRes.data || []) as Array<{ id: string; target_title: string | null; created_at: string | null }>).forEach((item) => {
          if (!item.created_at) return;
          activitiesRaw.push({
            id: `r-${item.id}`,
            created_at: item.created_at,
            type: "warning",
            message: `Annonce signalée: ${item.target_title || "Cible non renseignée"}`,
          });
        });

        ((latestProfilesRes.data || []) as Array<{ id: string; first_name: string | null; last_name: string | null; created_at: string | null }>).forEach((item) => {
          if (!item.created_at) return;
          const fullName = `${item.first_name || ""} ${item.last_name || ""}`.trim() || "Utilisateur";
          activitiesRaw.push({
            id: `u-${item.id}`,
            created_at: item.created_at,
            type: "info",
            message: `Nouvel utilisateur inscrit: ${fullName}`,
          });
        });

        ((latestBannersRes.data || []) as Array<{ id: string; title: string | null; created_at: string | null }>).forEach((item) => {
          if (!item.created_at) return;
          activitiesRaw.push({
            id: `b-${item.id}`,
            created_at: item.created_at,
            type: "success",
            message: `Bannière publicitaire active: ${item.title || "Sans titre"}`,
          });
        });

        activitiesRaw.sort((a, b) => new Date(b.created_at).getTime() - new Date(a.created_at).getTime());
        setRecentActivities(
          activitiesRaw.slice(0, 8).map((item) => ({
            id: item.id,
            type: item.type,
            message: item.message,
            time: relativeTime(item.created_at),
          }))
        );
      } catch (error) {
        logger.error("Erreur chargement dashboard admin:", error);
        setStats([
          { title: "Utilisateurs Actifs", value: "0", change: "0%", changeClassName: "text-muted-foreground", icon: Users, color: "text-blue-600" },
          { title: "Annonces Publiées", value: "0", change: "0%", changeClassName: "text-muted-foreground", icon: FileText, color: "text-green-600" },
          { title: "Vues Totales", value: "0", change: "0%", changeClassName: "text-muted-foreground", icon: Eye, color: "text-purple-600" },
          { title: "Bannières Actives", value: "0", change: "0 total", changeClassName: "text-muted-foreground", icon: TrendingUp, color: "text-orange-600" },
        ]);
        setChartData([]);
        setRecentActivities([]);
      } finally {
        setLoading(false);
      }
    };

    void loadDashboard();
  }, []);

  const chartDataSafe = useMemo(
    () => (chartData.length > 0 ? chartData : [{ name: "—", annonces: 0, utilisateurs: 0 }]),
    [chartData]
  );

  return (
    <div className="p-6 space-y-6">
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-6">
        {stats.map((stat, index) => (
          <Card key={index}>
            <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
              <CardTitle className="text-sm font-medium">{stat.title}</CardTitle>
              <stat.icon className={`h-4 w-4 ${stat.color}`} />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold">{stat.value}</div>
              <p className="text-xs text-muted-foreground">
                <span className={stat.changeClassName}>{stat.change}</span> {stat.title === "Bannières Actives" ? "" : "par rapport au mois dernier"}
              </p>
            </CardContent>
          </Card>
        ))}
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        <Card>
          <CardHeader>
            <CardTitle>Évolution des Annonces</CardTitle>
          </CardHeader>
          <CardContent>
            <ResponsiveContainer width="100%" height={300}>
              <LineChart data={chartDataSafe}>
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="name" />
                <YAxis />
                <Tooltip />
                <Line type="monotone" dataKey="annonces" stroke="#8884d8" strokeWidth={2} />
              </LineChart>
            </ResponsiveContainer>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle>Utilisateurs par Mois</CardTitle>
          </CardHeader>
          <CardContent>
            <ResponsiveContainer width="100%" height={300}>
              <BarChart data={chartDataSafe}>
                <CartesianGrid strokeDasharray="3 3" />
                <XAxis dataKey="name" />
                <YAxis />
                <Tooltip />
                <Bar dataKey="utilisateurs" fill="#82ca9d" />
              </BarChart>
            </ResponsiveContainer>
          </CardContent>
        </Card>
      </div>

      <Card>
        <CardHeader>
          <CardTitle>Activités Récentes</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="space-y-4">
            {loading ? (
              <p className="text-sm text-muted-foreground">Chargement des activités...</p>
            ) : recentActivities.length === 0 ? (
              <p className="text-sm text-muted-foreground">Aucune activité récente</p>
            ) : recentActivities.map((activity) => (
              <div key={activity.id} className="flex items-center space-x-4">
                <div className={`w-2 h-2 rounded-full ${
                  activity.type === 'success' ? 'bg-green-500' :
                  activity.type === 'warning' ? 'bg-yellow-500' : 'bg-blue-500'
                }`} />
                <div className="flex-1">
                  <p className="text-sm font-medium">{activity.message}</p>
                  <p className="text-xs text-gray-500">{activity.time}</p>
                </div>
              </div>
            ))}
          </div>
        </CardContent>
      </Card>

      {/* Mode Hors-Ligne */}
      <OfflineMode />
    </div>
  );
};

export default DashboardHome;
