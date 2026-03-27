import { useCallback, useEffect, useMemo, useState } from "react";
import { useNavigate } from "react-router-dom";
import { ExternalLink, Flag, Pause, Play, RefreshCw, Trash2, User } from "lucide-react";
import { formatDistanceToNow } from "date-fns";
import { fr } from "date-fns/locale";
import { supabase } from "@/integrations/supabase/client";
import { useToast } from "@/hooks/use-toast";
import { useAuth } from "@/contexts/useAuth";
import { logger } from "@/utils/silentLogger";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { Dialog, DialogContent, DialogFooter, DialogHeader, DialogTitle } from "@/components/ui/dialog";
import { Textarea } from "@/components/ui/textarea";
import { Table, TableBody, TableCell, TableHead, TableHeader, TableRow } from "@/components/ui/table";

type ReportStatus = "new" | "in_progress" | "resolved" | "rejected";
type ReportTargetType = "announcement" | "shop" | "job_offer";

interface ReportRow {
  id: string;
  reporter_user_id: string | null;
  client_session_id: string;
  target_type: ReportTargetType;
  target_id: string;
  target_global_number: number | null;
  target_owner_user_id: string | null;
  target_title: string | null;
  target_wilaya: string | null;
  reason: string;
  details: string | null;
  status: ReportStatus;
  assigned_to: string | null;
  created_at: string;
  resolved_at: string | null;
  resolved_by: string | null;
  resolution_note: string | null;
}

const statusBadgeClassName: Record<ReportStatus, string> = {
  new: "bg-red-100 text-red-800",
  in_progress: "bg-yellow-100 text-yellow-800",
  resolved: "bg-green-100 text-green-800",
  rejected: "bg-gray-100 text-gray-800",
};

