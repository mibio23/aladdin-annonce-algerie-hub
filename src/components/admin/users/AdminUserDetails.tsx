import { useEffect, useState, useCallback, useMemo } from "react"
import { useParams } from "react-router-dom"
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card"
import { Button } from "@/components/ui/button"
import { Badge } from "@/components/ui/badge"
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar"
import { ArrowLeft, Copy, Mail, Phone, ShieldCheck, Calendar, FileText, Ban, Undo2, Send, EyeOff } from "lucide-react"
import { Label } from "@/components/ui/label"
import { Textarea } from "@/components/ui/textarea"
import { Select, SelectTrigger, SelectContent, SelectItem, SelectValue } from "@/components/ui/select"
import { useAuth } from "@/contexts/useAuth"
import { supabase } from "@/integrations/supabase/client"
import { useToast } from "@/hooks/use-toast"
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs"
import ConfirmDialog from "@/components/common/ConfirmDialog"
import { Tooltip, TooltipContent, TooltipProvider, TooltipTrigger } from "@/components/ui/tooltip"

interface Profile {
  id: string
  user_id: string | null
  public_user_id: number | null
  display_name: string | null
  first_name: string | null
  last_name: string | null
  email?: string | null
  phone?: string | null
  avatar_url?: string | null
  bio?: string | null
  location?: string | null
  created_at?: string | null
  profile_locked?: boolean | null
  role?: "admin" | "moderator" | "user" | null
}

interface Banner {
  id: string
  title: string | null
  description: string | null
  link_url: string | null
  is_active: boolean | null
  created_at: string | null
  end_at: string | null
}

interface SecurityLog {
  id: string
  created_at: string
  action_type: string
  resource_type: string
  resource_id: string | null
  metadata: SecurityLogMetadata | null
  user_id: string | null
  session_id: string | null
}

interface SecurityLogMetadata {
  reason?: string
  note?: string
  profile_id?: string
  target_user_id?: string
  [key: string]: unknown
}

type PendingAction =
  | { key: "toggleAccount"; title: string; description: string; confirmText: string; variant: "destructive" | "default" }
  | { key: "hideBanners"; title: string; description: string; confirmText: string; variant: "destructive" | "default" }
  | { key: "showBanners"; title: string; description: string; confirmText: string; variant: "destructive" | "default" }
  | { key: "hideAnnouncements"; title: string; description: string; confirmText: string; variant: "destructive" | "default" }
  | { key: "showAnnouncements"; title: string; description: string; confirmText: string; variant: "destructive" | "default" }

