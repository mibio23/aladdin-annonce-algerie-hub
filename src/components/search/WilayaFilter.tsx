import React from 'react';
import { MapPin } from 'lucide-react';
import { wilayas } from '@/data/wilayaData';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface WilayaFilterProps {
  selectedWilaya: string;
  onWilayaChange: (wilayaCode: string) => void;
}

const WilayaFilter: React.FC<WilayaFilterProps> = ({ selectedWilaya, onWilayaChange }) => {
  const { language } = useSafeI18nWithRouter();
  
  // Translation fallback
  const allWilayasLabel = language === 'ar' ? "كل الولايات" : "Toutes les wilayas";

  return (
    <div className="relative group">
      <div className="absolute inset-y-0 left-0 flex items-center pl-3 pointer-events-none z-10">
        <MapPin className="h-5 w-5 text-gray-400 group-hover:text-primary-500 transition-colors" />
      </div>
      <select
        value={selectedWilaya}
        onChange={(e) => onWilayaChange(e.target.value)}
        className="block w-full pl-10 pr-10 py-2.5 text-base border border-gray-200 dark:border-slate-700 focus:outline-none focus:ring-2 focus:ring-primary-500/20 focus:border-primary-500 sm:text-sm rounded-lg bg-white dark:bg-slate-800 text-gray-900 dark:text-slate-100 shadow-sm transition-all cursor-pointer appearance-none hover:border-primary-300 dark:hover:border-primary-700"
      >
        <option value="">{allWilayasLabel}</option>
        {wilayas.map((wilaya) => (
          <option key={wilaya.code} value={wilaya.code.toString()}>
            {wilaya.code} - {language === 'ar' ? wilaya.name_ar : wilaya.name}
          </option>
        ))}
      </select>
      <div className="absolute inset-y-0 right-0 flex items-center pr-2 pointer-events-none z-10">
        <svg className="h-5 w-5 text-gray-400" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20" fill="currentColor" aria-hidden="true">
          <path fillRule="evenodd" d="M10 3a1 1 0 01.707.293l3 3a1 1 0 01-1.414 1.414L10 5.414 7.707 7.707a1 1 0 01-1.414-1.414l3-3A1 1 0 0110 3zm-3.707 9.293a1 1 0 011.414 0L10 14.586l2.293-2.293a1 1 0 011.414 1.414l-3 3a1 1 0 01-1.414 0l-3-3a1 1 0 010-1.414z" clipRule="evenodd" />
        </svg>
      </div>
    </div>
  );
};

export default WilayaFilter;
