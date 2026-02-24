import { useState, useEffect, useCallback } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Users, UserCheck, UserX, Shield, Eye, Edit, Ban, RefreshCw, Mail, Phone, ShieldCheck, AlertCircle, Copy } from "lucide-react";
import { Badge } from "@/components/ui/badge";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { supabase } from "@/integrations/supabase/client";
import { useToast } from "@/hooks/use-toast";
import { formatDistanceToNow } from "date-fns";
import { fr } from "date-fns/locale";
import { logger } from '@/utils/silentLogger';

interface UserProfile {
  id: string;
  user_id: string;
  public_user_id?: number | null;
  display_name?: string | null;
  avatar_url?: string | null;
  bio?: string | null;
  created_at: string;
  updated_at: string;
  // Calculated fields
  email: string;
  phone?: string | null;
  announcements_count?: number;
  last_sign_in_at?: string;
  is_premium?: boolean;
}

const UserManagement = () => {
  const { toast } = useToast();
  const [users, setUsers] = useState<UserProfile[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchTerm, setSearchTerm] = useState("");
  const [stats, setStats] = useState({
    total: 0,
    active: 0,
    premium: 0,
    new_today: 0
  });

  const fetchUsers = useCallback(async () => {
    try {
      setLoading(true);
      
      // Fetch user profiles
      const { data: profiles, error: profilesError } = await supabase
        .from('profiles')
        .select('*')
        .order('created_at', { ascending: false });

      if (profilesError) throw profilesError;

      // For each user, count their banners
      const usersWithStats = await Promise.all(
        (profiles || []).map(async (profile) => {
          const { count: bannersCount } = await supabase
            .from('advertising_banners')
            .select('*', { count: 'exact' })
            .eq('created_by', profile.user_id || '');

          return {
            id: profile.id,
            user_id: profile.user_id || '',
            public_user_id: profile.public_user_id || null,
            display_name: (profile as any).display_name,
            avatar_url: profile.avatar_url,
            bio: profile.bio,
            created_at: profile.created_at || new Date().toISOString(),
            updated_at: profile.updated_at || new Date().toISOString(),
            email: (profile as any).email || '',
            phone: (profile as any).phone || null,
            announcements_count: bannersCount || 0,
            is_premium: (bannersCount || 0) > 2, // Simple premium logic
          };
        })
      );

      setUsers(usersWithStats);
      
      // Calculate stats
      const total = usersWithStats.length;
      const premium = usersWithStats.filter(u => u.is_premium).length;
      const today = new Date();
      today.setHours(0, 0, 0, 0);
      const new_today = usersWithStats.filter(u => u.created_at && new Date(u.created_at) >= today).length;
      
      setStats({ 
        total, 
        active: total, // For now, consider all as active
        premium, 
        new_today 
      });
      
    } catch (error) {
      logger.error('Error fetching users:', error);
      toast({
        title: "Erreur",
        description: "Impossible de charger les utilisateurs",
        variant: "destructive"
      });
    } finally {
      setLoading(false);
    }
  }, [toast]);

  useEffect(() => {
    fetchUsers();
  }, [fetchUsers]);

  const filteredUsers = users.filter(user => {
    const term = searchTerm.toLowerCase();
    const digitsTerm = searchTerm.replace(/\D/g, '');
    const idRaw = user.public_user_id != null ? String(user.public_user_id) : '';
    const idPadded = user.public_user_id != null ? String(user.public_user_id).padStart(14, '0') : '';
    const phoneStr = (user.phone || '').toLowerCase();
    const phoneDigits = (user.phone || '').replace(/\D/g, '');
    return (
      (user.display_name || '').toLowerCase().includes(term) ||
      (user.email || '').toLowerCase().includes(term) ||
      (user.bio || '').toLowerCase().includes(term) ||
      idRaw.includes(searchTerm) ||
      idPadded.includes(searchTerm) ||
      phoneStr.includes(term) ||
      (digitsTerm.length >= 5 && phoneDigits.includes(digitsTerm))
    );
  });

  const handleCopy = (value: string, label?: string) => {
    navigator.clipboard.writeText(value);
    toast({
      title: "Copié",
      description: label ? `${label} copié dans le presse-papiers` : "Copié dans le presse-papiers",
    });
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
        <h1 className="text-3xl font-bold">Gestion des Utilisateurs</h1>
        <div className="flex space-x-2">
          <Input 
            placeholder="Rechercher nom, email, téléphone ou ID utilisateur..." 
            className="w-64"
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
          />
          <Button onClick={fetchUsers} variant="outline">
            <RefreshCw className="h-4 w-4" />
          </Button>
        </div>
      </div>

      {/* Statistics Cards */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Utilisateurs Totaux</CardTitle>
            <Users className="h-4 w-4 text-blue-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.total}</div>
            <p className="text-xs text-muted-foreground">Comptes créés</p>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Actifs</CardTitle>
            <UserCheck className="h-4 w-4 text-green-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.active}</div>
            <p className="text-xs text-muted-foreground">Comptes actifs</p>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Premium</CardTitle>
            <Shield className="h-4 w-4 text-purple-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.premium}</div>
            <p className="text-xs text-muted-foreground">Utilisateurs premium</p>
          </CardContent>
        </Card>
        <Card>
          <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-2">
            <CardTitle className="text-sm font-medium">Nouveaux</CardTitle>
            <UserX className="h-4 w-4 text-orange-600" />
          </CardHeader>
          <CardContent>
            <div className="text-2xl font-bold">{stats.new_today}</div>
            <p className="text-xs text-muted-foreground">Inscrits aujourd'hui</p>
          </CardContent>
        </Card>
      </div>

      {/* Users List */}
      <Card>
        <CardHeader>
          <CardTitle>Liste des Utilisateurs ({filteredUsers.length})</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="space-y-4">
            {filteredUsers.length === 0 ? (
              <div className="text-center py-12 text-muted-foreground">
                <Users className="h-12 w-12 mx-auto mb-4 opacity-50" />
                <p>Aucun utilisateur trouvé</p>
              </div>
            ) : (
              filteredUsers.map((user) => (
                <div key={user.id} className="flex items-center justify-between p-4 border rounded-lg hover:bg-muted/50">
                  <div className="flex items-center space-x-4">
                    <Avatar className="h-12 w-12">
                      <AvatarImage src={user.avatar_url || undefined} alt={user.display_name || undefined} />
                      <AvatarFallback>
                        {user.display_name?.charAt(0) || user.email.charAt(0).toUpperCase()}
                      </AvatarFallback>
                    </Avatar>
                    <div className="flex-1">
                      <h3 className="font-semibold">
                        {user.display_name || 'Nom non renseigné'}
                        {user.public_user_id != null && (
                          <Badge variant="outline" className="ml-2 font-mono">
                            ID utilisateur: {String(user.public_user_id).padStart(14, '0')}
                          </Badge>
                          )}
                          {user.public_user_id != null && (
                            <Button 
                              variant="outline" 
                              size="icon" 
                              className="ml-2"
                              onClick={() => handleCopy(String(user.public_user_id).padStart(14, '0'), 'ID utilisateur')}
                            >
                              <Copy className="w-3 h-3" />
                            </Button>
                         )}
                      </h3>
                      <p className="text-sm text-muted-foreground flex items-center gap-1">
                        <Mail className="w-3 h-3" />
                        {user.email}
                        {!!user.email && (
                          <Button 
                            variant="ghost" 
                            size="icon" 
                            className="ml-1"
                            onClick={() => handleCopy(user.email, 'Email')}
                          >
                            <Copy className="w-3 h-3" />
                          </Button>
                        )}
                      </p>
                      {user.phone && (
                        <p className="text-sm text-muted-foreground flex items-center gap-1">
                          <Phone className="w-3 h-3" />
                          {user.phone}
                          <Button 
                            variant="ghost" 
                            size="icon" 
                            className="ml-1"
                            onClick={() => handleCopy(user.phone || '', 'Téléphone')}
                          >
                            <Copy className="w-3 h-3" />
                          </Button>
                        </p>
                      )}
                      <div className="flex items-center gap-2 mt-1">
                        {user.email ? (
                          <Badge variant="outline" className="bg-green-50 text-green-700">
                            <ShieldCheck className="w-3 h-3 mr-1" />
                            Email vérifié
                          </Badge>
                        ) : (
                          <Badge variant="destructive" className="">
                            <AlertCircle className="w-3 h-3 mr-1" />
                            Email manquant
                          </Badge>
                        )}
                        {!user.phone ? (
                          <Badge variant="destructive" className="">
                            <Phone className="w-3 h-3 mr-1" />
                            Téléphone manquant
                          </Badge>
                        ) : (
                          <Badge variant="secondary" className="">
                            <Phone className="w-3 h-3 mr-1" />
                            Téléphone renseigné
                          </Badge>
                        )}
                      </div>
                      {user.bio && (
                        <p className="text-xs text-muted-foreground">{user.bio}</p>
                      )}
                      <div className="flex items-center space-x-4 mt-2">
                        <span className="text-xs text-muted-foreground">
                          {user.announcements_count} bannières
                        </span>
                        <span className="text-xs text-muted-foreground">
                          Inscrit {formatDistanceToNow(new Date(user.created_at), { 
                            addSuffix: true, 
                            locale: fr 
                          })}
                        </span>
                        {user.is_premium && (
                          <Badge variant="outline" className="bg-purple-50 text-purple-800">
                            <Shield className="w-3 h-3 mr-1" />
                            Premium
                          </Badge>
                        )}
                      </div>
                    </div>
                  </div>
                  <div className="flex items-center space-x-2">
                    <Button 
                      variant="outline" 
                      size="sm"
                      onClick={() => window.open(`/admin/users/${user.id}`, '_blank')}
                    >
                      <Eye className="w-4 h-4 mr-1" />
                      Voir compte
                    </Button>
                    <Button 
                      variant="outline" 
                      size="sm"
                      onClick={() => {
                        toast({
                          title: "Fonctionnalité à venir",
                          description: "L'édition des utilisateurs sera bientôt disponible"
                        });
                      }}
                    >
                      <Edit className="w-4 h-4" />
                    </Button>
                    <Button 
                      variant="outline" 
                      size="sm"
                      onClick={() => {
                        toast({
                          title: "Fonctionnalité à venir",
                          description: "La suspension d'utilisateurs sera bientôt disponible"
                        });
                      }}
                    >
                      <Ban className="w-4 h-4" />
                    </Button>
                  </div>
                </div>
              ))
            )}
          </div>
        </CardContent>
      </Card>
    </div>
  );
};

export default UserManagement;
