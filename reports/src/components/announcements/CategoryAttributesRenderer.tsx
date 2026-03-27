import React from 'react';
import { Label } from '@/components/ui/label';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Checkbox } from '@/components/ui/checkbox';
import { Input } from '@/components/ui/input';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface CategoryAttributesRendererProps {
  attributes: Record<string, string[]>;
  selectedAttributes: Record<string, string | string[]>;
  onAttributeChange: (key: string, value: string | string[]) => void;
  title?: string;
}

const CategoryAttributesRenderer: React.FC<CategoryAttributesRendererProps> = ({
  attributes,
  selectedAttributes,
  onAttributeChange,
  title,
}) => {
  const { t } = useSafeI18nWithRouter();

  // DEBUG : log ce qui est réellement reçu
  React.useEffect(() => {
    console.log('CategoryAttributesRenderer reçoit :', attributes);
  }, [attributes]);

  if (!attributes || Object.keys(attributes).length === 0) {
    return (
      <div className="space-y-4 border-t border-gray-100 pt-4 mt-4">
        <h3 className="font-semibold text-gray-900 dark:text-gray-100 mb-4">
          {title || t('createAd.details') || 'Détails spécifiques'}
        </h3>
        <p className="text-sm text-gray-500 dark:text-gray-400">
          Aucun détail spécifique disponible pour cette sélection.
        </p>
      </div>
    );
  }

  const formatLabel = (key: string) => {
    // Try to translate first
    const translationKey = `attributes.${key}`;
    const translation = t(translationKey);
    
    // If translation is same as key (meaning missing), format the key
    if (translation === translationKey) {
        return key.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
    }
    return translation;
  };

  const formatValue = (value: string) => {
     // Try to translate first
     const translationKey = `attributes.values.${value}`;
     const translation = t(translationKey);
     
     // If translation is same as key (meaning missing), format the value
     if (translation === translationKey) {
         return value.replace(/_/g, ' ').replace(/\b\w/g, l => l.toUpperCase());
     }
     return translation;
  };
  
  const isMultiSelectKey = (key: string) => {
    const translatedKey = t('createAd.realEstate.specifications');
    return key === translatedKey || key === 'Spécificités & Commodités';
  };

  return (
    <div className="space-y-4 border-t border-gray-100 pt-4 mt-4">
      <h3 className="font-semibold text-gray-900 dark:text-gray-100 mb-4">
        {title || t('createAd.details') || 'Détails spécifiques'}
      </h3>
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {Object.entries(attributes).map(([key, values]) => (
          <div key={key} className="space-y-2">
            <Label htmlFor={`attr-${key}`} className="text-sm font-medium">
              {formatLabel(key)}
            </Label>
            {isMultiSelectKey(key) ? (
              <div className="grid grid-cols-1 gap-2 border p-3 rounded-lg">
                {values.map((value) => {
                  const currentValues = Array.isArray(selectedAttributes[key])
                    ? (selectedAttributes[key] as string[])
                    : [];
                  const isChecked = currentValues.includes(value);
                  return (
                    <div key={value} className="flex items-center space-x-2">
                      <Checkbox
                        id={`attr-${key}-${value}`}
                        checked={isChecked}
                        onCheckedChange={(checked) => {
                          const nextValues = checked
                            ? [...currentValues, value]
                            : currentValues.filter(v => v !== value);
                          onAttributeChange(key, nextValues);
                        }}
                      />
                      <Label htmlFor={`attr-${key}-${value}`} className="text-sm font-normal cursor-pointer">
                        {formatValue(value)}
                      </Label>
                    </div>
                  );
                })}
              </div>
            ) : values.length > 0 ? (
              <Select
                value={typeof selectedAttributes[key] === 'string' ? (selectedAttributes[key] as string) : ''}
                onValueChange={(value) => onAttributeChange(key, value)}
              >
                <SelectTrigger id={`attr-${key}`} className="w-full text-base h-12 rounded-lg border-gray-200 focus:border-green-500 focus:ring-green-500 hover:border-green-500 transition-colors">
                  <SelectValue placeholder={`Sélectionner ${formatLabel(key).toLowerCase()}`} />
                </SelectTrigger>
                <SelectContent>
                  {values.map((value) => (
                    <SelectItem key={value} value={value}>
                      {formatValue(value)}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            ) : (
              <Input
                id={`attr-${key}`}
                value={typeof selectedAttributes[key] === 'string' ? (selectedAttributes[key] as string) : ''}
                onChange={(event) => onAttributeChange(key, event.target.value)}
                placeholder={formatLabel(key)}
                className="w-full text-base h-12 rounded-lg border-gray-200 focus:border-green-500 focus:ring-green-500 hover:border-green-500 transition-colors"
              />
            )}
          </div>
        ))}
      </div>
    </div>
  );
};

export default CategoryAttributesRenderer;
