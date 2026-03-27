import React from 'react';
import { Select, SelectContent, SelectItem, SelectTrigger, SelectValue } from '@/components/ui/select';
import { Button } from '@/components/ui/button';
import { ArrowUpDown, Grid3X3, List, LayoutGrid } from 'lucide-react';
import { useSafeI18nWithRouter  } from "@/lib/i18n/i18nContextWithRouter";
import { SortOption } from '@/types/search';

export type ViewMode = 'grid' | 'list' | 'compact';
export { type SortOption };

interface SearchSortingControlsProps {
  sortBy: SortOption;
  onSortChange: (sort: SortOption) => void;
  viewMode: ViewMode;
  onViewModeChange: (mode: ViewMode) => void;
  resultsPerPage: number;
  onResultsPerPageChange: (count: number) => void;
  children?: React.ReactNode;
}

const SearchSortingControls: React.FC<SearchSortingControlsProps> = ({
  sortBy,
  onSortChange,
  viewMode,
  onViewModeChange,
  resultsPerPage,
  onResultsPerPageChange,
  children
}) => {
  const { t } = useSafeI18nWithRouter();
  const sortOptions = [
    { value: 'relevance', label: t('sortOptions.relevance') },
    { value: 'date_desc', label: t('sortOptions.dateDesc') },
    { value: 'date_asc', label: t('sortOptions.dateAsc') },
    { value: 'price_asc', label: t('sortOptions.priceAsc') },
    { value: 'price_desc', label: t('sortOptions.priceDesc') },
    { value: 'views_desc', label: t('sortOptions.viewsDesc') },
  ];

  const resultsPerPageOptions = [12, 24, 48, 96];

  return (
    <div className="flex flex-col sm:flex-row items-center justify-between gap-4 mb-6 p-4 bg-card rounded-lg border shadow-sm">
      <div className="flex items-center gap-4 w-full sm:w-auto">
        <div className="flex items-center gap-2 flex-1 sm:flex-initial">
          <ArrowUpDown className="h-4 w-4 text-muted-foreground" />
          <Select value={sortBy} onValueChange={(value: SortOption) => onSortChange(value)}>
            <SelectTrigger className="w-[180px]">
              <SelectValue placeholder={t('sortBy')} />
            </SelectTrigger>
            <SelectContent>
              {sortOptions.map((option) => (
                <SelectItem key={option.value} value={option.value}>
                  {option.label}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>

        <div className="flex items-center gap-2 hidden sm:flex">
          <span className="text-sm text-muted-foreground">{t('show')}:</span>
          <Select 
            value={resultsPerPage.toString()} 
            onValueChange={(value) => onResultsPerPageChange(parseInt(value))}
          >
            <SelectTrigger className="w-20">
              <SelectValue />
            </SelectTrigger>
            <SelectContent>
              {resultsPerPageOptions.map((count) => (
                <SelectItem key={count} value={count.toString()}>
                  {count}
                </SelectItem>
              ))}
            </SelectContent>
          </Select>
        </div>
      </div>

      <div className="flex items-center gap-3 w-full sm:w-auto justify-end">
        {children}
        
        <div className="h-6 w-px bg-border mx-1 hidden sm:block" />

        <div className="flex items-center gap-1 bg-muted rounded-lg p-1">
          <Button
            variant={viewMode === 'grid' ? 'default' : 'ghost'}
            size="sm"
            onClick={() => onViewModeChange('grid')}
            className="px-3 h-8"
          >
            <LayoutGrid className="h-4 w-4" />
          </Button>
          <Button
            variant={viewMode === 'list' ? 'default' : 'ghost'}
            size="sm"
            onClick={() => onViewModeChange('list')}
            className="px-3 h-8"
          >
            <List className="h-4 w-4" />
          </Button>
          <Button
            variant={viewMode === 'compact' ? 'default' : 'ghost'}
            size="sm"
            onClick={() => onViewModeChange('compact')}
            className="px-3 h-8"
          >
            <Grid3X3 className="h-4 w-4" />
          </Button>
        </div>
      </div>
    </div>
  );
};

export default SearchSortingControls;