const ModerationPanel = () => {
  const { toast } = useToast();
  const { user } = useAuth();
  const navigate = useNavigate();

  const [reports, setReports] = useState<ReportRow[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState("");
  const [statusFilter, setStatusFilter] = useState<ReportStatus | "all">("all");

  const [dialogOpen, setDialogOpen] = useState(false);
  const [selectedReport, setSelectedReport] = useState<ReportRow | null>(null);
  const [selectedStatus, setSelectedStatus] = useState<ReportStatus>("new");
  const [resolutionNote, setResolutionNote] = useState("");
  const [saving, setSaving] = useState(false);

  const [deleteDialogOpen, setDeleteDialogOpen] = useState(false);
  const [deleteTarget, setDeleteTarget] = useState<ReportRow | null>(null);
  const [deleting, setDeleting] = useState(false);
  const [togglingAnnouncementId, setTogglingAnnouncementId] = useState<string | null>(null);

  const fetchReports = useCallback(async () => {
    try {
      setLoading(true);
      const { data, error } = await supabase
        .from("reports")
        .select("*")
        .order("created_at", { ascending: false })
        .limit(200);

      if (error) throw error;
      setReports((data || []) as unknown as ReportRow[]);
    } catch (e) {
      logger.error("Error fetching reports:", e);
      toast({
        title: "Erreur",
        description: "Impossible de charger les signalements.",
        variant: "destructive",
      });
    } finally {
      setLoading(false);
    }
  }, [toast]);

  useEffect(() => {
    fetchReports();
  }, [fetchReports]);

  const stats = useMemo(() => {
    const base = { total: reports.length, new: 0, in_progress: 0, resolved: 0, rejected: 0 };
    for (const r of reports) base[r.status] += 1;
    return base;
  }, [reports]);

  const filteredReports = useMemo(() => {
    const q = searchTerm.trim().toLowerCase();
    return reports.filter((r) => {
      if (statusFilter !== "all" && r.status !== statusFilter) return false;
      if (!q) return true;
      const hay = [
        r.target_type,
        r.target_title ?? "",
        r.target_wilaya ?? "",
        r.reason ?? "",
        r.details ?? "",
        r.target_global_number ? String(r.target_global_number) : "",
        r.target_owner_user_id ?? "",
        r.reporter_user_id ?? "",
      ]
        .join(" ")
        .toLowerCase();
      return hay.includes(q);
    });
  }, [reports, searchTerm, statusFilter]);

  const openTarget = (r: ReportRow) => {
    const path =
      r.target_type === "announcement"
        ? `/annonce/${r.target_id}`
        : r.target_type === "shop"
          ? `/shop/${r.target_id}`
          : `/offre-metier/${r.target_id}`;
    window.open(path, "_blank", "noopener,noreferrer");
  };

  const openUserDossier = async (r: ReportRow) => {
    if (!r.target_owner_user_id) {
      toast({ title: "Utilisateur inconnu", description: "Aucun propriétaire associé.", variant: "destructive" });
      return;
    }
    try {
      const { data, error } = await supabase
        .from("profiles")
        .select("id")
        .eq("user_id", r.target_owner_user_id)
        .maybeSingle();

      if (error) throw error;
      if (!data?.id) {
        toast({ title: "Introuvable", description: "Aucun profil associé à cet utilisateur.", variant: "destructive" });
        return;
      }
      navigate(`/admin/users/${data.id}`);
    } catch (e) {
      logger.error("Error opening user dossier:", e);
      toast({ title: "Erreur", description: "Impossible d'ouvrir le dossier utilisateur.", variant: "destructive" });
    }
  };

  const openReportDialog = (r: ReportRow) => {
    setSelectedReport(r);
    setSelectedStatus(r.status);
    setResolutionNote(r.resolution_note ?? "");
    setDialogOpen(true);
  };

  const closeReportDialog = () => {
    setDialogOpen(false);
    setSelectedReport(null);
    setResolutionNote("");
    setSelectedStatus("new");
  };

  const openDeleteDialog = (r: ReportRow) => {
    setDeleteTarget(r);
    setDeleteDialogOpen(true);
  };

  const closeDeleteDialog = () => {
    setDeleteDialogOpen(false);
    setDeleteTarget(null);
  };

  const deleteAnnouncement = async () => {
    if (!deleteTarget) return;
    if (deleteTarget.target_type !== "announcement") {
      toast({ title: "Action impossible", description: "Seules les annonces peuvent être supprimées ici.", variant: "destructive" });
      return;
    }

    try {
      setDeleting(true);
      const { error } = await supabase.from("announcements").delete().eq("id", deleteTarget.target_id);
      if (error) throw error;

      toast({ title: "Supprimée", description: "Annonce supprimée définitivement." });
      await fetchReports();
      closeDeleteDialog();
    } catch (e) {
      logger.error("Error deleting announcement:", e);
      toast({
        title: "Erreur",
        description: "Impossible de supprimer l'annonce.",
        variant: "destructive",
      });
    } finally {
      setDeleting(false);
    }
  };

  const toggleAnnouncementActivation = async (announcementId: string) => {
    try {
      setTogglingAnnouncementId(announcementId);

      const { data, error } = await supabase.from("announcements").select("status").eq("id", announcementId).maybeSingle();
      if (error) throw error;
      if (!data?.status) {
        toast({ title: "Introuvable", description: "Annonce introuvable.", variant: "destructive" });
        return;
      }

      if (data.status === "deleted") {
        toast({ title: "Action impossible", description: "Annonce déjà supprimée.", variant: "destructive" });
        return;
      }

      if (data.status === "sold") {
        toast({ title: "Action impossible", description: "Annonce marquée comme vendue.", variant: "destructive" });
        return;
      }

      const nextStatus = data.status === "active" ? "expired" : "active";
      const ok = window.confirm(
        nextStatus === "expired"
          ? "Suspendre cette annonce (désactivation) ?"
          : "Réactiver cette annonce ?"
      );
      if (!ok) return;

      const { error: updateError } = await supabase
        .from("announcements")
        .update({ status: nextStatus, updated_at: new Date().toISOString() })
        .eq("id", announcementId);
      if (updateError) throw updateError;

      toast({
        title: "Succès",
        description: nextStatus === "expired" ? "Annonce suspendue." : "Annonce réactivée.",
      });
    } catch (e) {
      logger.error("Error toggling announcement activation:", e);
      toast({ title: "Erreur", description: "Impossible de modifier le statut de l'annonce.", variant: "destructive" });
    } finally {
      setTogglingAnnouncementId(null);
    }
  };

  const assignToMe = async () => {
    if (!user?.id || !selectedReport) return;
    try {
      setSaving(true);
      const nextStatus: ReportStatus = selectedReport.status === "new" ? "in_progress" : selectedReport.status;
      const { error } = await supabase
        .from("reports")
        .update({ assigned_to: user.id, status: nextStatus })
        .eq("id", selectedReport.id);
      if (error) throw error;
      toast({ title: "Assigné", description: "Signalement assigné à votre compte." });
      const { data } = await supabase.from("reports").select("*").eq("id", selectedReport.id).maybeSingle();
      if (data) {
        openReportDialog(data as unknown as ReportRow);
      } else {
        await fetchReports();
      }
    } catch (e) {
      logger.error("Error assigning report:", e);
      toast({ title: "Erreur", description: "Impossible d'assigner le signalement.", variant: "destructive" });
    } finally {
      setSaving(false);
    }
  };

  const saveReport = async () => {
    if (!user?.id || !selectedReport) return;
    try {
      setSaving(true);

      const trimmedNote = resolutionNote.trim().slice(0, 500);
      const nowIso = new Date().toISOString();

      const payload: Partial<ReportRow> & {
        status: ReportStatus;
        resolved_at?: string | null;
        resolved_by?: string | null;
        resolution_note?: string | null;
        assigned_to?: string | null;
      } = {
        status: selectedStatus,
        resolution_note: trimmedNote ? trimmedNote : null,
      };

      if (selectedStatus === "resolved" || selectedStatus === "rejected") {
        payload.resolved_at = nowIso;
        payload.resolved_by = user.id;
        if (!selectedReport.assigned_to) payload.assigned_to = user.id;
      } else {
        payload.resolved_at = null;
        payload.resolved_by = null;
      }

      const { error } = await supabase.from("reports").update(payload).eq("id", selectedReport.id);
      if (error) throw error;

      toast({ title: "Sauvegardé", description: "Signalement mis à jour." });
      await fetchReports();
      closeReportDialog();
    } catch (e) {
      logger.error("Error updating report:", e);
      toast({ title: "Erreur", description: "Impossible de mettre à jour le signalement.", variant: "destructive" });
    } finally {
      setSaving(false);
    }
  };

  return (
    <div className="p-6 space-y-6">
      <div className="flex items-center justify-between gap-4">
        <div>
          <h1 className="text-3xl font-bold">Modération</h1>
          <p className="text-sm text-muted-foreground">Signalements et accès rapide au dossier utilisateur</p>
        </div>
        <Button variant="outline" onClick={fetchReports} disabled={loading}>
          <RefreshCw className="w-4 h-4 mr-2" />
          Actualiser
        </Button>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-5 gap-4">
        <Card className="md:col-span-1">
          <CardHeader className="py-4">
            <CardTitle className="text-sm font-medium">Nouveaux</CardTitle>
          </CardHeader>
          <CardContent className="pt-0">
            <div className="text-2xl font-bold">{stats.new}</div>
          </CardContent>
        </Card>
        <Card className="md:col-span-1">
          <CardHeader className="py-4">
            <CardTitle className="text-sm font-medium">En cours</CardTitle>
          </CardHeader>
          <CardContent className="pt-0">
            <div className="text-2xl font-bold">{stats.in_progress}</div>
          </CardContent>
        </Card>
        <Card className="md:col-span-1">
          <CardHeader className="py-4">
            <CardTitle className="text-sm font-medium">Résolus</CardTitle>
          </CardHeader>
          <CardContent className="pt-0">
            <div className="text-2xl font-bold">{stats.resolved}</div>
          </CardContent>
        </Card>
        <Card className="md:col-span-1">
          <CardHeader className="py-4">
            <CardTitle className="text-sm font-medium">Rejetés</CardTitle>
          </CardHeader>
          <CardContent className="pt-0">
            <div className="text-2xl font-bold">{stats.rejected}</div>
          </CardContent>
        </Card>
        <Card className="md:col-span-1">
          <CardHeader className="py-4">
            <CardTitle className="text-sm font-medium">Total</CardTitle>
          </CardHeader>
          <CardContent className="pt-0">
            <div className="text-2xl font-bold">{stats.total}</div>
          </CardContent>
        </Card>
      </div>

      <Card>
        <CardHeader className="space-y-3">
          <CardTitle className="flex items-center gap-2">
            <Flag className="w-5 h-5" />
            Signalements
          </CardTitle>
          <div className="flex flex-col md:flex-row gap-3">
            <Input
              placeholder="Rechercher (titre, raison, wilaya, N°, user_id...)"
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
            />
            <Select value={statusFilter} onValueChange={(v) => setStatusFilter(v as ReportStatus | "all")}>
              <SelectTrigger className="w-full md:w-56">
                <SelectValue placeholder="Statut" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">Tous</SelectItem>
                <SelectItem value="new">Nouveaux</SelectItem>
                <SelectItem value="in_progress">En cours</SelectItem>
                <SelectItem value="resolved">Résolus</SelectItem>
                <SelectItem value="rejected">Rejetés</SelectItem>
              </SelectContent>
            </Select>
          </div>
        </CardHeader>
        <CardContent>
          {loading ? (
            <div className="py-10 flex items-center justify-center">
              <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
            </div>
          ) : (
            <div className="border rounded-lg overflow-hidden">
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Statut</TableHead>
                    <TableHead>Type</TableHead>
                    <TableHead>Titre</TableHead>
                    <TableHead>Raison</TableHead>
                    <TableHead>Lieu</TableHead>
                    <TableHead>Quand</TableHead>
                    <TableHead className="text-right">Actions</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {filteredReports.length === 0 ? (
                    <TableRow>
                      <TableCell colSpan={7} className="text-center py-10 text-muted-foreground">
                        Aucun signalement
                      </TableCell>
                    </TableRow>
                  ) : (
                    filteredReports.map((r) => (
                      <TableRow key={r.id} className="cursor-pointer hover:bg-muted/50" onClick={() => openReportDialog(r)}>
                        <TableCell>
                          <Badge className={statusBadgeClassName[r.status]}>{r.status}</Badge>
                        </TableCell>
                        <TableCell className="font-medium">{r.target_type}</TableCell>
                        <TableCell className="max-w-[260px] truncate">
                          {r.target_title || (r.target_global_number ? `N° ${r.target_global_number}` : r.target_id)}
                        </TableCell>
                        <TableCell className="max-w-[200px] truncate">{r.reason}</TableCell>
                        <TableCell>{r.target_wilaya || "-"}</TableCell>
                        <TableCell>
                          {formatDistanceToNow(new Date(r.created_at), { addSuffix: true, locale: fr })}
                        </TableCell>
                        <TableCell className="text-right" onClick={(e) => e.stopPropagation()}>
                          <div className="flex justify-end gap-2">
                            <Button variant="outline" size="sm" onClick={() => openTarget(r)}>
                              <ExternalLink className="w-4 h-4 mr-2" />
                              Ouvrir
                            </Button>
                            <Button variant="outline" size="sm" onClick={() => openUserDossier(r)}>
                              <User className="w-4 h-4 mr-2" />
                              Dossier
                            </Button>
                            {r.target_type === "announcement" ? (
                              <Button
                                variant="outline"
                                size="sm"
                                onClick={() => toggleAnnouncementActivation(r.target_id)}
                                disabled={togglingAnnouncementId === r.target_id}
                              >
                                <Pause className="w-4 h-4 mr-2" />
                                Suspendre
                              </Button>
                            ) : null}
                            {r.target_type === "announcement" ? (
                              <Button variant="destructive" size="sm" onClick={() => openDeleteDialog(r)}>
                                <Trash2 className="w-4 h-4 mr-2" />
                                Supprimer
                              </Button>
                            ) : null}
                          </div>
                        </TableCell>
                      </TableRow>
                    ))
                  )}
                </TableBody>
              </Table>
            </div>
          )}
        </CardContent>
      </Card>

      <Dialog open={dialogOpen} onOpenChange={(o) => (o ? setDialogOpen(true) : closeReportDialog())}>
        <DialogContent className="max-w-2xl">
          <DialogHeader>
            <DialogTitle>Signalement</DialogTitle>
          </DialogHeader>

          {selectedReport ? (
            <div className="space-y-4">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="space-y-1">
                  <div className="text-xs text-muted-foreground">Cible</div>
                  <div className="font-medium">
                    {selectedReport.target_type} •{" "}
                    {selectedReport.target_title || (selectedReport.target_global_number ? `N° ${selectedReport.target_global_number}` : selectedReport.target_id)}
                  </div>
                </div>
                <div className="space-y-1">
                  <div className="text-xs text-muted-foreground">Statut</div>
                  <Select value={selectedStatus} onValueChange={(v) => setSelectedStatus(v as ReportStatus)}>
                    <SelectTrigger>
                      <SelectValue />
                    </SelectTrigger>
                    <SelectContent>
                      <SelectItem value="new">new</SelectItem>
                      <SelectItem value="in_progress">in_progress</SelectItem>
                      <SelectItem value="resolved">resolved</SelectItem>
                      <SelectItem value="rejected">rejected</SelectItem>
                    </SelectContent>
                  </Select>
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="space-y-1">
                  <div className="text-xs text-muted-foreground">Propriétaire</div>
                  <div className="font-mono text-xs break-all">{selectedReport.target_owner_user_id || "-"}</div>
                </div>
                <div className="space-y-1">
                  <div className="text-xs text-muted-foreground">Reporter</div>
                  <div className="font-mono text-xs break-all">{selectedReport.reporter_user_id || "anon"}</div>
                </div>
              </div>

              <div className="space-y-1">
                <div className="text-xs text-muted-foreground">Raison</div>
                <div className="font-medium">{selectedReport.reason}</div>
              </div>

              <div className="space-y-1">
                <div className="text-xs text-muted-foreground">Détails</div>
                <div className="whitespace-pre-wrap text-sm">{selectedReport.details || "-"}</div>
              </div>

              <div className="space-y-2">
                <div className="text-xs text-muted-foreground">Note de résolution (optionnelle)</div>
                <Textarea value={resolutionNote} onChange={(e) => setResolutionNote(e.target.value)} rows={4} />
              </div>
            </div>
          ) : null}

          <DialogFooter className="gap-2 sm:gap-2">
            <Button variant="outline" onClick={() => (selectedReport ? openTarget(selectedReport) : null)} disabled={!selectedReport}>
              <ExternalLink className="w-4 h-4 mr-2" />
              Ouvrir
            </Button>
            <Button variant="outline" onClick={() => (selectedReport ? openUserDossier(selectedReport) : null)} disabled={!selectedReport}>
              <User className="w-4 h-4 mr-2" />
              Dossier
            </Button>
            <Button variant="outline" onClick={assignToMe} disabled={!selectedReport || saving || !user?.id}>
              Prendre en charge
            </Button>
            <Button
              variant="outline"
              onClick={() => (selectedReport ? toggleAnnouncementActivation(selectedReport.target_id) : null)}
              disabled={!selectedReport || selectedReport.target_type !== "announcement" || togglingAnnouncementId === selectedReport.target_id}
            >
              {selectedReport && togglingAnnouncementId === selectedReport.target_id ? (
                <Pause className="w-4 h-4 mr-2" />
              ) : (
                <Play className="w-4 h-4 mr-2" />
              )}
              Suspendre / Activer
            </Button>
            <Button
              variant="destructive"
              onClick={() => (selectedReport ? openDeleteDialog(selectedReport) : null)}
              disabled={!selectedReport || selectedReport.target_type !== "announcement"}
            >
              <Trash2 className="w-4 h-4 mr-2" />
              Supprimer l'annonce
            </Button>
            <Button onClick={saveReport} disabled={!selectedReport || saving || !user?.id}>
              Sauvegarder
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>

      <Dialog open={deleteDialogOpen} onOpenChange={(o) => (o ? setDeleteDialogOpen(true) : closeDeleteDialog())}>
        <DialogContent className="max-w-lg">
          <DialogHeader>
            <DialogTitle>Supprimer l'annonce ?</DialogTitle>
          </DialogHeader>
          <div className="space-y-2 text-sm">
            <div>
              Cette action est définitive. L'annonce sera supprimée de la base et ne sera plus visible.
            </div>
            <div className="text-muted-foreground break-words">
              {deleteTarget
                ? `${deleteTarget.target_type} • ${deleteTarget.target_title || (deleteTarget.target_global_number ? `N° ${deleteTarget.target_global_number}` : deleteTarget.target_id)}`
                : null}
            </div>
          </div>
          <DialogFooter className="gap-2 sm:gap-2">
            <Button variant="outline" onClick={closeDeleteDialog} disabled={deleting}>
              Annuler
            </Button>
            <Button variant="destructive" onClick={deleteAnnouncement} disabled={deleting || !deleteTarget || deleteTarget.target_type !== "announcement"}>
              Supprimer définitivement
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
};

export default ModerationPanel;
