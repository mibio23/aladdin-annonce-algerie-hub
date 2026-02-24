import React, { useState } from 'react';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Label } from '@/components/ui/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Badge } from '@/components/ui/badge';
import { Checkbox } from '@/components/ui/checkbox';
import { 
  Upload, 
  X, 
  MapPin, 
  Phone, 
  Mail,
  Loader2
} from 'lucide-react';
import { CreateAnnouncementData } from '@/hooks/useAnnouncements';
import { useAnnouncements } from '@/hooks/useAnnouncements';
import { useGeolocation } from '@/hooks/useGeolocation';
import { useCategories } from '@/services/supabaseCategoriesService';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { cn } from '@/lib/utils';
import { wilayas } from '@/data/wilayaData';
import { logger } from '@/utils/silentLogger';
import { compressImage } from '@/utils/mediaCompression';

interface AnnouncementFormProps {
  onSuccess?: () => void;
  onCancel?: () => void;
  className?: string;
}

const CONDITIONS = [
  { value: 'new', label: 'Neuf' },
  { value: 'like_new', label: 'Comme neuf' },
  { value: 'good', label: 'Bon état' },
  { value: 'fair', label: 'État correct' },
  { value: 'poor', label: 'À rénover' },
] as const;

const AnnouncementForm: React.FC<AnnouncementFormProps> = ({
  onSuccess,
  onCancel,
  className
}) => {
  const { t, language } = useSafeI18nWithRouter();
  const { createAnnouncement, creating } = useAnnouncements();
  const { searchLocation } = useGeolocation();
  
  const [formData, setFormData] = useState<CreateAnnouncementData>({
    title: '',
    description: '',
    price: 0,
    category_id: '',
    condition: 'good',
    images: [],
    location: '',
    wilaya: '',
    phone: '',
    email: '',
    is_urgent: false,
    is_negotiable: false,
    currency: 'DZD',
    attributes: {},
  });

  const [selectedImages, setSelectedImages] = useState<File[]>([]);
  const [imagePreviewUrls, setImagePreviewUrls] = useState<string[]>([]);
  const [locationSearch, setLocationSearch] = useState('');
  const [locationResults, setLocationResults] = useState<any[]>([]);

  // Utiliser le hook useCategories pour récupérer les catégories
  const { data: categoryMenu = [], isLoading: categoriesLoading } = useCategories(language);

  // States pour la gestion hiérarchique des catégories
  const [selectedRootCategoryId, setSelectedRootCategoryId] = useState<string>('');
  const [selectedSubCategoryId, setSelectedSubCategoryId] = useState<string>('');

  // Retrouver les objets catégories complets
  const currentRootCategory = categoryMenu.find(c => c.id === selectedRootCategoryId);
  const currentSubCategory = currentRootCategory?.subcategories?.find(s => s.id === selectedSubCategoryId);
  
  // La catégorie active est la sous-catégorie si sélectionnée, sinon la catégorie racine
  // Cela permet d'afficher les attributs spécifiques de la sous-catégorie
  const currentCategory = currentSubCategory || currentRootCategory;

  const handleInputChange = (field: keyof CreateAnnouncementData, value: any) => {
    setFormData(prev => ({
      ...prev,
      [field]: value
    }));
  };

  // Gestion du changement de catégorie racine
  const handleRootCategoryChange = (categoryId: string) => {
    setSelectedRootCategoryId(categoryId);
    setSelectedSubCategoryId(''); // Réinitialiser la sous-catégorie
    
    const category = categoryMenu.find(c => c.id === categoryId);
    
    // Si la catégorie n'a pas de sous-catégories, on la sélectionne directement
    if (!category?.subcategories || category.subcategories.length === 0) {
      handleInputChange('category_id', categoryId);
    } else {
      // Sinon on attend la sélection de la sous-catégorie
      handleInputChange('category_id', '');
    }
    
    // Réinitialiser les attributs car ils dépendent de la catégorie
    setFormData(prev => ({ ...prev, attributes: {} }));
  };

  // Gestion du changement de sous-catégorie
  const handleSubCategoryChange = (subCategoryId: string) => {
    setSelectedSubCategoryId(subCategoryId);
    handleInputChange('category_id', subCategoryId);
    // Réinitialiser les attributs lors du changement de sous-catégorie
    setFormData(prev => ({ ...prev, attributes: {} }));
  };


  const handleImageUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const files = Array.from(e.target.files || []);
    if (files.length + selectedImages.length > 8) {
      alert(t('createAd.images'));
      return;
    }

    const compressedFiles = await Promise.all(
      files.map(async (file) => {
        try {
          return await compressImage(file);
        } catch (err) {
          logger.error('Erreur compression image:', err);
          return file;
        }
      })
    );

    const newImages = [...selectedImages, ...compressedFiles];
    setSelectedImages(newImages);
    
    // Créer les URLs de prévisualisation
    const newUrls = compressedFiles.map(file => URL.createObjectURL(file));
    setImagePreviewUrls(prev => [...prev, ...newUrls]);
    
    handleInputChange('images', newImages);
  };

  const handleAttributeChange = (key: string, value: any) => {
    setFormData(prev => ({
      ...prev,
      attributes: {
        ...prev.attributes,
        [key]: value
      }
    }));
  };

  const handleMultiSelectAttribute = (key: string, value: string, isChecked: boolean) => {
    setFormData(prev => {
      const currentValues = (prev.attributes?.[key] as string[]) || [];
      let newValues;
      if (isChecked) {
        newValues = [...currentValues, value];
      } else {
        newValues = currentValues.filter(v => v !== value);
      }
      return {
        ...prev,
        attributes: {
          ...prev.attributes,
          [key]: newValues
        }
      };
    });
  };

  const removeImage = (index: number) => {
    const newImages = selectedImages.filter((_, i) => i !== index);
    const newUrls = imagePreviewUrls.filter((_, i) => i !== index);
    
    // Révoquer l'URL de l'objet pour éviter les fuites mémoire
    URL.revokeObjectURL(imagePreviewUrls[index]);
    
    setSelectedImages(newImages);
    setImagePreviewUrls(newUrls);
    handleInputChange('images', newImages);
  };

  const searchLocationHandler = async (query: string) => {
    if (query.length > 2) {
      try {
        const results = await searchLocation(query);
        setLocationResults(results);
      } catch (error) {
        logger.error('Error searching location:', error);
      }
    } else {
      setLocationResults([]);
    }
  };

  const selectLocation = (location: any) => {
    handleInputChange('location', location.display_name);
    setLocationSearch(location.display_name);
    setLocationResults([]);
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    console.log('🚨 HANDLESUBMIT DÉCLENCHÉ - FormData:', formData);
    
    if (!formData.title.trim() || !formData.description.trim()) {
      alert('Veuillez remplir tous les champs obligatoires');
      return;
    }
    
    if (!formData.wilaya) {
      alert(t('createAd.selectWilaya') || 'Veuillez sélectionner une wilaya');
      return;
    }

    if (selectedImages.length === 0) {
      alert('Veuillez ajouter au moins une image');
      return;
    }

    const result = await createAnnouncement(formData);
    
    if (result) {
      // Nettoyer les URLs de prévisualisation
      imagePreviewUrls.forEach(url => URL.revokeObjectURL(url));
      onSuccess?.();
    }
  };

  return (
    <form onSubmit={handleSubmit} className={cn("space-y-6", className)}>
      {/* MESSAGE D'IDENTIFICATION DU FORMULAIRE */}
      <div style={{
        backgroundColor: '#f0f0f0',
        color: '#333',
        fontSize: '14px',
        padding: '10px',
        textAlign: 'center',
        border: '1px solid #ccc',
        marginBottom: '10px',
        fontFamily: 'monospace'
      }}>
        FORMULAIRE MODIFIÉ PAR TRAE - VERSION IDENTIFIÉE
      </div>
      {/* Styles simples */}
      {/* Informations de base */}
      <Card>
        <CardHeader>
          <CardTitle style={{color: '#FF6B35', fontWeight: 'bold', fontSize: '1.5rem'}}>{t('createAd.productDetails')}</CardTitle>
          <CardDescription>
            {t('createAd.subtitle')}
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div>
            <Label htmlFor="title">{t('createAd.titlePlaceholder')} *</Label>
            <Input
              id="title"
              name="title"
              autoComplete="off"
              value={formData.title}
              onChange={(e) => handleInputChange('title', e.target.value)}
              placeholder={t('createAd.titlePlaceholder')}
              maxLength={100}
              required
            />
          </div>

          <div>
            <Label htmlFor="description">{t('createAd.description')} *</Label>
            <Textarea
              id="description"
              name="description"
              autoComplete="off"
              value={formData.description}
              onChange={(e) => handleInputChange('description', e.target.value)}
              placeholder={t('createAd.descriptionPlaceholder')}
              rows={4}
              maxLength={2000}
              required
            />
          </div>

          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              {/* MESSAGE SIMPLE D'IDENTIFICATION */}
              <div style={{
                backgroundColor: '#e8f4f8', 
                color: '#2c5282', 
                fontSize: '12px', 
                padding: '5px', 
                marginBottom: '5px',
                textAlign: 'left',
                border: '1px solid #bee3f8'
              }}>
                Section prix - Formulaire modifié par TRAE
              </div>
              <Label htmlFor="price">{t('createAd.price')} (DZD) *</Label>
              <div className="space-y-2">
                <Input
                  id="price"
              name="price"
              type="number"
              autoComplete="off"
              value={formData.price || ''}
              onChange={(e) => handleInputChange('price', parseFloat(e.target.value) || 0)}
              placeholder="0"
              min="0"
              disabled={formData.is_negotiable}
              required={!formData.is_negotiable}
                />
                {/* Case à cocher Prix à négocier */}
                <div className="flex items-center space-x-2 mt-2">
                    {/* Checkbox HTML simple et visible */}
                    <input
                      type="checkbox"
                      id="negotiable-native"
                      name="negotiable-native"
                      checked={formData.is_negotiable || false}
                      onChange={(e) => {
                        const isNegotiable = e.target.checked;
                        console.log('Native checkbox changed to:', isNegotiable);
                        handleInputChange('is_negotiable', isNegotiable);
                        if (isNegotiable) {
                          handleInputChange('price', 0);
                        }
                      }}
                    />
                    
                    {/* Checkbox React - alternative */}
                    <div style={{display: 'none'}}>
                      <Checkbox
                        id="negotiable"
                        name="negotiable"
                        checked={formData.is_negotiable || false}
                        onCheckedChange={(checked) => {
                          const isNegotiable = checked === true;
                          console.log('Checkbox changed to:', isNegotiable);
                          handleInputChange('is_negotiable', isNegotiable);
                          if (isNegotiable) {
                            handleInputChange('price', 0);
                          }
                        }}
                        style={{width: '20px', height: '20px', border: '3px solid blue', backgroundColor: 'white'}}
                        className="forced-checkbox"
                      />
                    </div>
                    
                    <Label htmlFor="negotiable-native" className="text-sm font-normal cursor-pointer">
                      {t('createAd.priceNegotiable') || 'Prix à négocier'}
                    </Label>
                  </div>
              </div>
            </div>

            <div>
              <Label htmlFor="condition">{t('createAd.condition')}</Label>
              <Select value={formData.condition} onValueChange={(value) => handleInputChange('condition', value)}>
                <SelectTrigger id="condition">
                  <SelectValue />
                </SelectTrigger>
                <SelectContent>
                  {CONDITIONS.map((condition) => (
                    <SelectItem key={condition.value} value={condition.value}>
                      {condition.label}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
          </div>

          <div className="flex items-center space-x-2">
            <Checkbox
              id="urgent"
              checked={formData.is_urgent || false}
              onCheckedChange={(checked) => handleInputChange('is_urgent', checked === true)}
            />
            <Label htmlFor="urgent" className="cursor-pointer">Annonce urgente</Label>
          </div>
        </CardContent>
      </Card>

      {/* Catégories */}
      <Card>
        <CardHeader>
          <CardTitle>{t('createAd.category')}</CardTitle>
          <CardDescription>
            {t('createAd.selectCategory')}
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div>
            <Label htmlFor="category">{t('createAd.category')} *</Label>
            <Select value={selectedRootCategoryId} onValueChange={handleRootCategoryChange}>
              <SelectTrigger id="category">
                <SelectValue placeholder={t('createAd.selectCategory')} />
              </SelectTrigger>
              <SelectContent>
                {categoriesLoading ? (
                  <SelectItem value="" disabled>
                    Chargement des catégories...
                  </SelectItem>
                ) : (
                  categoryMenu.map((category) => (
                    <SelectItem key={category.id} value={category.id}>
                      {category.slug === 'education-loisirs' ? t('categories.education-loisirs') : category.name}
                    </SelectItem>
                  ))
                )}
              </SelectContent>
            </Select>
          </div>

          {/* Sous-catégories */}
          {selectedRootCategoryId && currentRootCategory?.subcategories && currentRootCategory.subcategories.length > 0 && (
            <div>
              <Label htmlFor="subcategory">Sous-catégorie</Label>
              <Select value={selectedSubCategoryId} onValueChange={handleSubCategoryChange}>
                <SelectTrigger id="subcategory">
                  <SelectValue placeholder="Sélectionner une sous-catégorie" />
                </SelectTrigger>
                <SelectContent>
                  {currentRootCategory.subcategories.map((subcategory) => (
                    <SelectItem key={subcategory.id} value={subcategory.id}>
                      {subcategory.name}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </div>
          )}
        </CardContent>
      </Card>

      {/* Dynamic Attributes based on Category */}
      {currentCategory?.attributes && Object.keys(currentCategory.attributes).length > 0 && (
        <Card>
          <CardHeader>
            <CardTitle>{t('search.specificCriteria') || 'Critères spécifiques'}</CardTitle>
            <CardDescription>
              {t('createAd.specificCriteriaSubtitle') || 'Précisez les détails de votre produit'}
            </CardDescription>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {Object.entries(currentCategory.attributes).map(([key, options]) => (
                <div key={key} className="space-y-2">
                  <Label>{key}</Label>
                  {key === "Spécificités & Commodités" && options && options.length > 0 ? (
                    <div className="grid grid-cols-2 gap-2 border p-3 rounded-md">
                      {options.map(opt => {
                        const currentValues = (formData.attributes?.[key] as string[]) || [];
                        const isChecked = currentValues.includes(opt);
                        return (
                          <div key={opt} className="flex items-center space-x-2">
                            <Checkbox 
                              id={`attr-${key}-${opt}`}
                              checked={isChecked}
                              onCheckedChange={(checked) => handleMultiSelectAttribute(key, opt, checked === true)}
                            />
                            <Label htmlFor={`attr-${key}-${opt}`} className="text-sm font-normal cursor-pointer">
                              {opt}
                            </Label>
                          </div>
                        );
                      })}
                    </div>
                  ) : options && options.length > 0 ? (
                     <Select 
                       value={formData.attributes?.[key] as string || ''} 
                       onValueChange={(val) => handleAttributeChange(key, val)}
                     >
                      <SelectTrigger>
                        <SelectValue placeholder={`Sélectionner ${key}`} />
                      </SelectTrigger>
                      <SelectContent>
                        {options.map(opt => (
                          <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                        ))}
                      </SelectContent>
                     </Select>
                  ) : (
                     <Input 
                       placeholder={key}
                       value={(formData.attributes?.[key] as string) || ''}
                       onChange={(e) => handleAttributeChange(key, e.target.value)}
                     />
                  )}
                </div>
              ))}
            </div>
          </CardContent>
        </Card>
      )}

      {/* Téléphonie - Détails additionnels si la racine sélectionnée est Téléphonie */}
      {currentRootCategory?.slug === 'telephonie' && (
        <Card>
          <CardHeader>
            <CardTitle>Détails Téléphonie</CardTitle>
            <CardDescription>Ces champs sont facultatifs, renseignez-les si pertinent.</CardDescription>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
              <div className="space-y-2">
                <Label>Stockage</Label>
                <Select
                  value={(formData.attributes?.['storage'] as string) || ''}
                  onValueChange={(val) => handleAttributeChange('storage', val)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Sélectionner le stockage" />
                  </SelectTrigger>
                  <SelectContent>
                    {['64 Go', '128 Go', '256 Go', '512 Go', '1 To'].map(opt => (
                      <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div className="space-y-2">
                <Label>RAM</Label>
                <Select
                  value={(formData.attributes?.['ram'] as string) || ''}
                  onValueChange={(val) => handleAttributeChange('ram', val)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Sélectionner la RAM" />
                  </SelectTrigger>
                  <SelectContent>
                    {['4 Go', '6 Go', '8 Go', '12 Go', '16 Go'].map(opt => (
                      <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div className="space-y-2">
                <Label>Santé de la batterie</Label>
                <Input
                  placeholder="ex: 95%"
                  value={(formData.attributes?.['battery_health'] as string) || ''}
                  onChange={(e) => handleAttributeChange('battery_health', e.target.value)}
                />
              </div>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Immobilier & Maison - Détails additionnels */}
      {currentRootCategory?.slug === 'immobilier-maison' && (
        <Card>
          <CardHeader>
            <CardTitle>Détails Immobilier</CardTitle>
            <CardDescription>Ces champs sont facultatifs, renseignez-les si pertinent.</CardDescription>
          </CardHeader>
          <CardContent>
            <div className="grid grid-cols-1 md:grid-cols-5 gap-4">
              <div className="space-y-2">
                <Label>Surface (m²)</Label>
                <Input
                  placeholder="ex: 120"
                  value={(formData.attributes?.['surface'] as string) || ''}
                  onChange={(e) => handleAttributeChange('surface', e.target.value)}
                />
              </div>
              <div className="space-y-2">
                <Label>Pièces</Label>
                <Select
                  value={(formData.attributes?.['rooms'] as string) || ''}
                  onValueChange={(val) => handleAttributeChange('rooms', val)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="ex: 4" />
                  </SelectTrigger>
                  <SelectContent>
                    {['1','2','3','4','5','6','7','8'].map(opt => (
                      <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div className="space-y-2">
                <Label>Chambres</Label>
                <Select
                  value={(formData.attributes?.['bedrooms'] as string) || ''}
                  onValueChange={(val) => handleAttributeChange('bedrooms', val)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="ex: 3" />
                  </SelectTrigger>
                  <SelectContent>
                    {['0','1','2','3','4','5','6'].map(opt => (
                      <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div className="space-y-2">
                <Label>Étage</Label>
                <Select
                  value={(formData.attributes?.['floor'] as string) || ''}
                  onValueChange={(val) => handleAttributeChange('floor', val)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="ex: 2" />
                  </SelectTrigger>
                  <SelectContent>
                    {Array.from({length: 21}).map((_,i)=>String(i)).map(opt => (
                      <SelectItem key={opt} value={opt}>{opt}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
              <div className="space-y-2">
                <Label>Meublé</Label>
                <Select
                  value={(formData.attributes?.['furnished'] as string) || ''}
                  onValueChange={(val) => handleAttributeChange('furnished', val)}
                >
                  <SelectTrigger>
                    <SelectValue placeholder="Sélectionner" />
                  </SelectTrigger>
                  <SelectContent>
                    {['oui','non'].map(opt => (
                      <SelectItem key={opt} value={opt}>{opt.toUpperCase()}</SelectItem>
                    ))}
                  </SelectContent>
                </Select>
              </div>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Images */}
      <Card>
        <CardHeader>
          <CardTitle>{t('createAd.images')}</CardTitle>
          {(() => {
            const s = t('createAd.imagesSubtitle');
            return s && s !== 'createAd.imagesSubtitle' ? (
              <CardDescription>{s}</CardDescription>
            ) : null;
          })()}
        </CardHeader>
        <CardContent>
          <div className="space-y-4">
            {/* Zone d'upload */}
            <div className="border-2 border-dashed border-gray-300 rounded-lg p-6 text-center">
              <input
                type="file"
                multiple
                accept="image/*"
                onChange={handleImageUpload}
                className="hidden"
                id="image-upload"
              />
              <label htmlFor="image-upload" className="cursor-pointer">
                <Upload className="w-12 h-12 mx-auto mb-4 text-gray-400" />
                <p className="text-lg font-medium">{t('createAd.images')}</p>
                <p className="text-sm text-gray-500">PNG, JPG</p>
              </label>
            </div>

            {/* Prévisualisation des images */}
            {imagePreviewUrls.length > 0 && (
              <div className="grid grid-cols-2 md:grid-cols-4 gap-4">
                {imagePreviewUrls.map((url, index) => (
                  <div key={index} className="relative group">
                    <img
                      src={url}
                      alt={`Preview ${index + 1}`}
                      className="w-full h-32 object-cover rounded-lg"
                    />
                    <button
                      type="button"
                      onClick={() => removeImage(index)}
                      className="absolute top-2 right-2 bg-red-500 text-white rounded-full p-1 opacity-0 group-hover:opacity-100 transition-opacity"
                    >
                      <X className="w-4 h-4" />
                    </button>
                    {index === 0 && (
                      <Badge className="absolute bottom-2 left-2 bg-primary">
                        Principal
                      </Badge>
                    )}
                  </div>
                ))}
              </div>
            )}
          </div>
        </CardContent>
      </Card>

      {/* Localisation */}
      <Card>
        <CardHeader>
          <CardTitle>{t('createAd.location')}</CardTitle>
          {(() => {
            const s = t('createAd.locationSubtitle');
            return s && s !== 'createAd.locationSubtitle' ? (
              <CardDescription>{s}</CardDescription>
            ) : null;
          })()}
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="relative">
            <Label htmlFor="location">{t('createAd.location')} *</Label>
            <div className="relative">
              <MapPin className="absolute left-3 top-3 w-4 h-4 text-gray-400" />
              <Input
                id="location"
              name="location"
              autoComplete="off"
              value={locationSearch}
              onChange={(e) => {
                setLocationSearch(e.target.value);
                searchLocationHandler(e.target.value);
              }}
              placeholder={t('createAd.location')}
              className="pl-10"
              required
              />
            </div>
            
            {locationResults.length > 0 && (
              <div className="absolute top-full mt-1 w-full bg-white border rounded-md shadow-lg z-10 max-h-60 overflow-y-auto">
                {locationResults.map((location, index) => (
                  <button
                    key={index}
                    type="button"
                    onClick={() => selectLocation(location)}
                    className="w-full text-left px-4 py-2 hover:bg-gray-100 border-b last:border-b-0"
                  >
                    <div className="font-medium">{location.display_name}</div>
                  </button>
                ))}
              </div>
            )}
          </div>

          <div>
            <Label htmlFor="wilaya">{t('createAd.wilaya')}</Label>
            <Select value={formData.wilaya} onValueChange={(value) => handleInputChange('wilaya', value)}>
              <SelectTrigger id="wilaya">
                <SelectValue placeholder={t('createAd.selectWilaya')} />
              </SelectTrigger>
              <SelectContent>
                {wilayas.map((wilaya) => (
                  <SelectItem key={wilaya.code} value={wilaya.name}>
                    {wilaya.code.toString().padStart(2, '0')} - {language === 'ar' ? wilaya.name_ar : wilaya.name}
                  </SelectItem>
                ))}
              </SelectContent>
            </Select>
          </div>
        </CardContent>
      </Card>

      {/* Contact */}
      <Card>
        <CardHeader>
          <CardTitle>{t('createAd.contactInfo')}</CardTitle>
          <CardDescription>
            {t('createAd.contactSubtitle')}
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div>
            <Label htmlFor="phone">Numéro de téléphone</Label>
            <div className="relative">
              <Phone className="absolute left-3 top-3 w-4 h-4 text-gray-400" />
              <Input
                id="phone"
              name="phone"
              type="tel"
              autoComplete="tel"
              value={formData.phone}
              onChange={(e) => handleInputChange('phone', e.target.value)}
              placeholder="+213 XXX XXX XXX"
              className="pl-10"
              />
            </div>
          </div>

          <div>
            <Label htmlFor="email">Email</Label>
            <div className="relative">
              <Mail className="absolute left-3 top-3 w-4 h-4 text-gray-400" />
              <Input
                id="email"
              name="email"
              type="email"
              autoComplete="email"
              value={formData.email}
              onChange={(e) => handleInputChange('email', e.target.value)}
              placeholder="email@example.com"
              className="pl-10"
              />
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Actions */}
      <div className="flex gap-4 pt-6">
        <Button
          type="submit"
          disabled={creating}
          className="flex-1"
        >
          {creating ? (
            <>
              <Loader2 className="w-4 h-4 mr-2 animate-spin" />
              Publication en cours...
            </>
          ) : (
            'Publier l\'annonce'
          )}
        </Button>
        
        {onCancel && (
          <Button
            type="button"
            variant="outline"
            onClick={onCancel}
            disabled={creating}
          >
            Annuler
          </Button>
        )}
      </div>
    </form>
  );
};

export default AnnouncementForm;