const AdminUserDetails = () => {
  const { id } = useParams<{ id: string }>()
  const { toast } = useToast()
  const { user } = useAuth()
  const [profile, setProfile] = useState<Profile | null>(null)
  const [banners, setBanners] = useState<Banner[]>([])
  const [announcementsCount, setAnnouncementsCount] = useState<number>(0)
  const [loading, setLoading] = useState(true)
  const [acting, setActing] = useState(false)
  const [reason, setReason] = useState<string>("")
  const [note, setNote] = useState<string>("")
  const [auditLogs, setAuditLogs] = useState<SecurityLog[]>([])
  const [auditLoading, setAuditLoading] = useState<boolean>(false)
  const [groupFilter, setGroupFilter] = useState<"account" | "banners" | "announcements" | null>(null)
  const [pendingAction, setPendingAction] = useState<PendingAction | null>(null)
  const [isProtectedAdminAccount, setIsProtectedAdminAccount] = useState(false)
  const [canManageSuspension, setCanManageSuspension] = useState(false)

  const logModeration = async (actionType: string, resourceType: string, resourceId: string | null, extra: Record<string, unknown> = {}) => {
    try {
      await supabase.rpc("log_security_event", {
        p_user_id: user?.id || profile?.user_id || "00000000-0000-0000-0000-000000000000",
        p_session_id: (typeof crypto !== "undefined" && "randomUUID" in crypto) ? crypto.randomUUID() : String(Date.now()),
        p_action_type: actionType,
        p_resource_type: resourceType,
        p_resource_id: resourceId,
        p_metadata: {
          reason,
          note,
          profile_id: profile?.id,
          target_user_id: profile?.user_id,
          ...extra
        }
      })
    } catch {
      /* silent */
    }
  }

  const handleCopy = (value: string, label?: string) => {
    navigator.clipboard.writeText(value)
    toast({ title: "Copié", description: label ? `${label} copié` : "Copié" })
  }

  const fetchData = useCallback(async () => {
    if (!id) return
    try {
      setLoading(true)
      const { data: p } = await supabase
        .from("profiles")
        .select("*")
        .eq("id", id)
        .single()

      if (p) setProfile(p as unknown as Profile)
      const emailNormalized = String((p as { email?: string | null } | null)?.email || "").trim().toLowerCase()

      let role: "admin" | "moderator" | "user" | null = null
      if (p?.user_id) {
        const { data: roleRows } = await supabase
          .from("user_roles")
          .select("role")
          .eq("user_id", p.user_id)
        const roles = (roleRows || []).map((r: { role: "admin" | "moderator" | "user" }) => r.role)
        if (roles.includes("admin")) role = "admin"
        else if (roles.includes("moderator")) role = "moderator"
        else if (roles.includes("user")) role = "user"
      }
      if (p) {
        setProfile({ ...(p as unknown as Profile), role })
      }
      setIsProtectedAdminAccount(
        role === "admin" ||
        role === "moderator" ||
        (!!user?.id && p?.user_id === user.id)
      )

      if (user?.id) {
        const { data: actorRoleRows } = await supabase
          .from("user_roles")
          .select("role")
          .eq("user_id", user.id)
        const actorRoles = (actorRoleRows || []).map((r: { role: "admin" | "moderator" | "user" }) => r.role)
        setCanManageSuspension(actorRoles.includes("admin") || actorRoles.includes("moderator"))
      } else {
        setCanManageSuspension(false)
      }

      const ownerIds = [p?.user_id, p?.id].filter((v): v is string => Boolean(v))
      if (ownerIds.length > 0) {
        const { data: b } = await supabase
          .from("advertising_banners")
          .select("id, title, description, link_url, is_active, created_at, end_at")
          .in("created_by", ownerIds)
          .order("created_at", { ascending: false })
        setBanners((b || []) as Banner[])

        try {
          const { count } = await supabase
            .from("announcements")
            .select("*", { count: "exact", head: true })
            .in("user_id", ownerIds)
          setAnnouncementsCount(count || 0)
        } catch {
          setAnnouncementsCount(0)
        }
      }
    } finally {
      setLoading(false)
    }
  }, [id, user?.id])

  useEffect(() => {
    fetchData()
  }, [fetchData])

  const fetchAuditLogs = useCallback(async () => {
    if (!profile?.id) return
    try {
      setAuditLoading(true)
      const { data, error } = await supabase.rpc("get_security_audit_for_profile", {
        p_profile_id: profile.id,
        p_limit: 50
      })

      if (error) {
        const { data: fallbackData } = await supabase
          .from("security_audit_log")
          .select("id, created_at, action_type, resource_type, resource_id, metadata, user_id, session_id")
          .or(`resource_id.eq.${profile.id},metadata->>profile_id.eq.${profile.id}`)
          .order("created_at", { ascending: false })
          .limit(50)
        setAuditLogs((fallbackData || []) as SecurityLog[])
      } else {
        setAuditLogs((data || []) as SecurityLog[])
      }
    } catch {
      setAuditLogs([])
    } finally {
      setAuditLoading(false)
    }
  }, [profile?.id])

  useEffect(() => {
    fetchAuditLogs()
  }, [fetchAuditLogs])

  const filteredLogs = useMemo(() => {
    const groupOf = (a: string) => {
      if (a.startsWith("account_")) return "account"
      if (a.startsWith("banners_")) return "banners"
      if (a.startsWith("announcements_")) return "announcements"
      return null
    }
    if (!groupFilter) return auditLogs
    return auditLogs.filter(l => groupOf(l.action_type) === groupFilter)
  }, [auditLogs, groupFilter])

  const toggleSuspendAccount = async (skipConfirm = false) => {
    if (!profile) return
    if (!canManageSuspension) {
      toast({
        title: "Action non autorisée",
        description: "Votre rôle ne permet pas de suspendre des comptes.",
        variant: "destructive"
      })
      return
    }
    if (isProtectedAdminAccount) {
      toast({
        title: "Action bloquée",
        description: "La suspension est désactivée pour les comptes administrateur/modérateur.",
        variant: "destructive"
      })
      return
    }
    if (!skipConfirm) {
      setPendingAction({
        key: "toggleAccount",
        title: profile.profile_locked ? "Réactiver le compte ?" : "Désactiver le compte ?",
        description: profile.profile_locked
          ? "Le compte utilisateur sera réactivé et l'accès sera restauré."
          : "Le compte utilisateur sera suspendu immédiatement.",
        confirmText: profile.profile_locked ? "Réactiver" : "Désactiver",
        variant: "destructive",
      })
      return
    }
    try {
      setActing(true)
      const nextLocked = !profile.profile_locked
      const sessionId = (typeof crypto !== "undefined" && "randomUUID" in crypto) ? crypto.randomUUID() : String(Date.now())
      const { error: rpcError } = await supabase.rpc("admin_set_profile_locked", {
        p_profile_id: profile.id,
        p_locked: nextLocked,
        p_reason: reason || null,
        p_note: note || null,
        p_session_id: sessionId
      })

      if (rpcError) {
        const { error: directError } = await supabase
          .from("profiles")
          .update({ profile_locked: nextLocked })
          .eq("id", profile.id)

        if (directError) {
          const needsDbFix = /ambiguous/i.test(rpcError.message || "")
          toast({
            title: "Erreur",
            description: needsDbFix
              ? "La fonction SQL de suspension doit être mise à jour (ambiguous id). Exécutez la migration corrective puis réessayez."
              : `Impossible de mettre à jour l'état du compte (RPC: ${rpcError.message} / Direct: ${directError.message})`,
            variant: "destructive"
          })
          return
        }

        await logModeration(nextLocked ? "account_suspended" : "account_reactivated", "profile", profile.id, {
          reason: reason || null,
          note: note || null,
          fallback: "direct_profiles_update"
        })
      }
      toast({ title: profile.profile_locked ? "Compte réactivé" : "Compte désactivé", description: "État du compte mis à jour" })
      await fetchData()
      await fetchAuditLogs()
    } finally {
      setActing(false)
    }
  }

  const resetPassword = async () => {
    if (!profile?.email) {
      toast({ title: "Email manquant", description: "Aucune adresse email pour cet utilisateur", variant: "destructive" })
      return
    }
    try {
      setActing(true)
      const email = profile.email ?? ""
      const { error } = await supabase.auth.resetPasswordForEmail(email, { redirectTo: window.location.origin + "/reset-password" })
      if (error) {
        toast({ title: "Erreur", description: "Échec de l'envoi du lien de réinitialisation", variant: "destructive" })
        return
      }
      await logModeration("password_reset_sent", "profile", profile.id, { email: profile.email })
      toast({ title: "Lien envoyé", description: "Email de réinitialisation envoyé" })
    } finally {
      setActing(false)
    }
  }

  const sendEmail = () => {
    if (!profile?.email) {
      toast({ title: "Email manquant", description: "Aucune adresse email pour cet utilisateur", variant: "destructive" })
      return
    }
    const subject = encodeURIComponent("Contrôle de compte - Aladdin")
    const body = encodeURIComponent("Bonjour,\n\nSuite à un contrôle, merci de corriger vos annonces qui enfreignent nos règles.\n\nCordialement,\nÉquipe Aladdin")
    window.location.href = `mailto:${profile.email}?subject=${subject}&body=${body}`
    logModeration("email_sent", "profile", profile.id, { email: profile.email })
  }

  const hideAllBanners = async (skipConfirm = false) => {
    const ownerIds = [profile?.user_id, profile?.id].filter((v): v is string => Boolean(v))
    if (ownerIds.length === 0) return
    if (!skipConfirm) {
      setPendingAction({
        key: "hideBanners",
        title: "Masquer toutes les bannières ?",
        description: "Toutes les bannières de cet utilisateur seront désactivées.",
        confirmText: "Masquer",
        variant: "destructive",
      })
      return
    }
    try {
      setActing(true)
      const { error } = await supabase
        .from("advertising_banners")
        .update({ is_active: false })
        .in("created_by", ownerIds)
      if (error) {
        toast({ title: "Erreur", description: "Impossible de masquer les bannières", variant: "destructive" })
        return
      }
      await logModeration("banners_hidden", "advertising_banners", String(profile.user_id || profile.id), { scope: "all_for_user" })
      toast({ title: "Bannières masquées", description: "Toutes les bannières ont été désactivées" })
      await fetchData()
    } finally {
      setActing(false)
    }
  }

  const showAllBanners = async (skipConfirm = false) => {
    const ownerIds = [profile?.user_id, profile?.id].filter((v): v is string => Boolean(v))
    if (ownerIds.length === 0) return
    if (!skipConfirm) {
      setPendingAction({
        key: "showBanners",
        title: "Réactiver toutes les bannières ?",
        description: "Toutes les bannières de cet utilisateur seront réactivées.",
        confirmText: "Réactiver",
        variant: "default",
      })
      return
    }
    try {
      setActing(true)
      const { error } = await supabase
        .from("advertising_banners")
        .update({ is_active: true })
        .in("created_by", ownerIds)
      if (error) {
        toast({ title: "Erreur", description: "Impossible de réactiver les bannières", variant: "destructive" })
        return
      }
      await logModeration("banners_shown", "advertising_banners", String(profile.user_id || profile.id), { scope: "all_for_user" })
      toast({ title: "Bannières réactivées", description: "Toutes les bannières ont été activées" })
      await fetchData()
    } finally {
      setActing(false)
    }
  }

  const hideAllAnnouncements = async (skipConfirm = false) => {
    const ownerIds = [profile?.user_id, profile?.id].filter((v): v is string => Boolean(v))
    if (ownerIds.length === 0) return
    if (!skipConfirm) {
      setPendingAction({
        key: "hideAnnouncements",
        title: "Masquer toutes les annonces ?",
        description: "Toutes les annonces de cet utilisateur passeront en statut supprimé.",
        confirmText: "Masquer",
        variant: "destructive",
      })
      return
    }
    try {
      setActing(true)
      const { error } = await supabase
        .from("announcements")
        .update({ status: "deleted" })
        .in("user_id", ownerIds)
      if (error) {
        toast({ title: "Erreur", description: "Impossible de masquer les annonces", variant: "destructive" })
        return
      }
      await logModeration("announcements_hidden", "announcements", String(profile.user_id || profile.id), { scope: "all_for_user" })
      toast({ title: "Annonces masquées", description: "Toutes les annonces ont été mises en 'deleted'" })
      await fetchData()
    } finally {
      setActing(false)
    }
  }

  const showAllAnnouncements = async (skipConfirm = false) => {
    const ownerIds = [profile?.user_id, profile?.id].filter((v): v is string => Boolean(v))
    if (ownerIds.length === 0) return
    if (!skipConfirm) {
      setPendingAction({
        key: "showAnnouncements",
        title: "Réactiver toutes les annonces ?",
        description: "Toutes les annonces de cet utilisateur seront remises en statut actif.",
        confirmText: "Réactiver",
        variant: "default",
      })
      return
    }
    try {
      setActing(true)
      const { error } = await supabase
        .from("announcements")
        .update({ status: "active" })
        .in("user_id", ownerIds)
      if (error) {
        toast({ title: "Erreur", description: "Impossible de réactiver les annonces", variant: "destructive" })
        return
      }
      await logModeration("announcements_shown", "announcements", String(profile.user_id || profile.id), { scope: "all_for_user" })
      toast({ title: "Annonces réactivées", description: "Toutes les annonces ont été remises en 'active'" })
      await fetchData()
    } finally {
      setActing(false)
    }
  }

  const executePendingAction = async () => {
    if (!pendingAction) return
    const actionKey = pendingAction.key
    setPendingAction(null)
    if (actionKey === "toggleAccount") await toggleSuspendAccount(true)
    if (actionKey === "hideBanners") await hideAllBanners(true)
    if (actionKey === "showBanners") await showAllBanners(true)
    if (actionKey === "hideAnnouncements") await hideAllAnnouncements(true)
    if (actionKey === "showAnnouncements") await showAllAnnouncements(true)
  }

  if (loading) {
    return (
      <div className="p-6 flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    )
  }

  if (!profile) {
    return (
      <div className="p-6">
        <Card>
          <CardHeader>
            <CardTitle>Utilisateur introuvable</CardTitle>
            <CardDescription>Le profil demandé n'existe pas.</CardDescription>
          </CardHeader>
          <CardContent>
            <Button variant="outline" onClick={() => window.history.back()}>
              <ArrowLeft className="w-4 h-4 mr-2" />
              Retour
            </Button>
          </CardContent>
        </Card>
      </div>
    )
  }

  const displayName = profile.display_name || `${profile.first_name || ""} ${profile.last_name || ""}`.trim() || "Utilisateur"
  const initials = displayName.substring(0, 1).toUpperCase()
  const idPadded = profile.public_user_id != null ? String(profile.public_user_id).padStart(14, "0") : null

  return (
    <div className="p-6 space-y-6">
      <ConfirmDialog
        isOpen={!!pendingAction}
        onClose={() => setPendingAction(null)}
        onConfirm={executePendingAction}
        title={pendingAction?.title || "Confirmer l'action"}
        description={pendingAction?.description || ""}
        confirmText={pendingAction?.confirmText || "Confirmer"}
        cancelText="Annuler"
        variant={pendingAction?.variant || "default"}
      />
      <div className="flex items-center justify-between">
        <Button variant="outline" onClick={() => window.history.back()}>
          <ArrowLeft className="w-4 h-4 mr-2" />
          Retour
        </Button>
      </div>

      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-3">
            <Avatar className="h-12 w-12">
              <AvatarImage src={profile.avatar_url || undefined} alt={displayName} />
              <AvatarFallback>{initials}</AvatarFallback>
            </Avatar>
            <span>{displayName}</span>
          </CardTitle>
          <CardDescription>Compte utilisateur</CardDescription>
        </CardHeader>
        <CardContent className="space-y-3">
          <div className="flex flex-wrap items-center gap-3">
            {idPadded && (
              <>
                <Badge variant="outline" className="font-mono">
                  {idPadded}
                </Badge>
                <Button variant="ghost" size="icon" onClick={() => handleCopy(idPadded, "ID utilisateur")}>
                  <Copy className="w-4 h-4" />
                </Button>
              </>
            )}
            {profile.email && (
              <>
                <Badge variant="secondary" className="flex items-center gap-1">
                  <Mail className="w-3 h-3" />
                  {profile.email}
                </Badge>
                <Button variant="ghost" size="icon" onClick={() => handleCopy(profile.email || "", "Email")}>
                  <Copy className="w-4 h-4" />
                </Button>
              </>
            )}
            {profile.phone && (
              <>
                <Badge variant="secondary" className="flex items-center gap-1">
                  <Phone className="w-3 h-3" />
                  {profile.phone}
                </Badge>
                <Button variant="ghost" size="icon" onClick={() => handleCopy(profile.phone || "", "Téléphone")}>
                  <Copy className="w-4 h-4" />
                </Button>
              </>
            )}
            <Badge variant={profile.profile_locked ? "secondary" : "outline"} className="flex items-center gap-1">
              <ShieldCheck className="w-3 h-3" />
              {profile.profile_locked ? "Compte désactivé" : "Compte actif"}
            </Badge>
            {profile.created_at && (
              <Badge variant="outline" className="flex items-center gap-1">
                <Calendar className="w-3 h-3" />
                {new Date(profile.created_at).toLocaleDateString("fr-FR")}
              </Badge>
            )}
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <FileText className="w-5 h-5" />
            Bannières publicitaires
          </CardTitle>
          <CardDescription>Bannières créées par cet utilisateur</CardDescription>
        </CardHeader>
        <CardContent>
          <div className="mb-3 flex items-center gap-2">
            <Button variant="destructive" size="sm" disabled={acting} onClick={hideAllBanners}>
              <EyeOff className="w-4 h-4 mr-1" />
              Masquer toutes les bannières
            </Button>
            <Button variant="outline" size="sm" disabled={acting} onClick={showAllBanners}>
              Réactiver toutes les bannières
            </Button>
          </div>
          {banners.length === 0 ? (
            <div className="text-sm text-muted-foreground">Aucune bannière</div>
          ) : (
            <div className="space-y-3">
              {banners.map((b) => (
                <div key={b.id} className="flex items-center justify-between p-3 border rounded">
                  <div className="space-y-1">
                    <div className="font-medium">{b.title || "Sans titre"}</div>
                    <div className="text-xs text-muted-foreground">{b.description || ""}</div>
                    <div className="text-xs text-muted-foreground">Créée le {b.created_at ? new Date(b.created_at).toLocaleDateString("fr-FR") : "N/A"}</div>
                  </div>
                  <div className="flex items-center gap-2">
                    <Badge variant={b.is_active ? "default" : "secondary"}>{b.is_active ? "Active" : "Inactive"}</Badge>
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => {
                        if (b.link_url) {
                          window.open(b.link_url, "_blank", "noopener,noreferrer")
                          return
                        }
                        window.open("/admin/banners", "_blank", "noopener,noreferrer")
                      }}
                    >
                      Voir
                    </Button>
                  </div>
                </div>
              ))}
            </div>
          )}
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Annonces classiques</CardTitle>
          <CardDescription>Total: {announcementsCount}</CardDescription>
        </CardHeader>
        <CardContent>
          <Button variant="destructive" size="sm" disabled={acting} onClick={hideAllAnnouncements}>
            <EyeOff className="w-4 h-4 mr-1" />
            Masquer toutes les annonces
          </Button>
          <Button variant="outline" size="sm" className="ml-2" disabled={acting} onClick={showAllAnnouncements}>
            Réactiver toutes les annonces
          </Button>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Actions administrateur</CardTitle>
          <CardDescription>Contrôles du compte</CardDescription>
        </CardHeader>
        <CardContent className="space-y-3">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-3">
            <div className="space-y-2">
              <Label>Raison</Label>
              <Select value={reason} onValueChange={(v) => setReason(v)}>
                <SelectTrigger>
                  <SelectValue placeholder="Sélectionner une raison" />
                </SelectTrigger>
                <SelectContent>
                  <SelectItem value="spam">Spam</SelectItem>
                  <SelectItem value="fraude">Fraude</SelectItem>
                  <SelectItem value="contenu_interdit">Contenu interdit</SelectItem>
                  <SelectItem value="contact_irregulier">Violation des règles de contact</SelectItem>
                  <SelectItem value="demande_utilisateur">Demande de l'utilisateur</SelectItem>
                </SelectContent>
              </Select>
            </div>
            <div className="space-y-2">
              <Label>Note (optionnel)</Label>
              <Textarea value={note} onChange={(e) => setNote(e.target.value)} placeholder="Ajoutez des détails pour le journal de modération" rows={3} />
            </div>
          </div>
          <div className="flex flex-wrap gap-2">
            <TooltipProvider>
              <Tooltip>
                <TooltipTrigger asChild>
            <Button variant={profile.profile_locked ? "outline" : "destructive"} disabled={acting || isProtectedAdminAccount || !canManageSuspension} onClick={toggleSuspendAccount}>
                    {profile.profile_locked ? (
                      <Undo2 className="w-4 h-4 mr-1" />
                    ) : (
                      <Ban className="w-4 h-4 mr-1" />
                    )}
                    {profile.profile_locked ? "Réactiver le compte" : "Désactiver le compte"}
                  </Button>
                </TooltipTrigger>
                <TooltipContent side="top">
                  {!canManageSuspension
                    ? "Votre rôle ne permet pas la suspension de comptes"
                    : isProtectedAdminAccount
                      ? "Suspension non autorisée pour ce compte protégé"
                      : profile.profile_locked
                        ? "Réactiver le compte utilisateur"
                        : "Désactiver le compte utilisateur"}
                </TooltipContent>
              </Tooltip>
            </TooltipProvider>
            {!canManageSuspension && (
              <Badge variant="secondary">Votre rôle ne permet pas la suspension</Badge>
            )}
            {isProtectedAdminAccount && (
              <Badge variant="secondary">Suspension désactivée pour ce compte protégé</Badge>
            )}
            <Button variant="outline" disabled={acting} onClick={resetPassword}>
              <Undo2 className="w-4 h-4 mr-1" />
              Réinitialiser mot de passe
            </Button>
            <Button variant="outline" disabled={acting} onClick={sendEmail}>
              <Send className="w-4 h-4 mr-1" />
              Envoyer un email
            </Button>
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardHeader>
          <CardTitle>Historique de modération</CardTitle>
          <CardDescription>Journal des actions sur ce compte</CardDescription>
        </CardHeader>
        <CardContent>
          <Tabs defaultValue="history" className="w-full">
            <TabsList>
              <TabsTrigger value="history">Historique</TabsTrigger>
            </TabsList>
            <TabsContent value="history">
              <div className="mb-3 flex flex-wrap items-center gap-2">
                <Button variant={!groupFilter ? "default" : "outline"} size="sm" onClick={() => setGroupFilter(null)}>Tous</Button>
                <Button variant={groupFilter === "account" ? "default" : "outline"} size="sm" onClick={() => setGroupFilter("account")}>Compte</Button>
                <Button variant={groupFilter === "banners" ? "default" : "outline"} size="sm" onClick={() => setGroupFilter("banners")}>Bannières</Button>
                <Button variant={groupFilter === "announcements" ? "default" : "outline"} size="sm" onClick={() => setGroupFilter("announcements")}>Annonces</Button>
              </div>
              {auditLoading ? (
                <div className="p-4 flex items-center justify-center">
                  <div className="animate-spin rounded-full h-6 w-6 border-b-2 border-primary"></div>
                </div>
              ) : filteredLogs.length === 0 ? (
                <div className="text-sm text-muted-foreground">Aucun événement de modération</div>
              ) : (
                <div className="space-y-3">
                  {filteredLogs.map((log) => (
                    <div key={log.id} className="flex items-start justify-between p-3 border rounded">
                      <div className="space-y-1">
                        <div className="font-medium">{log.action_type}</div>
                        <div className="text-xs text-muted-foreground">{new Date(log.created_at).toLocaleString("fr-FR")}</div>
                        <div className="text-xs text-muted-foreground">Ressource: {log.resource_type}</div>
                        <div className="flex items-center gap-2">
                          {log.action_type.startsWith("account_") && (<Badge variant="secondary">Compte</Badge>)}
                          {log.action_type.startsWith("banners_") && (<Badge variant="secondary">Bannières</Badge>)}
                          {log.action_type.startsWith("announcements_") && (<Badge variant="secondary">Annonces</Badge>)}
                        </div>
                        {log.metadata?.reason && (
                          <div className="text-xs">Raison: {log.metadata.reason}</div>
                        )}
                        {log.metadata?.note && (
                          <div className="text-xs">Note: {log.metadata.note}</div>
                        )}
                      </div>
                      <div className="flex items-center gap-2">
                        {log.resource_id && (
                          <Badge variant="outline" className="font-mono">{String(log.resource_id).substring(0, 12)}…</Badge>
                        )}
                      </div>
                    </div>
                  ))}
                </div>
              )}
            </TabsContent>
          </Tabs>
        </CardContent>
      </Card>
    </div>
  )
}

export default AdminUserDetails
