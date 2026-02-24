import React, { useState, useEffect } from 'react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { useAuth } from '@/contexts/useAuth';
import { useProfile } from '@/hooks/useProfile';
import { useToast } from '@/hooks/use-toast';
import { format } from 'date-fns';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Switch } from '@/components/ui/switch';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Tabs, TabsContent, TabsList, TabsTrigger } from '@/components/ui/tabs';
import { Separator } from '@/components/ui/separator';
import { Textarea } from '@/components/ui/textarea';
import { Badge } from '@/components/ui/badge';
import { Settings, User, Bell, Shield, Globe, Palette, MapPin, Phone, UserCircle, Camera, Lock } from 'lucide-react';
import { ProfileAvatar } from '@/components/profile/ProfileAvatar';
import { supabase } from '@/integrations/supabase/client';
import { wilayas } from '@/data/wilayaData';

const Parametres = () => {
  const { t, language } = useSafeI18nWithRouter();
  const { user } = useAuth();
  const { profile, loading: profileLoading, updateProfile } = useProfile();
  const [pendingUpdates, setPendingUpdates] = useState<Record<string, unknown>>({});
  const { toast } = useToast();
  const [dateOfBirth, setDateOfBirth] = useState<Date | undefined>(undefined);
  const [settings, setSettings] = useState({
    // Notifications
    emailNotifications: true,
    smsNotifications: false,
    pushNotifications: true,
    marketingEmails: false,
    // Confidentialité
    profileVisible: true,
    phoneVisible: true, // Toujours activé pour éviter les arnaques
    emailVisible: true, // Toujours activé pour éviter les arnaques
    // Préférences
    language: 'fr',
    currency: 'DZD',
    theme: 'system',
    // Localisation
    searchRadius: '10'
  });
  const [exportingData, setExportingData] = useState(false);

  useEffect(() => {
    if (profile?.date_of_birth) {
      setDateOfBirth(new Date(profile.date_of_birth));
    }
  }, [profile]);

  const handleProfileUpdate = (field: string, value: unknown) => {
    if (!profile) return;
    if (profile.profile_locked && (field === 'first_name' || field === 'last_name' || field === 'gender' || field === 'phone')) {
      toast({
        title: t('profile.error'),
        description: t('profile.fieldsLocked'),
        variant: 'destructive',
      });
      return;
    }
    setPendingUpdates(prev => ({ ...prev, [field]: value }));
  };

  const handleDateOfBirthChange = (date: Date | undefined) => {
    setDateOfBirth(date);
    if (date) {
      handleProfileUpdate('date_of_birth', format(date, 'yyyy-MM-dd'));
    }
  };

  const handleSettingChange = (key: string, value: unknown) => {
    setSettings(prev => ({ ...prev, [key]: value }));
  };

  const handleExportData = async () => {
    if (!user) return;

    setExportingData(true);
    try {
      // Récupérer les données utilisateur
      const { data: profileData } = await supabase
        .from('profiles')
        .select('*')
        .eq('user_id', user.id)
        .single();

      const { data: announcementsData } = await supabase
        .from('announcements')
        .select('*')
        .eq('user_id', user.id);

      const exportDate = new Date().toISOString();
      const header = '===== Données du compte =====\n';
      const profileSection = `\n[Profil]\n${JSON.stringify(profileData ?? {}, null, 2)}\n`;
      const announcementsSection = `\n[Annonces]\n${JSON.stringify(announcementsData ?? [], null, 2)}\n`;
      const footer = `\nDate d'export: ${exportDate}\n`;
      const dataStr = header + profileSection + announcementsSection + footer;
      const dataUri = 'data:text/plain;charset=utf-8,' + encodeURIComponent(dataStr);
      
      const exportFileDefaultName = `donnees_compte_${format(new Date(), 'yyyy-MM-dd')}.txt`;
      
      const linkElement = document.createElement('a');
      linkElement.setAttribute('href', dataUri);
      linkElement.setAttribute('download', exportFileDefaultName);
      linkElement.click();

      toast({
        title: t('parametres.dataExported'),
        description: t('parametres.dataExportedDesc'),
      });
    } catch (error) {
      const message = error instanceof Error ? error.message : t('parametres.error');
      toast({
        title: t('parametres.error'),
        description: message,
        variant: 'destructive',
      });
    } finally {
      setExportingData(false);
    }
  };

  if (profileLoading) {
    return (
      <div className="min-h-screen bg-background flex items-center justify-center">
        <div className="text-center">
          <div className="animate-spin rounded-full h-8 w-8 border-b-2 border-primary mx-auto mb-4"></div>
          <p className="text-muted-foreground">{t('profile.loading')}</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-background py-12">
      <div className="container mx-auto px-4">
        <div className="max-w-4xl mx-auto">
          <Card className="mb-6">
            <CardHeader>
              <div className="flex items-center gap-3">
                <Settings className="h-8 w-8 text-primary" />
                <div>
                  <CardTitle className="text-2xl">{t('parametres.title')}</CardTitle>
                  <CardDescription>{t('parametres.subtitle')}</CardDescription>
                </div>
              </div>
            </CardHeader>
          </Card>

          <Tabs defaultValue="profile" className="w-full">
            <TabsList className="grid w-full grid-cols-5">
              <TabsTrigger value="profile">
                <User className="h-4 w-4 mr-2" />
                {t('parametres.profile')}
              </TabsTrigger>
              <TabsTrigger value="notifications">
                <Bell className="h-4 w-4 mr-2" />
                {t('parametres.notifications')}
              </TabsTrigger>
              <TabsTrigger value="privacy">
                <Shield className="h-4 w-4 mr-2" />
                {t('parametres.privacy')}
              </TabsTrigger>
              <TabsTrigger value="preferences">
                <Globe className="h-4 w-4 mr-2" />
                {t('parametres.preferences')}
              </TabsTrigger>
              <TabsTrigger value="advanced">
                <Palette className="h-4 w-4 mr-2" />
                {t('parametres.advanced')}
              </TabsTrigger>
            </TabsList>

            <TabsContent value="profile" className="space-y-6">
              {/* Photo de profil */}
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Camera className="h-5 w-5" />
                    {t('profile.profilePhoto')}
                  </CardTitle>
                  <CardDescription>{t('profile.profilePhotoDesc')}</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="flex justify-center">
                    <ProfileAvatar size="xl" editable={true} />
                  </div>
                </CardContent>
              </Card>

              {/* Informations personnelles */}
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <UserCircle className="h-5 w-5" />
                    {t('profile.personalInfo')}
                    {profile?.profile_locked && (
                      <Lock className="h-4 w-4 text-muted-foreground ml-2" />
                    )}
                  </CardTitle>
                  <CardDescription>
                    {t('profile.personalInfoDesc')}
                    {profile?.profile_locked && (
                      <div className="text-amber-600 text-sm mt-1 flex items-center gap-1">
                        <Lock className="h-3 w-3" />
                        {t('profile.fieldsLocked')}
                      </div>
                    )}
                    {profile?.public_user_id != null && (
                      <div className="text-sm mt-1 flex items-center gap-2 text-muted-foreground">
                        <span>{t('profile.userId')}:</span>
                        <Badge variant="outline" className="font-mono">
                          {String(profile.public_user_id).padStart(14, '0')}
                        </Badge>
                      </div>
                    )}
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="space-y-2">
                      <Label htmlFor="firstName">{t('profile.firstName')} *</Label>
                      <Input
                        id="firstName"
                        value={(pendingUpdates.first_name as string) ?? profile?.first_name ?? ''}
                        onChange={(event) => handleProfileUpdate('first_name', event.target.value)}
                        placeholder={t('profile.firstNamePlaceholder')}
                        disabled={profile?.profile_locked}
                      />
                    </div>
                    <div className="space-y-2">
                      <Label htmlFor="lastName">{t('profile.lastName')} *</Label>
                      <Input
                        id="lastName"
                        value={(pendingUpdates.last_name as string) ?? profile?.last_name ?? ''}
                        onChange={(e) => handleProfileUpdate('last_name', e.target.value)}
                        placeholder={t('profile.lastNamePlaceholder')}
                        disabled={profile?.profile_locked}
                      />
                    </div>
                  </div>
                  
                  <div className="space-y-2">
                    <Label htmlFor="nickname">{t('profile.nickname')}</Label>
                    <Input
                      id="nickname"
                      value={(pendingUpdates.nickname as string) ?? profile?.nickname ?? ''}
                      onChange={(e) => handleProfileUpdate('nickname', e.target.value)}
                      placeholder={t('profile.nicknamePlaceholder')}
                    />
                    <p className="text-xs text-muted-foreground">{t('profile.nicknameDesc')}</p>
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="space-y-2">
                      <Label>{t('profile.gender')}</Label>
                      <Select 
                        value={(pendingUpdates.gender as string) ?? (profile?.gender || '')} 
                        onValueChange={(value) => handleProfileUpdate('gender', value)}
                        disabled={profile?.profile_locked}
                      >
                        <SelectTrigger>
                          <SelectValue placeholder={t('profile.selectGender')} />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="homme">{t('profile.homme')}</SelectItem>
                          <SelectItem value="femme">{t('profile.femme')}</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>

                    <div className="space-y-2">
                      <Label>{t('profile.dateOfBirth')}</Label>
                      <div className="flex gap-2">
                        <Select
                          value={dateOfBirth ? dateOfBirth.getDate().toString() : undefined}
                          onValueChange={(val) => {
                            const newDate = dateOfBirth ? new Date(dateOfBirth) : new Date(1990, 0, 1);
                            newDate.setDate(parseInt(val));
                            handleDateOfBirthChange(newDate);
                          }}
                        >
                          <SelectTrigger className="w-[80px]">
                            <SelectValue placeholder="Jour" />
                          </SelectTrigger>
                          <SelectContent className="max-h-[200px]">
                            {Array.from({ length: 31 }, (_, i) => i + 1).map((d) => (
                              <SelectItem key={d} value={d.toString()}>
                                {d}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>

                        <Select
                          value={dateOfBirth ? (dateOfBirth.getMonth() + 1).toString() : undefined}
                          onValueChange={(val) => {
                            const newDate = dateOfBirth ? new Date(dateOfBirth) : new Date(1990, 0, 1);
                            newDate.setMonth(parseInt(val) - 1);
                            handleDateOfBirthChange(newDate);
                          }}
                        >
                          <SelectTrigger className="flex-1">
                            <SelectValue placeholder="Mois" />
                          </SelectTrigger>
                          <SelectContent className="max-h-[200px]">
                            {['Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Décembre'].map((m, i) => (
                              <SelectItem key={i} value={(i + 1).toString()}>
                                {m}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>

                        <Select
                          value={dateOfBirth ? dateOfBirth.getFullYear().toString() : undefined}
                          onValueChange={(val) => {
                            const newDate = dateOfBirth ? new Date(dateOfBirth) : new Date(1990, 0, 1);
                            newDate.setFullYear(parseInt(val));
                            handleDateOfBirthChange(newDate);
                          }}
                        >
                          <SelectTrigger className="w-[100px]">
                            <SelectValue placeholder="Année" />
                          </SelectTrigger>
                          <SelectContent className="max-h-[200px]">
                            {Array.from({ length: 100 }, (_, i) => new Date().getFullYear() - i).map((y) => (
                              <SelectItem key={y} value={y.toString()}>
                                {y}
                              </SelectItem>
                            ))}
                          </SelectContent>
                        </Select>
                      </div>
                    </div>
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="profession">{t('profile.profession')}</Label>
                    <Input
                      id="profession"
                      value={(pendingUpdates.profession as string) ?? profile?.profession ?? ''}
                      onChange={(e) => handleProfileUpdate('profession', e.target.value)}
                      placeholder={t('profile.professionPlaceholder')}
                    />
                  </div>
                </CardContent>
              </Card>

              {/* Informations de contact */}
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Phone className="h-5 w-5" />
                    {t('profile.contactInfo')}
                  </CardTitle>
                  <CardDescription>{t('profile.contactInfoDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-2">
                    <Label htmlFor="phone">{t('profile.phone')} *</Label>
                    <Input
                      id="phone"
                      value={(pendingUpdates.phone as string) ?? profile?.phone ?? ''}
                      onChange={(e) => handleProfileUpdate('phone', e.target.value)}
                      placeholder={t('profile.phonePlaceholder')}
                      disabled={profile?.profile_locked}
                    />
                  </div>
                  
                  <div className="space-y-2">
                    <Label htmlFor="phoneSecondary">{t('profile.phoneSecondary')}</Label>
                    <Input
                      id="phoneSecondary"
                      value={(pendingUpdates.phone_secondary as string) ?? profile?.phone_secondary ?? ''}
                      onChange={(e) => handleProfileUpdate('phone_secondary', e.target.value)}
                      placeholder={t('profile.phoneSecondaryPlaceholder')}
                    />
                  </div>
                  
                  <div className="space-y-2">
                    <Label htmlFor="phoneTertiary">{t('profile.phoneTertiary')}</Label>
                    <Input
                      id="phoneTertiary"
                      value={(pendingUpdates.phone_tertiary as string) ?? profile?.phone_tertiary ?? ''}
                      onChange={(e) => handleProfileUpdate('phone_tertiary', e.target.value)}
                      placeholder={t('profile.phoneTertiaryPlaceholder')}
                    />
                  </div>
                </CardContent>
              </Card>

              {/* Informations de localisation */}
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <MapPin className="h-5 w-5" />
                    {t('profile.locationInfo')}
                  </CardTitle>
                  <CardDescription>{t('profile.locationInfoDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="space-y-2">
                    <Label htmlFor="address">{t('profile.address')}</Label>
                    <Input
                      id="address"
                      value={(pendingUpdates.address as string) ?? profile?.address ?? ''}
                      onChange={(e) => handleProfileUpdate('address', e.target.value)}
                      placeholder={t('profile.addressPlaceholder')}
                    />
                  </div>

                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="space-y-2">
                      <Label htmlFor="commune">{t('profile.commune')} *</Label>
                      <Input
                        id="commune"
                        value={(pendingUpdates.commune as string) ?? profile?.commune ?? ''}
                        onChange={(e) => handleProfileUpdate('commune', e.target.value)}
                        placeholder={t('profile.communePlaceholder')}
                      />
                    </div>

                    <div className="space-y-2">
                      <Label>{t('profile.wilaya')} *</Label>
                      <Select 
                        value={(pendingUpdates.wilaya as string) ?? (profile?.wilaya || '')} 
                        onValueChange={(value) => handleProfileUpdate('wilaya', value)}
                      >
                        <SelectTrigger>
                          <SelectValue placeholder={t('profile.wilayaPlaceholder')} />
                        </SelectTrigger>
                        <SelectContent>
                          {wilayas.map((wilaya) => (
                            <SelectItem key={wilaya.code} value={wilaya.name}>
                              {wilaya.code.toString().padStart(2, '0')} - {language === 'ar' ? (wilaya.name_ar || wilaya.name) : wilaya.name}
                            </SelectItem>
                          ))}
                        </SelectContent>
                      </Select>
                    </div>
                  </div>

                  <div className="space-y-2">
                    <Label htmlFor="country">{t('profile.country')}</Label>
                    <Select 
                      value={(pendingUpdates.country as string) ?? (profile?.country || 'Algeria')} 
                      onValueChange={(value) => handleProfileUpdate('country', value)}
                    >
                      <SelectTrigger>
                        <SelectValue placeholder={t('profile.countryPlaceholder')} />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="Algeria">Algérie</SelectItem>
                        <SelectItem value="Morocco">Maroc</SelectItem>
                        <SelectItem value="Tunisia">Tunisie</SelectItem>
                        <SelectItem value="France">France</SelectItem>
                        <SelectItem value="Canada">Canada</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>
                </CardContent>
              </Card>

              {/* Biographie */}
              <Card>
                <CardHeader>
                  <CardTitle>{t('profile.biography')}</CardTitle>
                  <CardDescription>{t('profile.biographyDesc')}</CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="space-y-2">
                    <Label htmlFor="bio">{t('profile.bio')}</Label>
                    <Textarea
                      id="bio"
                      value={(pendingUpdates.bio as string) ?? profile?.bio ?? ''}
                      onChange={(e) => handleProfileUpdate('bio', e.target.value)}
                      placeholder={t('profile.bioPlaceholder')}
                      className="min-h-[100px]"
                    />
                    <p className="text-xs text-muted-foreground">
                      {profile?.bio?.length || 0}/500 {t('profile.characters')}
                    </p>
                  </div>
                </CardContent>
              </Card>
            </TabsContent>

            <Card className="mt-6">
              <CardContent className="pt-6">
                <div className="flex justify-end gap-3">
                  <Button
                    variant="outline"
                    onClick={() => {
                      setPendingUpdates({});
                    }}
                  >
                    {t('profile.cancel')}
                  </Button>
                  <Button
                    variant="destructive"
                    disabled={Object.keys(pendingUpdates).length === 0}
                    onClick={async () => {
                      if (Object.keys(pendingUpdates).length === 0) return;
                      await updateProfile(pendingUpdates);
                      setPendingUpdates({});
                    }}
                  >
                    {t('profile.save')}
                  </Button>
                </div>
              </CardContent>
            </Card>

            
            <TabsContent value="notifications" className="space-y-6">
              <Card>
                <CardHeader>
                  <CardTitle>{t('parametres.notificationSettings')}</CardTitle>
                  <CardDescription>{t('parametres.notificationSettingsDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-6">
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.emailNotifications')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.emailNotificationsDesc')}</p>
                    </div>
                    <Switch
                      checked={settings.emailNotifications}
                      onCheckedChange={(checked) => handleSettingChange('emailNotifications', checked)}
                    />
                  </div>
                  <Separator />
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.smsNotifications')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.smsNotificationsDesc')}</p>
                    </div>
                    <Switch
                      checked={settings.smsNotifications}
                      onCheckedChange={(checked) => handleSettingChange('smsNotifications', checked)}
                    />
                  </div>
                  <Separator />
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.pushNotifications')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.pushNotificationsDesc')}</p>
                    </div>
                    <Switch
                      checked={settings.pushNotifications}
                      onCheckedChange={(checked) => handleSettingChange('pushNotifications', checked)}
                    />
                  </div>
                  <Separator />
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.marketingEmails')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.marketingEmailsDesc')}</p>
                    </div>
                    <Switch
                      checked={settings.marketingEmails}
                      onCheckedChange={(checked) => handleSettingChange('marketingEmails', checked)}
                    />
                  </div>
                </CardContent>
              </Card>
            </TabsContent>

            <TabsContent value="privacy" className="space-y-6">
              <Card>
                <CardHeader>
                  <CardTitle>{t('parametres.privacySettings')}</CardTitle>
                  <CardDescription>{t('parametres.privacySettingsDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-6">
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.profileVisible')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.profileVisibleDesc')}</p>
                    </div>
                    <Switch
                      checked={true}
                      disabled={true}
                    />
                  </div>
                  <Separator />
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.phoneVisible')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.phoneVisibleDesc')}</p>
                    </div>
                    <Switch
                      checked={true}
                      disabled={true}
                    />
                  </div>
                  <Separator />
                  <div className="flex items-center justify-between">
                    <div className="space-y-0.5">
                      <Label>{t('parametres.emailVisible')}</Label>
                      <p className="text-sm text-muted-foreground">{t('parametres.emailVisibleDesc')}</p>
                    </div>
                    <Switch
                      checked={true}
                      disabled={true}
                    />
                  </div>
                </CardContent>
              </Card>
            </TabsContent>

            <TabsContent value="preferences" className="space-y-6">
              <Card>
                <CardHeader>
                  <CardTitle>{t('parametres.generalPreferences')}</CardTitle>
                  <CardDescription>{t('parametres.generalPreferencesDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                    <div className="space-y-2">
                      <Label>{t('parametres.language')}</Label>
                      <Select value={settings.language} onValueChange={(value) => handleSettingChange('language', value)}>
                        <SelectTrigger>
                          <SelectValue />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="fr">Français</SelectItem>
                          <SelectItem value="ar">العربية</SelectItem>
                          <SelectItem value="en">English</SelectItem>
                          <SelectItem value="de">Deutsch</SelectItem>
                          <SelectItem value="es">Español</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                    <div className="space-y-2">
                      <Label>{t('parametres.currency')}</Label>
                      <Select value={settings.currency} onValueChange={(value) => handleSettingChange('currency', value)}>
                        <SelectTrigger>
                          <SelectValue />
                        </SelectTrigger>
                        <SelectContent>
                          <SelectItem value="DZD">Dinar Algérien (DZD)</SelectItem>
                          <SelectItem value="EUR">Euro (EUR)</SelectItem>
                          <SelectItem value="USD">Dollar US (USD)</SelectItem>
                        </SelectContent>
                      </Select>
                    </div>
                  </div>
                  <div className="space-y-2">
                    <Label>{t('parametres.searchRadius')}</Label>
                    <Select value={settings.searchRadius} onValueChange={(value) => handleSettingChange('searchRadius', value)}>
                      <SelectTrigger>
                        <SelectValue />
                      </SelectTrigger>
                      <SelectContent>
                        <SelectItem value="5">5 km</SelectItem>
                        <SelectItem value="10">10 km</SelectItem>
                        <SelectItem value="25">25 km</SelectItem>
                        <SelectItem value="50">50 km</SelectItem>
                        <SelectItem value="100">100 km</SelectItem>
                      </SelectContent>
                    </Select>
                  </div>
                </CardContent>
              </Card>
            </TabsContent>

            <TabsContent value="advanced" className="space-y-6">
              {/* Data Management */}
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Settings className="h-5 w-5 text-primary" />
                    {t('parametres.dataManagement')}
                  </CardTitle>
                  <CardDescription>{t('parametres.dataManagementDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-4">
                  <Button 
                    onClick={handleExportData} 
                    disabled={exportingData}
                    className="w-full"
                  >
                    {exportingData ? t('parametres.exporting') : t('parametres.export')}
                  </Button>
                  <p className="text-sm text-muted-foreground">
                    {t('parametres.exportDataDesc')}
                  </p>
                </CardContent>
              </Card>

              {/* Account Security */}
              <Card className="border-green-200 bg-green-50/50">
                <CardHeader>
                  <CardTitle className="flex items-center gap-2 text-green-700">
                    <Shield className="h-5 w-5" />
                    {t('parametres.accountSecurity')}
                  </CardTitle>
                  <CardDescription className="text-green-600">
                    {t('parametres.accountSecurityDesc')}
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="flex items-center gap-2 text-green-700 font-medium">
                    <Lock className="h-4 w-4" />
                    {t('parametres.protected')}
                  </div>
                </CardContent>
              </Card>

              {/* Platform Safety Info */}
              <Card>
                <CardHeader>
                  <CardTitle className="flex items-center gap-2">
                    <Shield className="h-5 w-5 text-primary" />
                    {t('parametres.platformSafety')}
                  </CardTitle>
                  <CardDescription>{t('parametres.platformSafetyDesc')}</CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  <h4 className="font-medium text-foreground">
                    {t('parametres.whyNoDelete')}
                  </h4>
                  <p className="text-sm text-muted-foreground leading-relaxed">
                    {t('parametres.whyNoDeleteDesc')}
                  </p>
                </CardContent>
              </Card>
            </TabsContent>
          </Tabs>
        </div>
      </div>
    </div>
  );
};

export default Parametres;
