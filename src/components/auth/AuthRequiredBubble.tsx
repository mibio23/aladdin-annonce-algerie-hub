import React from 'react';
import { Button } from '@/components/ui/button';
import { LogIn, Lock } from 'lucide-react';
import AuthDrawer from './AuthDrawer';
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';

interface AuthRequiredBubbleProps {
  message?: string;
  className?: string;
}

const AuthRequiredBubble: React.FC<AuthRequiredBubbleProps> = ({
  message,
  className = ""
}) => {
  const { t } = useSafeI18nWithRouter();
  const displayMessage = message || t('auth.required.message');

  return (
    <div className={`relative group ${className}`}>
      {/* 3D Bubble Effect Container */}
      <div className="relative overflow-hidden rounded-2xl bg-gradient-to-br from-blue-500 to-indigo-600 p-8 shadow-[0_10px_20px_rgba(59,130,246,0.3)] transition-all duration-300 hover:shadow-[0_15px_30px_rgba(59,130,246,0.4)] hover:-translate-y-1">
        
        {/* Shine effect */}
        <div className="absolute -top-12 -right-12 h-40 w-40 rounded-full bg-white/10 blur-2xl" />
        <div className="absolute bottom-0 left-0 h-full w-full bg-gradient-to-t from-black/10 to-transparent" />
        
        <div className="relative z-10 flex flex-col items-center text-center space-y-4">
          <div className="rounded-full bg-white/20 p-4 backdrop-blur-sm shadow-inner ring-1 ring-white/30">
            <Lock className="h-8 w-8 text-white" />
          </div>
          
          <div className="space-y-2">
            <h3 className="text-xl font-bold text-white tracking-tight">
              {t('auth.required.title')}
            </h3>
            <p className="text-blue-100 max-w-xs mx-auto text-sm leading-relaxed">
              {displayMessage}
            </p>
          </div>

          <AuthDrawer>
            <Button 
              variant="secondary"
              className="mt-4 bg-white text-indigo-600 hover:bg-blue-50 font-semibold shadow-lg transition-all duration-300 hover:scale-105 active:scale-95"
            >
              <LogIn className="mr-2 h-4 w-4" />
              {t('auth.required.button')}
            </Button>
          </AuthDrawer>
        </div>
      </div>
    </div>
  );
};

export default AuthRequiredBubble;
