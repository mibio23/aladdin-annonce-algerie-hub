
import React, { useState, useEffect } from 'react';
import { useLocation, useNavigate } from 'react-router-dom';
import {
  Sheet,
  SheetContent,
  SheetTrigger,
} from "@/components/ui/sheet";
import { useSafeI18nWithRouter } from '@/lib/i18n/i18nContextWithRouter';
import LoginForm from './LoginForm';
import RegisterForm from './RegisterForm';
import ForgotPasswordForm from './ForgotPasswordForm';
import { Alert, AlertDescription } from '@/components/ui/alert';
import { Tabs, TabsList, TabsTrigger } from "@/components/ui/tabs";

interface AuthDrawerProps {
  children?: React.ReactNode;
}

const AuthDrawer: React.FC<AuthDrawerProps> = ({ children }) => {
  const { t } = useSafeI18nWithRouter();
  const location = useLocation();
  const navigate = useNavigate();
  const [isOpen, setIsOpen] = useState(false);
  const [activeTab, setActiveTab] = useState<'login' | 'register' | 'forgot-password'>('login');
  const [message, setMessage] = useState<{ type: 'success' | 'error'; text: string } | null>(null);

  // Gestion de l'ouverture automatique via l'URL ou l'état de navigation
  useEffect(() => {
    const handleCustomEvent = (e: any) => {
      const type = e.detail as string;
      if (type === 'login' || type === 'register' || type === 'forgot-password') {
        setIsOpen(true);
        setActiveTab(type as any);
      }
    };

    window.addEventListener('open-auth-drawer', handleCustomEvent);

    const searchParams = new URLSearchParams(location.search);
    const authParam = searchParams.get('auth');
    const isConnexionPath = location.pathname.includes('/connexion');
    const isInscriptionPath = location.pathname.includes('/inscription');
    const isForgotPasswordPath = location.pathname.includes('/mot-de-passe-oublie');
    const state = location.state as Record<string, unknown> | null;
    const openAuth = (state && typeof state === 'object' ? (state as any).openAuth : undefined) as
      | 'login'
      | 'register'
      | 'forgot-password'
      | undefined;

    let shouldCleanUrl = false;
    let didOpenFromUrlOrState = false;

    if (authParam === 'login' || isConnexionPath || openAuth === 'login') {
      setIsOpen(true);
      setActiveTab('login');
      didOpenFromUrlOrState = authParam === 'login' || openAuth === 'login';
    } else if (authParam === 'register' || isInscriptionPath || openAuth === 'register') {
      setIsOpen(true);
      setActiveTab('register');
      didOpenFromUrlOrState = authParam === 'register' || openAuth === 'register';
    } else if (authParam === 'forgot-password' || isForgotPasswordPath || openAuth === 'forgot-password') {
      setIsOpen(true);
      setActiveTab('forgot-password');
      didOpenFromUrlOrState = authParam === 'forgot-password' || openAuth === 'forgot-password';
    }

    if (didOpenFromUrlOrState) {
      let nextSearch = location.search;
      if (authParam) {
        searchParams.delete('auth');
        const nextQuery = searchParams.toString();
        nextSearch = nextQuery ? `?${nextQuery}` : '';
        shouldCleanUrl = true;
      }

      let nextState: Record<string, unknown> | null = state;
      if (openAuth) {
        const { openAuth: _ignored, ...rest } = (state ?? {}) as any;
        nextState = Object.keys(rest).length ? rest : null;
        shouldCleanUrl = true;
      }

      if (shouldCleanUrl) {
        navigate(
          { pathname: location.pathname, search: nextSearch, hash: location.hash },
          { replace: true, state: nextState }
        );
      }
    }

    return () => window.removeEventListener('open-auth-drawer', handleCustomEvent);
  }, [location, navigate]);

  const handleOpenChange = (open: boolean) => {
    setIsOpen(open);
    
    // Si on ferme le drawer alors qu'on est sur une route d'auth, on redirige vers l'accueil
    if (!open && (location.pathname.includes('/connexion') || 
                  location.pathname.includes('/inscription') || 
                  location.pathname.includes('/mot-de-passe-oublie'))) {
      navigate('/', { replace: true });
    }
  };

  const handleSuccess = () => {
    if (activeTab === 'register') {
      // Si on vient de s'inscrire, on bascule vers la connexion
      setTimeout(() => {
        setActiveTab('login');
        setMessage(null);
      }, 2000);
    } else {
      // Si on vient de se connecter, on ferme le drawer
      setTimeout(() => {
        setIsOpen(false);
        setMessage(null);
      }, 2000);
    }
  };

  return (
    <Sheet open={isOpen} onOpenChange={handleOpenChange}>
      {children && (
        <SheetTrigger asChild>
          {children}
        </SheetTrigger>
      )}
      <SheetContent side="right" className="sm:max-w-[800px] p-0 overflow-hidden flex flex-row">
        {/* Side Image - AliExpress Style */}
        <div className="hidden md:block w-5/12 relative bg-primary/10">
          <img 
            src="https://images.unsplash.com/photo-1555421689-491a97ff2040?q=80&w=2070&auto=format&fit=crop" 
            alt="Welcome to Aladdin" 
            className="absolute inset-0 w-full h-full object-cover"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-black/80 via-black/20 to-transparent flex flex-col justify-end p-10 text-white">
            <div className="mb-4 inline-flex items-center justify-center w-12 h-12 rounded-full bg-primary/20 backdrop-blur-md border border-white/20">
              <span className="text-2xl">✨</span>
            </div>
            <h3 className="text-4xl font-extrabold mb-3 tracking-tight">Aladdin</h3>
            <p className="text-xl opacity-90 leading-relaxed font-medium">
              {t('auth.welcome')}
            </p>
            <div className="mt-6 flex items-center space-x-2 text-sm font-medium opacity-75">
              <span className="w-8 h-[2px] bg-primary"></span>
              <span>{t('auth.tagline')}</span>
            </div>
          </div>
        </div>

        {/* Content Area */}
        <div className="w-full md:w-7/12 p-8 overflow-y-auto bg-background flex flex-col shadow-2xl">
          <div className="flex justify-between items-center mb-8">
            <h2 className="text-3xl font-black tracking-tighter text-foreground">
              {activeTab === 'login' ? t('connexion.title') : 
               activeTab === 'register' ? t('inscription.title') : 
               t('connexion.forgotPassword')}
            </h2>
          </div>

          {message && (
            <Alert className={`mb-8 border-none rounded-xl ${message.type === 'error' ? 'bg-red-50 text-red-800 dark:bg-red-900/20 dark:text-red-400' : 'bg-green-50 text-green-800 dark:bg-green-900/20 dark:text-green-400'}`}>
              <AlertDescription className="font-bold flex items-center">
                {message.type === 'error' ? '⚠️' : '✅'} <span className="ml-2">{message.text}</span>
              </AlertDescription>
            </Alert>
          )}

          {activeTab === 'forgot-password' ? (
            <div className="animate-in fade-in slide-in-from-bottom-4 duration-500">
              <ForgotPasswordForm 
                onMessage={setMessage}
                onBack={() => setActiveTab('login')}
              />
            </div>
          ) : (
            <Tabs 
              value={activeTab} 
              onValueChange={(v) => {
                setActiveTab(v as 'login' | 'register');
                setMessage(null);
              }} 
              className="w-full"
            >
              <TabsList className="grid w-full grid-cols-2 mb-10 bg-muted/30 p-1.5 rounded-2xl border border-border/50">
                <TabsTrigger value="login" className="text-sm font-bold py-3 rounded-xl transition-all data-[state=active]:bg-background data-[state=active]:shadow-sm data-[state=active]:text-primary">
                  {t('auth.signIn')}
                </TabsTrigger>
                <TabsTrigger value="register" className="text-sm font-bold py-3 rounded-xl transition-all data-[state=active]:bg-background data-[state=active]:shadow-sm data-[state=active]:text-primary">
                  {t('auth.signUp')}
                </TabsTrigger>
              </TabsList>

              <div className="mt-2 animate-in fade-in slide-in-from-bottom-4 duration-500">
                {activeTab === 'login' ? (
                  <LoginForm 
                    onMessage={setMessage} 
                    onSuccess={handleSuccess} 
                    onForgotPassword={() => setActiveTab('forgot-password')}
                  />
                ) : (
                  <RegisterForm 
                    onMessage={setMessage}
                    onSuccess={handleSuccess}
                  />
                )}
              </div>
            </Tabs>
          )}

          {activeTab !== 'forgot-password' && (
            <div className="mt-auto pt-10 text-center border-t border-border/50">
              <p className="text-muted-foreground font-medium">
                {activeTab === 'login' ? (
                  <>
                    {t('connexion.noAccount')}{' '}
                    <button 
                      onClick={() => setActiveTab('register')}
                      className="text-primary font-black hover:underline underline-offset-4 transition-all"
                    >
                      {t('connexion.signupLink')}
                    </button>
                  </>
                ) : (
                  <>
                    {t('auth.alreadyHaveAccount')}{' '}
                    <button 
                      onClick={() => setActiveTab('login')}
                      className="text-primary font-black hover:underline underline-offset-4 transition-all"
                    >
                      {t('auth.loginLink') || t('auth.signIn')}
                    </button>
                  </>
                )}
              </p>
            </div>
          )}
        </div>
      </SheetContent>
    </Sheet>
  );
};

export default AuthDrawer;
