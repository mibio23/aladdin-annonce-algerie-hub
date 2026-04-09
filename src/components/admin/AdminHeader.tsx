import { useEffect, useMemo, useRef, useState } from "react";
import { Bell, Search, LogOut, User, FileText, Users, Store, Briefcase, Flag } from "lucide-react";
import { useNavigate } from "react-router-dom";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { useAuth } from "@/contexts/useAuth";
import { useLanguageNavigation } from "@/hooks/useLanguageNavigation";
import { supabase } from "@/integrations/supabase/client";
import { logger } from '@/utils/silentLogger';

type SearchAnnouncement = {
  id: string;
  title: string | null;
  global_listing_number: number | null;
};

type SearchUser = {
  id: string;
  user_id: string | null;
  public_user_id: number | null;
  first_name: string | null;
  last_name: string | null;
};

type SearchShop = {
  id: string;
  name: string | null;
  global_listing_number: number | null;
};

type SearchJob = {
  id: string;
  title: string | null;
  global_listing_number: number | null;
};

type SearchReport = {
  id: string;
  target_type: "announcement" | "shop" | "job_offer";
  target_id: string;
  target_title: string | null;
  target_global_number: number | null;
  status: string;
};

const AdminHeader = () => {
  const { signOut } = useAuth();
  const { getLocalizedPath } = useLanguageNavigation();
  const navigate = useNavigate();
  const [query, setQuery] = useState("");
  const [loading, setLoading] = useState(false);
  const [isOpen, setIsOpen] = useState(false);
  const [announcements, setAnnouncements] = useState<SearchAnnouncement[]>([]);
  const [users, setUsers] = useState<SearchUser[]>([]);
  const [shops, setShops] = useState<SearchShop[]>([]);
  const [jobs, setJobs] = useState<SearchJob[]>([]);
  const [reports, setReports] = useState<SearchReport[]>([]);
  const containerRef = useRef<HTMLDivElement | null>(null);

  const handleSignOut = async () => {
    try {
      await signOut();
      window.location.href = getLocalizedPath('/');
    } catch (error) {
      logger.error('Erreur lors de la déconnexion:', error);
      window.location.href = getLocalizedPath('/');
    }
  };

  useEffect(() => {
    const handleOutside = (event: MouseEvent) => {
      if (!containerRef.current) return;
      if (!containerRef.current.contains(event.target as Node)) {
        setIsOpen(false);
      }
    };
    document.addEventListener("mousedown", handleOutside);
    return () => document.removeEventListener("mousedown", handleOutside);
  }, []);

  useEffect(() => {
    const handleEsc = (event: KeyboardEvent) => {
      if (event.key === "Escape") setIsOpen(false);
    };
    document.addEventListener("keydown", handleEsc);
    return () => document.removeEventListener("keydown", handleEsc);
  }, []);

  useEffect(() => {
    const term = query.trim();
    if (term.length < 2) {
      setAnnouncements([]);
      setUsers([]);
      setShops([]);
      setJobs([]);
      setReports([]);
      setLoading(false);
      return;
    }

    const timer = setTimeout(async () => {
      setLoading(true);
      try {
        const sanitized = term.replace(/[%_]/g, "");
        const numericTerm = sanitized.replace(/\D+/g, "");
        const numericValue = Number.parseInt(numericTerm, 10);
        const hasNumeric = Number.isFinite(numericValue) && numericTerm.length > 0;

        const announcementByTitle = supabase
          .from("announcements")
          .select("id, title, global_listing_number")
          .ilike("title", `%${sanitized}%`)
          .order("created_at", { ascending: false })
          .limit(5);
        const announcementByNumber = hasNumeric
          ? supabase
              .from("announcements")
              .select("id, title, global_listing_number")
              .eq("global_listing_number", numericValue)
              .limit(5)
          : Promise.resolve({ data: [] as SearchAnnouncement[], error: null });

        const usersByName = supabase
          .from("profiles")
          .select("id, user_id, public_user_id, first_name, last_name")
          .or(`first_name.ilike.%${sanitized}%,last_name.ilike.%${sanitized}%`)
          .order("created_at", { ascending: false })
          .limit(5);
        const usersByPublicId = hasNumeric
          ? supabase
              .from("profiles")
              .select("id, user_id, public_user_id, first_name, last_name")
              .eq("public_user_id", numericValue)
              .limit(5)
          : Promise.resolve({ data: [] as SearchUser[], error: null });

        const shopsByName = supabase
          .from("shops")
          .select("id, name, global_listing_number")
          .ilike("name", `%${sanitized}%`)
          .order("created_at", { ascending: false })
          .limit(5);
        const shopsByNumber = hasNumeric
          ? supabase
              .from("shops")
              .select("id, name, global_listing_number")
              .eq("global_listing_number", numericValue)
              .limit(5)
          : Promise.resolve({ data: [] as SearchShop[], error: null });

        const jobsByTitle = supabase
          .from("professional_job_offers")
          .select("id, title, global_listing_number")
          .ilike("title", `%${sanitized}%`)
          .order("created_at", { ascending: false })
          .limit(5);
        const jobsByNumber = hasNumeric
          ? supabase
              .from("professional_job_offers")
              .select("id, title, global_listing_number")
              .eq("global_listing_number", numericValue)
              .limit(5)
          : Promise.resolve({ data: [] as SearchJob[], error: null });

        const reportsByText = supabase
          .from("reports")
          .select("id, target_type, target_id, target_title, target_global_number, status")
          .or(`target_title.ilike.%${sanitized}%,reason.ilike.%${sanitized}%,details.ilike.%${sanitized}%`)
          .order("created_at", { ascending: false })
          .limit(5);
        const reportsByNumber = hasNumeric
          ? supabase
              .from("reports")
              .select("id, target_type, target_id, target_title, target_global_number, status")
              .eq("target_global_number", numericValue)
              .limit(5)
          : Promise.resolve({ data: [] as SearchReport[], error: null });

        const [
          announcementsTextRes,
          announcementsNumRes,
          usersTextRes,
          usersNumRes,
          shopsTextRes,
          shopsNumRes,
          jobsTextRes,
          jobsNumRes,
          reportsTextRes,
          reportsNumRes,
        ] = await Promise.all([
          announcementByTitle,
          announcementByNumber,
          usersByName,
          usersByPublicId,
          shopsByName,
          shopsByNumber,
          jobsByTitle,
          jobsByNumber,
          reportsByText,
          reportsByNumber,
        ]);

        const mergeUnique = <T extends { id: string }>(first: T[] = [], second: T[] = []) => {
          const map = new Map<string, T>();
          [...first, ...second].forEach((item) => map.set(item.id, item));
          return Array.from(map.values()).slice(0, 8);
        };

        setAnnouncements(mergeUnique((announcementsTextRes.data as SearchAnnouncement[]) || [], (announcementsNumRes.data as SearchAnnouncement[]) || []));
        setUsers(mergeUnique((usersTextRes.data as SearchUser[]) || [], (usersNumRes.data as SearchUser[]) || []));
        setShops(mergeUnique((shopsTextRes.data as SearchShop[]) || [], (shopsNumRes.data as SearchShop[]) || []));
        setJobs(mergeUnique((jobsTextRes.data as SearchJob[]) || [], (jobsNumRes.data as SearchJob[]) || []));
        setReports(mergeUnique((reportsTextRes.data as SearchReport[]) || [], (reportsNumRes.data as SearchReport[]) || []));
      } catch (error) {
        logger.error("Erreur recherche admin globale:", error);
      } finally {
        setLoading(false);
      }
    }, 300);

    return () => clearTimeout(timer);
  }, [query]);

  const totalResults = useMemo(
    () => announcements.length + users.length + shops.length + jobs.length + reports.length,
    [announcements.length, users.length, shops.length, jobs.length, reports.length]
  );
  const moduleBadgeClassName = {
    announcement: "bg-blue-100 text-blue-700",
    user: "bg-purple-100 text-purple-700",
    shop: "bg-emerald-100 text-emerald-700",
    job: "bg-amber-100 text-amber-700",
    report: "bg-rose-100 text-rose-700",
  } as const;

  const navigateToModule = (path: string) => {
    navigate(path);
    setIsOpen(false);
  };

  return (
    <header className="bg-white shadow-sm border-b border-gray-200 px-6 py-4">
      <div className="flex items-center justify-between">
        <div className="flex items-center space-x-4">
          <h1 className="text-2xl font-semibold text-gray-900">
            Panneau d'Administration
          </h1>
        </div>
        
        <div className="flex items-center space-x-4">
          <div className="relative" ref={containerRef}>
            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-gray-400 w-4 h-4" />
            <Input
              placeholder="Rechercher..."
              className="pl-10 w-64"
              value={query}
              onChange={(e) => {
                setQuery(e.target.value);
                setIsOpen(true);
              }}
              onFocus={() => setIsOpen(true)}
            />
            {isOpen && query.trim().length >= 2 && (
              <div className="absolute z-50 mt-2 w-[520px] max-h-[520px] overflow-auto rounded-md border border-gray-200 bg-white shadow-lg p-3">
                <div className="flex items-center justify-between mb-2">
                  <p className="text-xs text-gray-500">Recherche globale admin</p>
                  <p className="text-xs text-gray-500">{loading ? "Recherche..." : `${totalResults} résultat(s)`}</p>
                </div>

                {!loading && totalResults === 0 ? (
                  <div className="text-sm text-gray-500 py-4 text-center">Aucun résultat</div>
                ) : null}

                {announcements.length > 0 && (
                  <div className="mb-3">
                    <p className="text-xs font-semibold text-gray-600 mb-1 flex items-center gap-1"><FileText className="w-3 h-3" /> Annonces</p>
                    <div className="space-y-1">
                      {announcements.map((item) => (
                        <button
                          key={item.id}
                          type="button"
                          className="w-full text-left rounded px-2 py-1 hover:bg-gray-50 text-sm"
                          onClick={() => navigateToModule(`/admin/announcements?q=${encodeURIComponent(item.global_listing_number != null ? String(item.global_listing_number) : item.title || "")}`)}
                        >
                          <span className={`mr-2 inline-flex items-center rounded px-1.5 py-0.5 text-[10px] font-semibold ${moduleBadgeClassName.announcement}`}>
                            Annonce
                          </span>
                          <span className="font-medium">{item.title || "Annonce sans titre"}</span>
                          {typeof item.global_listing_number === "number" ? (
                            <span className="ml-2 text-xs text-gray-500">N° {item.global_listing_number}</span>
                          ) : null}
                        </button>
                      ))}
                    </div>
                  </div>
                )}

                {users.length > 0 && (
                  <div className="mb-3">
                    <p className="text-xs font-semibold text-gray-600 mb-1 flex items-center gap-1"><Users className="w-3 h-3" /> Utilisateurs</p>
                    <div className="space-y-1">
                      {users.map((item) => (
                        <button
                          key={item.id}
                          type="button"
                          className="w-full text-left rounded px-2 py-1 hover:bg-gray-50 text-sm"
                          onClick={() => navigateToModule(`/admin/users/${item.id}`)}
                        >
                          <span className={`mr-2 inline-flex items-center rounded px-1.5 py-0.5 text-[10px] font-semibold ${moduleBadgeClassName.user}`}>
                            Utilisateur
                          </span>
                          <span className="font-medium">{`${item.first_name || ""} ${item.last_name || ""}`.trim() || "Utilisateur"}</span>
                          {typeof item.public_user_id === "number" ? (
                            <span className="ml-2 text-xs text-gray-500">ID: {String(item.public_user_id).padStart(14, "0")}</span>
                          ) : null}
                        </button>
                      ))}
                    </div>
                  </div>
                )}

                {shops.length > 0 && (
                  <div className="mb-3">
                    <p className="text-xs font-semibold text-gray-600 mb-1 flex items-center gap-1"><Store className="w-3 h-3" /> Boutiques</p>
                    <div className="space-y-1">
                      {shops.map((item) => (
                        <button
                          key={item.id}
                          type="button"
                          className="w-full text-left rounded px-2 py-1 hover:bg-gray-50 text-sm"
                          onClick={() => {
                            window.open(getLocalizedPath(`/boutique/${item.id}`), "_blank", "noopener,noreferrer");
                            setIsOpen(false);
                          }}
                        >
                          <span className={`mr-2 inline-flex items-center rounded px-1.5 py-0.5 text-[10px] font-semibold ${moduleBadgeClassName.shop}`}>
                            Boutique
                          </span>
                          <span className="font-medium">{item.name || "Boutique sans nom"}</span>
                          {typeof item.global_listing_number === "number" ? (
                            <span className="ml-2 text-xs text-gray-500">N° {item.global_listing_number}</span>
                          ) : null}
                        </button>
                      ))}
                    </div>
                  </div>
                )}

                {jobs.length > 0 && (
                  <div className="mb-3">
                    <p className="text-xs font-semibold text-gray-600 mb-1 flex items-center gap-1"><Briefcase className="w-3 h-3" /> Offres métiers</p>
                    <div className="space-y-1">
                      {jobs.map((item) => (
                        <button
                          key={item.id}
                          type="button"
                          className="w-full text-left rounded px-2 py-1 hover:bg-gray-50 text-sm"
                          onClick={() => {
                            window.open(getLocalizedPath(`/offre-metier/${item.id}`), "_blank", "noopener,noreferrer");
                            setIsOpen(false);
                          }}
                        >
                          <span className={`mr-2 inline-flex items-center rounded px-1.5 py-0.5 text-[10px] font-semibold ${moduleBadgeClassName.job}`}>
                            Offre
                          </span>
                          <span className="font-medium">{item.title || "Offre sans titre"}</span>
                          {typeof item.global_listing_number === "number" ? (
                            <span className="ml-2 text-xs text-gray-500">N° {item.global_listing_number}</span>
                          ) : null}
                        </button>
                      ))}
                    </div>
                  </div>
                )}

                {reports.length > 0 && (
                  <div className="mb-1">
                    <p className="text-xs font-semibold text-gray-600 mb-1 flex items-center gap-1"><Flag className="w-3 h-3" /> Signalements</p>
                    <div className="space-y-1">
                      {reports.map((item) => (
                        <button
                          key={item.id}
                          type="button"
                          className="w-full text-left rounded px-2 py-1 hover:bg-gray-50 text-sm"
                          onClick={() => navigateToModule(`/admin/moderation?q=${encodeURIComponent(item.target_global_number != null ? String(item.target_global_number) : item.target_title || "")}`)}
                        >
                          <span className={`mr-2 inline-flex items-center rounded px-1.5 py-0.5 text-[10px] font-semibold ${moduleBadgeClassName.report}`}>
                            Signalement
                          </span>
                          <span className="font-medium">{item.target_title || "Cible non renseignée"}</span>
                          {typeof item.target_global_number === "number" ? (
                            <span className="ml-2 text-xs text-gray-500">N° {item.target_global_number}</span>
                          ) : null}
                          <span className="ml-2 text-xs text-gray-400">({item.status})</span>
                        </button>
                      ))}
                    </div>
                  </div>
                )}
              </div>
            )}
          </div>
          
          <Button variant="ghost" size="sm" className="relative">
            <Bell className="w-5 h-5" />
            <span className="absolute -top-1 -right-1 w-3 h-3 bg-red-500 rounded-full text-xs flex items-center justify-center text-white">
              3
            </span>
          </Button>
          
          <Button variant="ghost" size="sm">
            <User className="w-5 h-5" />
          </Button>
          
          <Button 
            variant="ghost" 
            size="sm" 
            onClick={handleSignOut}
            title="Déconnexion"
          >
            <LogOut className="w-5 h-5" />
          </Button>
        </div>
      </div>
    </header>
  );
};

export default AdminHeader;
