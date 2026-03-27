import React, { useState } from 'react';
import { useForm } from 'react-hook-form';
import { zodResolver } from '@hookform/resolvers/zod';
import * as z from 'zod';
import { MapPin, Briefcase, User, Mail, Save, Loader2, Phone, Home } from 'lucide-react';
import { Badge } from '@/components/ui/badge';
import { useNavigate } from 'react-router-dom';
import { useSafeI18nWithRouter } from "@/lib/i18n/i18nContextWithRouter";

import { Button } from '@/components/ui/button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Form, FormControl, FormDescription, FormField, FormItem, FormLabel, FormMessage } from '@/components/ui/form';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { ProfileAvatar } from '@/components/profile/ProfileAvatar';
import { useProfile } from '@/hooks/useProfile';
import { useAuth } from '@/contexts/useAuth';

const Profile = () => {
  const navigate = useNavigate();
  const { user } = useAuth();
  const { profile, loading, saving, updateProfile } = useProfile();
  const { t } = useSafeI18nWithRouter();
  const [isEditing, setIsEditing] = useState(false);

  // Schéma de validation
  const profileSchema = z.object({
    // Champs immuables (affichés mais non modifiables)
    first_name: z.string().optional(),
    last_name: z.string().optional(),
    gender: z.enum(['homme', 'femme']).nullable().optional(),
    phone: z.string().optional(),
    
    // Champs modifiables
    display_name: z.string().min(2, t('profile.validation.nameMinLength')).optional(),
    date_of_birth: z.string().optional(),
    profession: z.string().max(100, t('profile.validation.professionMaxLength')).optional(),
    bio: z.string().max(500, t('profile.validation.bioMaxLength')).optional(),
    
    // Nouveaux champs de contact et localisation
    phone_secondary: z.string().optional(),
    phone_tertiary: z.string().optional(),
    address: z.string().optional(),
    commune: z.string().min(1, t('profile.validation.required')).optional(), // Marqué comme requis dans la demande (*)
    wilaya: z.string().min(1, t('profile.validation.required')).optional(),  // Marqué comme requis dans la demande (*)
  });

  type ProfileFormData = z.infer<typeof profileSchema>;

  // Helper function to safely convert gender string to expected enum or null
  const normalizeGender = (gender: string | null): "homme" | "femme" | null => {
    if (!gender) return null;
    const lower = gender.toLowerCase();
    
    // Gestion des différentes variantes possibles
    if (lower === 'homme' || lower === 'male' || lower === 'm') {
      return 'homme';
    }
    if (lower === 'femme' || lower === 'female' || lower === 'f') {
      return 'femme';
    }
    
    return null;
  };

  const form = useForm<ProfileFormData>({
    resolver: zodResolver(profileSchema),
    defaultValues: {
      display_name: '',
      first_name: '',
      last_name: '',
      gender: null,
      phone: '',
      date_of_birth: '',
      profession: '',
      bio: '',
      phone_secondary: '',
      phone_tertiary: '',
      address: '',
      commune: '',
      wilaya: '',
    },
  });

  // Mise à jour du formulaire quand le profil change
  React.useEffect(() => {
    if (profile) {
      form.reset({
        display_name: profile.display_name || '',
        first_name: profile.first_name || '',
        last_name: profile.last_name || '',
        gender: normalizeGender(profile.gender),
        phone: profile.phone || '',
        date_of_birth: profile.date_of_birth || '',
        profession: profile.profession || '',
        bio: profile.bio || '',
        phone_secondary: profile.phone_secondary || '',
        phone_tertiary: profile.phone_tertiary || '',
        address: profile.address || '',
        commune: profile.commune || '',
        wilaya: profile.wilaya || '',
      });
    }
  }, [profile, form]);

  const onSubmit = async (data: ProfileFormData) => {
    // Filtrage strict des champs immuables
    // On retire first_name, last_name, gender, phone de l'objet envoyé
    // eslint-disable-next-line @typescript-eslint/no-unused-vars
    const { first_name, last_name, gender, phone, ...editableData } = data;
    
    // On envoie uniquement les champs autorisés à la modification
    const success = await updateProfile(editableData);
    if (success) {
      setIsEditing(false);
    }
  };

  if (loading) {
    return (
      <div className="min-h-screen bg-gradient-to-br from-background to-secondary/20 flex items-center justify-center">
        <div className="flex items-center gap-2">
          <Loader2 className="h-6 w-6 animate-spin" />
          <span>{t('profile.loading')}</span>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-background to-secondary/20">
      <div className="container max-w-4xl mx-auto px-4 py-8">
        {/* Header */}
        <div className="mb-8">
          <div className="flex items-center gap-4 mb-6">
            <Button 
              variant="ghost" 
              onClick={() => navigate('/dashboard')}
              className="text-muted-foreground hover:text-foreground"
            >
              ← {t('navigation.backToDashboard')}
            </Button>
          </div>
          
          <div className="text-center md:text-left">
            <h1 className="text-3xl font-bold bg-gradient-to-r from-primary to-secondary bg-clip-text text-transparent mb-2">
              {t('profile.title')}
            </h1>
            <p className="text-muted-foreground">
              {t('profile.subtitle')}
            </p>
          </div>
        </div>

        <Form {...form}>
          <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-6">
            
            {/* 1. Photo et Identité Principale */}
            <Card className="border-0 shadow-lg bg-card/50 backdrop-blur">
              <CardHeader className="pb-4">
                <div className="flex items-center justify-between">
                  <div>
                    <CardTitle className="flex items-center gap-2 text-lg">
                      <User className="h-5 w-5 text-primary" />
                      {t('profile.profilePhoto')}
                    </CardTitle>
                    <CardDescription>
                      {t('profile.profilePhotoDesc')}
                    </CardDescription>
                  </div>
                  {!isEditing && (
                    <Button
                      type="button"
                      variant="outline"
                      onClick={() => setIsEditing(true)}
                    >
                      {t('profile.editProfile')}
                    </Button>
                  )}
                </div>
              </CardHeader>
              <CardContent>
                <div className="flex flex-col md:flex-row items-center gap-6">
                  <ProfileAvatar size="xl" editable={isEditing} />
                  <div className="text-center md:text-left space-y-1">
                    <h3 className="text-lg font-semibold">
                      {profile?.display_name || `${profile?.first_name} ${profile?.last_name}`.trim()}
                    </h3>
                    {user?.email && (
                      <p className="text-muted-foreground flex items-center gap-1 justify-center md:justify-start">
                        <Mail className="h-4 w-4" />
                        {user.email}
                      </p>
                    )}
                    {profile?.phone && (
                      <p className="text-muted-foreground flex items-center gap-1 justify-center md:justify-start">
                        <Phone className="h-4 w-4" />
                        {profile.phone}
                      </p>
                    )}
                    {profile?.wilaya && (
                      <p className="text-muted-foreground flex items-center gap-1 justify-center md:justify-start">
                        <MapPin className="h-4 w-4" />
                        {profile.commune}, {profile.wilaya}
                      </p>
                    )}
                  </div>
                </div>
              </CardContent>
            </Card>

            {/* 2. Informations Immuables (Lecture Seule) */}
            <Card className="border-0 shadow-lg bg-card/50 backdrop-blur opacity-90">
              <CardHeader>
                <CardTitle className="flex items-center gap-2 text-base text-muted-foreground">
                  <User className="h-4 w-4" />
                  Informations d'identité (Non modifiables)
                </CardTitle>
              </CardHeader>
              <CardContent className="space-y-4">
                <div className="grid md:grid-cols-2 gap-4">
                  <FormField
                    control={form.control}
                    name="first_name"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>{t('profile.firstName')}</FormLabel>
                        <FormControl>
                          <Input {...field} disabled={true} className="bg-muted" />
                        </FormControl>
                      </FormItem>
                    )}
                  />
                  <FormField
                    control={form.control}
                    name="last_name"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>{t('profile.lastName')}</FormLabel>
                        <FormControl>
                          <Input {...field} disabled={true} className="bg-muted" />
                        </FormControl>
                      </FormItem>
                    )}
                  />
                  <FormField
                    control={form.control}
                    name="gender"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>{t('profile.gender')}</FormLabel>
                        <Select value={field.value || ''} disabled={true}>
                          <FormControl>
                            <SelectTrigger className="bg-muted">
                              <SelectValue />
                            </SelectTrigger>
                          </FormControl>
                          <SelectContent>
                            <SelectItem value="homme">{t('profile.homme')}</SelectItem>
                            <SelectItem value="femme">{t('profile.femme')}</SelectItem>
                          </SelectContent>
                        </Select>
                      </FormItem>
                    )}
                  />
                  <FormField
                    control={form.control}
                    name="phone"
                    render={({ field }) => (
                      <FormItem>
                        <FormLabel>{t('profile.phone')} (Principal)</FormLabel>
                        <FormControl>
                          <Input {...field} disabled={true} className="bg-muted" />
                        </FormControl>
                      </FormItem>
                    )}
                  />
                </div>
              </CardContent>
            </Card>

            {/* 3. Informations Modifiables */}
            {isEditing && (
              <>
                <Card className="border-0 shadow-lg bg-card/50 backdrop-blur">
                  <CardHeader>
                    <CardTitle className="flex items-center gap-2">
                      <Briefcase className="h-5 w-5 text-primary" />
                      Informations Publiques & Contact
                    </CardTitle>
                    <CardDescription>Ces informations sont visibles sur votre profil public</CardDescription>
                  </CardHeader>
                  <CardContent className="space-y-4">
                    
                    {/* Surnom & Date de naissance */}
                    <div className="grid md:grid-cols-2 gap-4">
                      <FormField
                        control={form.control}
                        name="display_name"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>{t('profile.displayName')} (Surnom)</FormLabel>
                            <FormControl>
                              <Input {...field} placeholder="Votre surnom public" />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                      <FormField
                        control={form.control}
                        name="date_of_birth"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>{t('profile.dateOfBirth')}</FormLabel>
                            <FormControl>
                              <Input type="date" {...field} />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                    </div>

                    {/* Profession */}
                    <FormField
                      control={form.control}
                      name="profession"
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>{t('profile.profession')}</FormLabel>
                          <FormControl>
                            <Input {...field} placeholder="Ex: Commerçant, Étudiant..." />
                          </FormControl>
                          <FormMessage />
                        </FormItem>
                      )}
                    />

                    {/* Téléphones Secondaires */}
                    <div className="grid md:grid-cols-2 gap-4">
                      <FormField
                        control={form.control}
                        name="phone_secondary"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Téléphone Secondaire</FormLabel>
                            <FormControl>
                              <Input {...field} placeholder="+213..." />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                      <FormField
                        control={form.control}
                        name="phone_tertiary"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Téléphone Tertiaire</FormLabel>
                            <FormControl>
                              <Input {...field} placeholder="+213..." />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                    </div>

                    {/* Localisation Complète */}
                    <div className="space-y-4 pt-4 border-t">
                      <h4 className="font-medium flex items-center gap-2">
                        <MapPin className="h-4 w-4" /> Localisation
                      </h4>
                      <div className="grid md:grid-cols-2 gap-4">
                        <FormField
                          control={form.control}
                          name="wilaya"
                          render={({ field }) => (
                            <FormItem>
                              <FormLabel>Wilaya <span className="text-destructive">*</span></FormLabel>
                              <FormControl>
                                <Input {...field} placeholder="Votre Wilaya" />
                              </FormControl>
                              <FormMessage />
                            </FormItem>
                          )}
                        />
                        <FormField
                          control={form.control}
                          name="commune"
                          render={({ field }) => (
                            <FormItem>
                              <FormLabel>Commune <span className="text-destructive">*</span></FormLabel>
                              <FormControl>
                                <Input {...field} placeholder="Votre Commune" />
                              </FormControl>
                              <FormMessage />
                            </FormItem>
                          )}
                        />
                      </div>
                      <FormField
                        control={form.control}
                        name="address"
                        render={({ field }) => (
                          <FormItem>
                            <FormLabel>Adresse précise</FormLabel>
                            <FormControl>
                              <Input {...field} placeholder="Rue, Bâtiment, Étage..." />
                            </FormControl>
                            <FormMessage />
                          </FormItem>
                        )}
                      />
                    </div>

                    {/* Bio */}
                    <FormField
                      control={form.control}
                      name="bio"
                      render={({ field }) => (
                        <FormItem>
                          <FormLabel>{t('profile.bio')}</FormLabel>
                          <FormControl>
                            <Textarea 
                              {...field} 
                              placeholder="Parlez-nous de vous..." 
                              rows={4}
                              className="resize-none"
                            />
                          </FormControl>
                          <FormDescription>
                            {field.value?.length || 0}/500 caractères
                          </FormDescription>
                          <FormMessage />
                        </FormItem>
                      )}
                    />
                  </CardContent>
                  
                  <CardContent className="pt-6 border-t flex justify-end gap-3">
                    <Button
                      type="button"
                      variant="outline"
                      onClick={() => {
                        setIsEditing(false);
                        form.reset();
                      }}
                      disabled={saving}
                    >
                      {t('profile.cancel')}
                    </Button>
                    <Button
                      type="submit"
                      disabled={saving || !form.formState.isDirty}
                    >
                      {saving ? (
                        <>
                          <Loader2 className="mr-2 h-4 w-4 animate-spin" />
                          {t('profile.saving')}
                        </>
                      ) : (
                        <>
                          <Save className="mr-2 h-4 w-4" />
                          {t('profile.save')}
                        </>
                      )}
                    </Button>
                  </CardContent>
                </Card>
              </>
            )}
          </form>
        </Form>
      </div>
    </div>
  );
};

export default Profile;
