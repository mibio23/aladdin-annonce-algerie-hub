import { useState, useEffect, useCallback } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from "@/components/ui/select";
import { FileText, Eye, Trash2, CheckCircle, XCircle, AlertCircle, RefreshCw, Copy } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { supabase } from "@/integrations/supabase/client";
import { useToast } from "@/hooks/use-toast";
import { formatDistanceToNow } from "date-fns";
import { fr } from "date-fns/locale";
import { logger } from '@/utils/silentLogger';

interface Announcement {
  id: string;
  title: string;
  description?: string;
  price: number;
  currency: string;
  location?: string;
  wilaya?: string;
  is_active: boolean;
  is_featured: boolean;
  is_urgent: boolean;
  views_count: number;
  created_at: string;
  updated_at: string;
  expires_at?: string;
  category_id: string;
  user_id: string;
  profiles?: {
    full_name?: string;
    email: string;
  };
  categories?: {
    name: string;
  };
  seller_public_user_id?: number | null;
}

const AnnouncementManagement = () => {
  const { toast } = useToast();
  const [announcements, setAnnouncements] = useState<Announcement[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState("");
  const [statusFilter, setStatusFilter] = useState("all");
  const [stats, setStats] = useState({
    total: 0,
    active: 0,
    pending: 0,
    reported: 0
  });

  const fetchAnnouncements = useCallback(async () => {
    try {
      setLoading(true);
      
      // Fetch announcements
      const { data, error } = await supabase
        .from('announcements')
        .select(`
          *,
          categories!fk_announcements_category (name)
        `)
        .order('created_at', { ascending: false });

      if (error) throw error;

      // Transform data to match Announcement interface
      const transformedData = data?.map(item => ({
        id: item.id,
        title: item.title,
        description: item.description,
        price: item.price,
        currency: item.currency || 'DZD',
        location: item.address || item.wilaya,
        wilaya: item.wilaya,
        is_active: item.status === 'active',
        is_featured: item.is_featured || item.type === 'featured',
        is_urgent: item.is_urgent,
        views_count: item.view_count || 0,
        created_at: item.created_at,
        updated_at: item.updated_at,
        expires_at: item.expires_at,
        category_id: item.category_id,
        user_id: item.user_id,
        profiles: {
          full_name: 'Utilisateur inconnu',
          email: item.email || ''
        },
        categories: item.categories || { name: 'Non classé' }
      })) || [];

      // Fetch seller public IDs and names in batch
      const userIds = Array.from(new Set(transformedData.map(a => a.user_id).filter(Boolean)));
      const idMap: Record<string, number> = {};
      const nameMap: Record<string, string> = {};
      
      if (userIds.length > 0) {
        const { data: profilesData } = await supabase
          .from('profiles')
          .select('user_id, public_user_id, first_name, last_name')
          .in('user_id', userIds);
          
        (profilesData || []).forEach((p: any) => {
          if (p.user_id) {
            if (p.public_user_id != null) idMap[p.user_id] = p.public_user_id as number;
            if (p.first_name || p.last_name) nameMap[p.user_id] = `${p.first_name || ''} ${p.last_name || ''}`.trim();
          }
        });
      }

      const enriched = transformedData.map(a => ({
        ...a,
        seller_public_user_id: idMap[a.user_id] ?? null,
        profiles: {
          ...a.profiles,
          full_name: nameMap[a.user_id] || a.profiles?.full_name || 'Utilisateur inconnu'
        }
      }));

      setAnnouncements(enriched);
      
      // Calculate stats
      const total = data?.length || 0;
      const active = data?.filter(a => a.status === 'active').length || 0;
      const pending = data?.filter(a => a.status !== 'active').length || 0; // Simplified
      // For now, we'll consider 0 as reported since is_urgent doesn't exist
      const reported = data?.filter(a => a.is_urgent).length || 0; // Now we have is_urgent
      
      setStats({ total, active, pending, reported });
      
    } catch (error) {
      logger.error('Error fetching announcements:', error);
      toast({
        title: "Erreur",
        description: "Impossible de charger les annonces",
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  }, [toast]);

  useEffect(() => {
    fetchAnnouncements();
  }, [fetchAnnouncements]);

  const updateAnnouncementStatus = async (id: string, isActive: boolean) => {
    try {
      const newStatus = isActive ? 'active' : 'expired'; // Map false to expired
      const { error } = await supabase
        .from('announcements')
        .update({ status: newStatus, updated_at: new Date().toISOString() })
        .eq('id', id);

      if (error) throw error;

      toast({
        title: "Succès",
        description: `Annonce ${isActive ? 'activée' : 'désactivée'} avec succès`,
      });
      
      fetchAnnouncements(); // Refresh data
    } catch (error) {
      logger.error('Error updating announcement:', error);
      toast({
        title: "Erreur",
        description: "Impossible de modifier l'annonce",
        variant: "destructive"
      });
    }
  };

  const deleteAnnouncement = async (id: string) => {
    if (!confirm('Êtes-vous sûr de vouloir supprimer cette annonce ?')) {
      return;
    }

    try {
      const { error } = await supabase
        .from('announcements')
        .delete()
        .eq('id', id);

      if (error) throw error;

      toast({
        title: "Succès",
        description: "Annonce supprimée avec succès",
      });
      
      fetchAnnouncements(); // Refresh data
    } catch (error) {
      logger.error('Error deleting announcement:', error);
      toast({
        title: "Erreur",
        description: "Impossible de supprimer l'annonce",
        variant: "destructive"
      });
    }
  };

  const filteredAnnouncements = announcements.filter(announcement => {
    const term = searchTerm.toLowerCase();
    const idRaw = announcement.seller_public_user_id != null ? String(announcement.seller_public_user_id) : '';
    const idPadded = announcement.seller_public_user_id != null ? String(announcement.seller_public_user_id).padStart(14, '0') : '';
    const matchesSearch = announcement.title.toLowerCase().includes(term) ||
                         (announcement.profiles?.full_name || '').toLowerCase().includes(term) ||
                         (announcement.categories?.name || '').toLowerCase().includes(term) ||
                         idRaw.includes(searchTerm) ||
                         idPadded.includes(searchTerm);
    
    const matchesStatus = statusFilter === "all" || 
                         (statusFilter === "active" && announcement.is_active) ||
                         (statusFilter === "pending" && !announcement.is_active) ||
                         (statusFilter === "reported" && announcement.is_urgent);
    
    return matchesSearch && matchesStatus;
  });

  const handleCopy = (value: string, label?: string) => {
    navigator.clipboard.writeText(value);
    toast({
      title: "Copié",
      description: label ? `${label} copié dans le presse-papiers` : "Copié dans le presse-papiers",
    });
  };

  const getStatusColor = (announcement: Announcement) => {
    if (announcement.is_urgent) return 'destructive';
    if (announcement.is_active) return 'default';
    return 'secondary';
  };

  const getStatusIcon = (announcement: Announcement) => {
    if (announcement.is_urgent) return XCircle;
    if (announcement.is_active) return CheckCircle;
    return AlertCircle;
  };

  const getStatusText = (announcement: Announcement) => {
    if (announcement.is_urgent) return 'Signalée';
    if (announcement.is_active) return 'Active';
    return 'En attente';
  };

  const formatPrice = (price: number, currency: string) => {
    return new Intl.NumberFormat('fr-DZ', {
      style: 'currency',
      currency: currency === 'DZD' ? 'DZD' : 'EUR',
      minimumFractionDigits: 0,
    }).format(price);
  };

  if (loading) {
    return (
      <div className="p-6 flex items-center justify-center">
        <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary"></div>
      </div>
    );
  }

  return (
    <div className="p-6 space-y-6">
      <div className="flex justify-between items-center">
        <h1 className="text-3xl font-bold">Gestion des Annonces</h1>
        <div className="flex space-x-2">
          <Input 
            placeholder="Rechercher une annonce ou un ID utilisateur..." 
            className="w-64"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
          <Select value={statusFilter} onValueChange={setStatusFilter}>
            <SelectTrigger className="w-48">
              <SelectValue placeholder="Filtrer par statut" />
            </SelectTrigger>
            <SelectContent>
              <SelectItem value="all">Tous les statuts</SelectItem>
              <SelectItem value="active">Actives</SelectItem>
              <SelectItem value="pending">En attente</SelectItem>
              <SelectItem value="reported">Signalées</SelectItem>
            </SelectContent>
          </Select>
          <Button onClick={fetchAnnouncements} variant="outline">
            <RefreshCw className="h-4 w-4" />
          </Button>
        </div>
      </div>

      {/* Statistics Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Total</CardTitle>
            <FileText className="h-4 w-4 text-blue-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.total}</div>
            <p className="text-xs text-muted-foreground">Annonces totales</p>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Actives</CardTitle>
            <CheckCircle className="h-4 w-4 text-green-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.active}</div>
            <p className="text-xs text-muted-foreground">En ligne actuellement</p>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">En attente</CardTitle>
            <AlertCircle className="h-4 w-4 text-yellow-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.pending}</div>
            <p className="text-xs text-muted-foreground">À modérer</p>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Signalées</CardTitle>
            <XCircle className="h-4 w-4 text-red-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.reported}</div>
            <p className="text-xs text-muted-foreground">Nécessitent attention</p>
          </CardContent>
        </Card>
      </div>

      {/* Announcements List */}
      <Card>
        <CardHeader>
          <CardTitle>Liste des Annonces ({filteredAnnouncements.length})</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="space-y-4">
            {filteredAnnouncements.length === 0 ? (
              <div className="text-center py-12 text-muted-foreground">
                <FileText className="h-12 w-12 mx-auto mb-4 opacity-50" />
                <p>Aucune annonce trouvée</p>
              </div>
            ) : (
              filteredAnnouncements.map((announcement) => {
                const StatusIcon = getStatusIcon(announcement);
                return (
                  <div key={announcement.id} className="flex items-center justify-between p-4 border rounded-lg hover:bg-muted/50">
                    <div className="flex items-center space-x-4">
                      <div className="w-16 h-16 bg-muted rounded-lg flex items-center justify-center">
                        <FileText className="w-6 h-6 text-muted-foreground" />
                      </div>
                      <div className="flex-1">
                        <h3 className="font-semibold">{announcement.title}
                          {announcement.seller_public_user_id != null && (
                            <>
                              <Badge variant="outline" className="ml-2 font-mono">
                                ID utilisateur: {String(announcement.seller_public_user_id).padStart(14, '0')}
                              </Badge>
                              <Button 
                                variant="ghost" 
                                size="icon" 
                                className="ml-1"
                                onClick={() => handleCopy(String(announcement.seller_public_user_id).padStart(14, '0'), 'ID utilisateur')}
                              >
                                <Copy className="w-3 h-3" />
                              </Button>
                            </>
                          )}
                        </h3>
                        <p className="text-sm text-muted-foreground">
                          Par: {announcement.profiles?.full_name || announcement.profiles?.email || 'Utilisateur inconnu'} • 
                          {announcement.categories?.name || 'Catégorie inconnue'}
                        </p>
                        <div className="flex items-center space-x-4 mt-2">
                          <span className="text-sm font-medium text-green-600">
                            {formatPrice(announcement.price, announcement.currency)}
                          </span>
                          <span className="text-xs text-muted-foreground">
                            {announcement.views_count} vues
                          </span>
                          <span className="text-xs text-muted-foreground">
                            {formatDistanceToNow(new Date(announcement.created_at), { 
                              addSuffix: true, 
                              locale: fr 
                            })}
                          </span>
                          <Badge variant={getStatusColor(announcement)}>
                            <StatusIcon className="w-3 h-3 mr-1" />
                            {getStatusText(announcement)}
                          </Badge>
                          {announcement.is_featured && (
                            <Badge variant="outline" className="bg-yellow-50 text-yellow-800">
                              ⭐ Premium
                            </Badge>
                          )}
                        </div>
                      </div>
                    </div>
                    <div className="flex items-center space-x-2">
                      <Button 
                        variant="outline" 
                        size="sm"
                        onClick={() => window.open(`/annonce/${announcement.id}`, '_blank')}
                      >
                        <Eye className="w-4 h-4" />
                      </Button>
                      <Button 
                        variant="outline" 
                        size="sm"
                        onClick={() => updateAnnouncementStatus(announcement.id, !announcement.is_active)}
                      >
                        {announcement.is_active ? <XCircle className="w-4 h-4" /> : <CheckCircle className="w-4 h-4" />}
                      </Button>
                      <Button 
                        variant="outline" 
                        size="sm"
                        onClick={() => deleteAnnouncement(announcement.id)}
                      >
                        <Trash2 className="w-4 h-4" />
                      </Button>
                    </div>
                  </div>
                );
              })
            )}
          </div>
        </CardContent>
      </Card>
    </div>
  );
};

export default AnnouncementManagement;
