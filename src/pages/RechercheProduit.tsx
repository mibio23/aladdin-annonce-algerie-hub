import React, { useState } from 'react';
import { Search, MapPin, DollarSign, Calendar, Tag, AlertCircle } from 'lucide-react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Badge } from '@/components/ui/badge';
import { useAuth } from '@/contexts/useAuth';
import { supabase } from '@/integrations/supabase/client';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { toast } from 'sonner';
import { useNavigate } from 'react-router-dom';
import { wilayas } from '@/data/wilayaData';
import { logger } from '@/utils/silentLogger';
import { useLanguageNavigation } from '@/hooks/useLanguageNavigation';

interface SearchRequest {
  title: string;
  description: string;
  category: string;
  budget_min: number;
  budget_max: number;
  wilaya: string;
  urgency: 'low' | 'medium' | 'high';
  expires_in_days: number;
}

const RechercheProduit: React.FC = () => {
  const { user } = useAuth();
  const { t, language } = useSafeI18nWithRouter();
  const navigate = useNavigate();
  const { getLocalizedPath } = useLanguageNavigation();
  const [loading, setLoading] = useState(false);
  const [formData, setFormData] = useState<SearchRequest>({
    title: '',
    description: '',
    category: '',
    budget_min: 0,
    budget_max: 0,
    wilaya: '',
    urgency: 'medium',
    expires_in_days: 30
  });

  const tr = (key: string, fallback: string | Record<string, string>) => {
    const value = t(key);
    if (value && value !== key) return value;
    if (typeof fallback === 'string') return fallback;
    return fallback[language] || fallback.fr || Object.values(fallback)[0] || key;
  };

  const text = {
    title: { fr: 'Recherche de produit', en: 'Product search', es: 'Búsqueda de producto', it: 'Ricerca prodotto', de: 'Produktsuche', ar: 'البحث عن منتج' },
    subtitle: { fr: 'Décrivez le produit que vous cherchez. Les vendeurs et boutiques pourront vous contacter directement.', en: 'Describe the product you are looking for. Sellers and shops will be able to contact you directly.', es: 'Describe el producto que buscas. Los vendedores y tiendas podrán contactarte directamente.', it: 'Descrivi il prodotto che stai cercando. Venditori e negozi potranno contattarti direttamente.', de: 'Beschreiben Sie das Produkt, das Sie suchen. Verkäufer und Shops können Sie direkt kontaktieren.', ar: 'صف المنتج الذي تبحث عنه. سيتمكن البائعون والمتاجر من التواصل معك مباشرة.' },
    howItWorks: { fr: 'Comment ça marche ?', en: 'How does it work?', es: '¿Cómo funciona?', it: 'Come funziona?', de: 'Wie funktioniert es?', ar: 'كيف يعمل؟' },
    step1: { fr: 'Décrivez précisément le produit recherché', en: 'Describe the product you are looking for precisely', es: 'Describe con precisión el producto que buscas', it: 'Descrivi con precisione il prodotto che cerchi', de: 'Beschreiben Sie das gesuchte Produkt genau', ar: 'صف المنتج المطلوب بدقة' },
    step2: { fr: 'Les vendeurs intéressés pourront vous contacter', en: 'Interested sellers will be able to contact you', es: 'Los vendedores interesados podrán contactarte', it: 'I venditori interessati potranno contattarti', de: 'Interessierte Verkäufer können Sie kontaktieren', ar: 'سيتمكن البائعون المهتمون من التواصل معك' },
    step3: { fr: 'Comparez les offres et choisissez la meilleure', en: 'Compare offers and choose the best one', es: 'Compara las ofertas y elige la mejor', it: 'Confronta le offerte e scegli la migliore', de: 'Vergleichen Sie Angebote und wählen Sie das beste', ar: 'قارن العروض واختر الأفضل' },
    productInfo: { fr: 'Informations du produit recherché', en: 'Requested product information', es: 'Información del producto buscado', it: 'Informazioni sul prodotto richiesto', de: 'Informationen zum gesuchten Produkt', ar: 'معلومات المنتج المطلوب' },
    productTitle: { fr: 'Nom du produit', en: 'Product name', es: 'Nombre del producto', it: 'Nome del prodotto', de: 'Produktname', ar: 'اسم المنتج' },
    titlePlaceholder: { fr: 'Ex : iPhone 15 Pro, vélo électrique, climatiseur...', en: 'Ex: iPhone 15 Pro, electric bike, air conditioner...', es: 'Ej: iPhone 15 Pro, bicicleta eléctrica, aire acondicionado...', it: 'Es: iPhone 15 Pro, bici elettrica, condizionatore...', de: 'Z. B. iPhone 15 Pro, E-Bike, Klimaanlage...', ar: 'مثال: iPhone 15 Pro، دراجة كهربائية، مكيف...' },
    category: { fr: 'Catégorie', en: 'Category', es: 'Categoría', it: 'Categoria', de: 'Kategorie', ar: 'الفئة' },
    selectCategory: { fr: 'Sélectionner une catégorie', en: 'Select a category', es: 'Selecciona una categoría', it: 'Seleziona una categoria', de: 'Kategorie auswählen', ar: 'اختر فئة' },
    description: { fr: 'Description détaillée', en: 'Detailed description', es: 'Descripción detallada', it: 'Descrizione dettagliata', de: 'Detaillierte Beschreibung', ar: 'وصف مفصل' },
    descriptionPlaceholder: { fr: 'Précisez la marque, le modèle, l’état, les caractéristiques souhaitées et tout détail utile...', en: 'Specify the brand, model, condition, desired features and any useful detail...', es: 'Indica la marca, el modelo, el estado, las características deseadas y cualquier detalle útil...', it: 'Indica marca, modello, stato, caratteristiche desiderate e ogni dettaglio utile...', de: 'Geben Sie Marke, Modell, Zustand, gewünschte Merkmale und alle nützlichen Details an...', ar: 'حدد العلامة التجارية والطراز والحالة والمواصفات المطلوبة وأي تفاصيل مفيدة...' },
    budget: { fr: 'Budget et localisation', en: 'Budget and location', es: 'Presupuesto y ubicación', it: 'Budget e località', de: 'Budget und Standort', ar: 'الميزانية والموقع' },
    budgetMin: { fr: 'Budget minimum (DZD)', en: 'Minimum budget (DZD)', es: 'Presupuesto mínimo (DZD)', it: 'Budget minimo (DZD)', de: 'Mindestbudget (DZD)', ar: 'الحد الأدنى للميزانية (دج)' },
    budgetMax: { fr: 'Budget maximum (DZD)', en: 'Maximum budget (DZD)', es: 'Presupuesto máximo (DZD)', it: 'Budget massimo (DZD)', de: 'Maximalbudget (DZD)', ar: 'الحد الأقصى للميزانية (دج)' },
    wilaya: { fr: 'Wilaya', en: 'Wilaya', es: 'Wilaya', it: 'Wilaya', de: 'Wilaya', ar: 'الولاية' },
    selectWilaya: { fr: 'Sélectionner une wilaya', en: 'Select a wilaya', es: 'Selecciona una wilaya', it: 'Seleziona una wilaya', de: 'Wilaya auswählen', ar: 'اختر ولاية' },
    urgencyAndDuration: { fr: 'Urgence et durée', en: 'Urgency and duration', es: 'Urgencia y duración', it: 'Urgenza e durata', de: 'Dringlichkeit und Dauer', ar: 'الاستعجال والمدة' },
    urgency: { fr: 'Niveau d’urgence', en: 'Urgency level', es: 'Nivel de urgencia', it: 'Livello di urgenza', de: 'Dringlichkeitsstufe', ar: 'مستوى الاستعجال' },
    validityPeriod: { fr: 'Durée de validité', en: 'Validity period', es: 'Período de validez', it: 'Periodo di validità', de: 'Gültigkeitsdauer', ar: 'مدة الصلاحية' },
    validityHelp: { fr: 'Après cette période, votre recherche sera automatiquement désactivée.', en: 'After this period, your request will be automatically deactivated.', es: 'Después de este período, tu solicitud se desactivará automáticamente.', it: 'Dopo questo periodo, la tua richiesta verrà disattivata automaticamente.', de: 'Nach diesem Zeitraum wird Ihre Anfrage automatisch deaktiviert.', ar: 'بعد هذه المدة سيتم تعطيل طلبك تلقائياً.' },
    publish: { fr: 'Publier ma recherche', en: 'Publish my request', es: 'Publicar mi búsqueda', it: 'Pubblica la mia richiesta', de: 'Meine Suche veröffentlichen', ar: 'نشر طلبي' },
    fillRequired: { fr: 'Veuillez remplir tous les champs obligatoires', en: 'Please fill in all required fields', es: 'Por favor completa todos los campos obligatorios', it: 'Compila tutti i campi obbligatori', de: 'Bitte füllen Sie alle Pflichtfelder aus', ar: 'يرجى ملء جميع الحقول المطلوبة' },
    created: { fr: 'Votre recherche a été publiée', en: 'Your request has been published', es: 'Tu búsqueda ha sido publicada', it: 'La tua richiesta è stata pubblicata', de: 'Ihre Suche wurde veröffentlicht', ar: 'تم نشر طلبك' },
    error: { fr: 'Erreur lors de la création de la recherche', en: 'Error creating the request', es: 'Error al crear la búsqueda', it: 'Errore durante la creazione della richiesta', de: 'Fehler beim Erstellen der Suche', ar: 'حدث خطأ أثناء إنشاء الطلب' },
  } as const;

  const categoryOptions = [
    { key: 'electronics', labels: { fr: 'Électronique', en: 'Electronics', es: 'Electrónica', it: 'Elettronica', de: 'Elektronik', ar: 'إلكترونيات' } },
    { key: 'fashion', labels: { fr: 'Mode & Vêtements', en: 'Fashion & Clothing', es: 'Moda y ropa', it: 'Moda e abbigliamento', de: 'Mode & Kleidung', ar: 'موضة وملابس' } },
    { key: 'home_garden', labels: { fr: 'Maison & Jardin', en: 'Home & Garden', es: 'Hogar y jardín', it: 'Casa e giardino', de: 'Haus & Garten', ar: 'المنزل والحديقة' } },
    { key: 'automotive', labels: { fr: 'Automobile', en: 'Automotive', es: 'Automoción', it: 'Automobile', de: 'Auto', ar: 'سيارات' } },
    { key: 'real_estate', labels: { fr: 'Immobilier', en: 'Real Estate', es: 'Inmobiliaria', it: 'Immobiliare', de: 'Immobilien', ar: 'عقار' } },
    { key: 'jobs', labels: { fr: 'Emploi & Carrière', en: 'Jobs & Career', es: 'Empleo y carrera', it: 'Lavoro e carriera', de: 'Beruf & Karriere', ar: 'وظائف ومسار مهني' } },
    { key: 'leisure', labels: { fr: 'Loisirs & Divertissement', en: 'Leisure & Entertainment', es: 'Ocio y entretenimiento', it: 'Tempo libero e intrattenimento', de: 'Freizeit & Unterhaltung', ar: 'ترفيه وهوايات' } },
    { key: 'pets', labels: { fr: 'Animaux', en: 'Pets', es: 'Mascotas', it: 'Animali', de: 'Haustiere', ar: 'حيوانات' } },
    { key: 'pro_equipment', labels: { fr: 'Équipement professionnel', en: 'Professional equipment', es: 'Equipo profesional', it: 'Attrezzatura professionale', de: 'Professionelle Ausrüstung', ar: 'معدات مهنية' } },
    { key: 'beauty_health', labels: { fr: 'Santé & Beauté', en: 'Health & Beauty', es: 'Salud y belleza', it: 'Salute e bellezza', de: 'Gesundheit & Schönheit', ar: 'الصحة والجمال' } },
    { key: 'sport_fitness', labels: { fr: 'Sport & Fitness', en: 'Sport & Fitness', es: 'Deporte y fitness', it: 'Sport e fitness', de: 'Sport & Fitness', ar: 'رياضة ولياقة' } },
    { key: 'books_education', labels: { fr: 'Livres & Éducation', en: 'Books & Education', es: 'Libros y educación', it: 'Libri e istruzione', de: 'Bücher & Bildung', ar: 'كتب وتعليم' } },
    { key: 'food', labels: { fr: 'Alimentation', en: 'Food', es: 'Alimentación', it: 'Alimentazione', de: 'Lebensmittel', ar: 'مواد غذائية' } },
    { key: 'other', labels: { fr: 'Autres', en: 'Others', es: 'Otros', it: 'Altro', de: 'Andere', ar: 'أخرى' } },
  ] as const;

  const localizedWilayaName = (wilaya: typeof wilayas[number]) =>
    language === 'ar' ? (wilaya.name_ar || wilaya.name_fr || wilaya.name) : (wilaya.name_fr || wilaya.name);
  const handleInputChange = (field: keyof SearchRequest, value: string | number) => {
    setFormData(prev => ({
      ...prev,
      [field]: value
    }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!user) {
      toast(t('auth.loginRequired'), { description: t('auth.loginRequiredDesc') });
      navigate(getLocalizedPath('/connexion'));
      return;
    }

    if (!formData.title.trim() || !formData.description.trim()) {
      toast.error(text.fillRequired[language as keyof typeof text.fillRequired] || text.fillRequired.fr);
      return;
    }

    setLoading(true);
    try {
      const expiresAt = new Date();
      expiresAt.setDate(expiresAt.getDate() + formData.expires_in_days);

      const { data, error } = await supabase
        .from('advertising_banners')
        .insert([{
          created_by: user.id,
          title: formData.title,
          description: formData.description,
          button_text: tr('common.contact', {
            fr: 'Contacter',
            en: 'Contact',
            es: 'Contactar',
            it: 'Contatta',
            de: 'Kontakt',
            ar: 'اتصل',
          }),
          is_active: true,
          end_at: expiresAt.toISOString()
        }])
        .select('id')
        .single();

      if (error) throw error;

      if (data?.id) {
        const titleByLanguage: Record<string, string> = {
          fr: formData.title,
          en: formData.title,
          es: formData.title,
          it: formData.title,
          de: formData.title,
          ar: formData.title,
        };

        const buttonTextByLanguage: Record<string, string> = {
          fr: 'Contacter',
          en: 'Contact',
          es: 'Contactar',
          it: 'Contatta',
          de: 'Kontakt',
          ar: 'اتصل',
        };

        const translationRows = Object.entries(titleByLanguage).map(([languageCode, translatedTitle]) => ({
          banner_id: data.id,
          language_code: languageCode,
          title: translatedTitle,
          description: formData.description,
          button_text: buttonTextByLanguage[languageCode] || buttonTextByLanguage.fr,
          subtitle: categoryOptions.find((category) => category.key === formData.category)?.labels[languageCode as keyof typeof categoryOptions[number]['labels']] || null,
        }));

        const { error: translationError } = await supabase
          .from('advertising_banner_translations')
          .insert(translationRows);

        if (translationError) {
          logger.error('Error creating banner translations:', translationError);
        }
      }

      toast.success(text.created[language as keyof typeof text.created] || text.created.fr);
      navigate(getLocalizedPath('/mes-annonces'));
    } catch (error) {
      logger.error('Error creating search request:', error);
      toast.error(text.error[language as keyof typeof text.error] || text.error.fr);
    } finally {
      setLoading(false);
    }
  };

  const getUrgencyColor = (urgency: string) => {
    switch (urgency) {
      case 'high': return 'destructive';
      case 'medium': return 'secondary';
      case 'low': return 'outline';
      default: return 'secondary';
    }
  };

  const getUrgencyLabel = (urgency: string) => {
    switch (urgency) {
      case 'high': return t('searchRequest.urgentHigh');
      case 'medium': return t('searchRequest.urgentMedium');
      case 'low': return t('searchRequest.urgentLow');
      default: return t('searchRequest.urgentMedium');
    }
  };

  return (
    <div className="container mx-auto p-6 max-w-4xl">
      <div className="space-y-6">
        {/* Header */}
        <div className="text-center space-y-2">
          <div className="flex items-center justify-center space-x-2 mb-4">
            <Search className="h-8 w-8 text-primary" />
            <h1 className="text-3xl font-bold tracking-tight">
              {text.title[language as keyof typeof text.title] || text.title.fr}
            </h1>
          </div>
          <p className="text-muted-foreground max-w-2xl mx-auto">
            {text.subtitle[language as keyof typeof text.subtitle] || text.subtitle.fr}
          </p>
        </div>

        {/* Info Alert */}
        <Card className="border-blue-200 bg-blue-50/50 dark:bg-blue-950/20">
          <CardContent className="p-4">
            <div className="flex items-start space-x-3">
              <AlertCircle className="h-5 w-5 text-blue-600 mt-0.5" />
              <div className="text-sm text-blue-800 dark:text-blue-200">
                <p className="font-medium mb-1">
                  {text.howItWorks[language as keyof typeof text.howItWorks] || text.howItWorks.fr}
                </p>
                <ul className="space-y-1 text-xs">
                  <li>• {text.step1[language as keyof typeof text.step1] || text.step1.fr}</li>
                  <li>• {text.step2[language as keyof typeof text.step2] || text.step2.fr}</li>
                  <li>• {text.step3[language as keyof typeof text.step3] || text.step3.fr}</li>
                </ul>
              </div>
            </div>
          </CardContent>
        </Card>

        {/* Form */}
        <form onSubmit={handleSubmit} className="space-y-6">
          <Card>
            <CardHeader>
              <CardTitle className="flex items-center space-x-2">
                <Tag className="h-5 w-5" />
                <span>{text.productInfo[language as keyof typeof text.productInfo] || text.productInfo.fr}</span>
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              <div>
                <label className="text-sm font-medium mb-2 block">
                  {text.productTitle[language as keyof typeof text.productTitle] || text.productTitle.fr} *
                </label>
                <Input
                  placeholder={text.titlePlaceholder[language as keyof typeof text.titlePlaceholder] || text.titlePlaceholder.fr}
                  value={formData.title}
                  onChange={(e) => handleInputChange('title', e.target.value)}
                  className="w-full"
                />
              </div>

              <div>
                <label className="text-sm font-medium mb-2 block">
                  {text.category[language as keyof typeof text.category] || text.category.fr}
                </label>
                <Select 
                  value={formData.category} 
                  onValueChange={(value) => handleInputChange('category', value)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder={text.selectCategory[language as keyof typeof text.selectCategory] || text.selectCategory.fr} />
                  </SelectTrigger>
                  <SelectContent>
                    {categories.map((category) => (
                      <SelectItem key={category.key} value={category.key}>
                        {category.labels[language as keyof typeof category.labels] || category.labels.fr}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>

              <div>
                <label className="text-sm font-medium mb-2 block">
                  {text.description[language as keyof typeof text.description] || text.description.fr} *
                </label>
                <Textarea
                  placeholder={text.descriptionPlaceholder[language as keyof typeof text.descriptionPlaceholder] || text.descriptionPlaceholder.fr}
                  value={formData.description}
                  onChange={(e) => handleInputChange('description', e.target.value)}
                  rows={4}
                  className="w-full"
                />
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle className="flex items-center space-x-2">
                <DollarSign className="h-5 w-5" />
                <span>{text.budget[language as keyof typeof text.budget] || text.budget.fr}</span>
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <label className="text-sm font-medium mb-2 block">
                    {text.budgetMin[language as keyof typeof text.budgetMin] || text.budgetMin.fr}
                  </label>
                  <Input
                    type="number"
                    placeholder="0"
                    value={formData.budget_min || ''}
                    onChange={(e) => handleInputChange('budget_min', parseInt(e.target.value) || 0)}
                  />
                </div>
                <div>
                  <label className="text-sm font-medium mb-2 block">
                    {text.budgetMax[language as keyof typeof text.budgetMax] || text.budgetMax.fr}
                  </label>
                  <Input
                    type="number"
                    placeholder="0"
                    value={formData.budget_max || ''}
                    onChange={(e) => handleInputChange('budget_max', parseInt(e.target.value) || 0)}
                  />
                </div>
              </div>

              <div>
                <label className="text-sm font-medium mb-2 block">
                  <MapPin className="h-4 w-4 inline mr-1" />
                  {text.wilaya[language as keyof typeof text.wilaya] || text.wilaya.fr}
                </label>
                <Select 
                  value={formData.wilaya} 
                  onValueChange={(value) => handleInputChange('wilaya', value)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder={text.selectWilaya[language as keyof typeof text.selectWilaya] || text.selectWilaya.fr} />
                  </SelectTrigger>
                  <SelectContent>
                    {wilayas.map((wilaya) => (
                      <SelectItem key={wilaya.code} value={wilaya.name_fr || wilaya.name}>
                        {wilaya.code.toString().padStart(2, '0')} - {localizedWilayaName(wilaya)}
                      </SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
            </CardContent>
          </Card>

          <Card>
            <CardHeader>
              <CardTitle className="flex items-center space-x-2">
                <Calendar className="h-5 w-5" />
                <span>{text.urgencyAndDuration[language as keyof typeof text.urgencyAndDuration] || text.urgencyAndDuration.fr}</span>
              </CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              <div>
                <label className="text-sm font-medium mb-2 block">
                  {text.urgency[language as keyof typeof text.urgency] || text.urgency.fr}
                </label>
                <div className="flex space-x-2">
                  {(['low', 'medium', 'high'] as const).map((level) => (
                    <button
                      key={level}
                      type="button"
                      onClick={() => handleInputChange('urgency', level)}
                      className="flex-1"
                    >
                      <Badge 
                        variant={formData.urgency === level ? getUrgencyColor(level) : 'outline'}
                        className="w-full py-2 cursor-pointer hover:bg-opacity-80"
                      >
                        {getUrgencyLabel(level)}
                      </Badge>
                    </button>
                  ))}
                </div>
              </div>

              <div>
                <label className="text-sm font-medium mb-2 block">
                  {text.validityPeriod[language as keyof typeof text.validityPeriod] || text.validityPeriod.fr}
                </label>
                <Select 
                  value={formData.expires_in_days.toString()} 
                  onValueChange={(value) => handleInputChange('expires_in_days', parseInt(value))}
                >
                  <SelectTrigger>
                    <SelectValue />
                  </SelectTrigger>
                  <SelectContent>
                    <SelectItem value="7">{t('searchRequest.days7')}</SelectItem>
                    <SelectItem value="15">{t('searchRequest.days15')}</SelectItem>
                    <SelectItem value="30">{t('searchRequest.days30')}</SelectItem>
                    <SelectItem value="60">{t('searchRequest.days60')}</SelectItem>
                    <SelectItem value="90">{t('searchRequest.days90')}</SelectItem>
                  </SelectContent>
                </Select>
                <p className="text-xs text-muted-foreground mt-1">
                  {text.validityHelp[language as keyof typeof text.validityHelp] || text.validityHelp.fr}
                </p>
              </div>
            </CardContent>
          </Card>

          {/* Submit Button */}
          <div className="flex justify-center">
            <Button 
              type="submit" 
              size="lg" 
              disabled={loading}
              className="px-8"
            >
              {loading ? (
                <>
                  <div className="animate-spin rounded-full h-4 w-4 border-b-2 border-white mr-2" />
                  {t('common.loading')}
                </>
              ) : (
                <>
                  <Search className="h-4 w-4 mr-2" />
                  {text.publish[language as keyof typeof text.publish] || text.publish.fr}
                </>
              )}
            </Button>
          </div>
        </form>
      </div>
    </div>
  );
};

export default RechercheProduit;
