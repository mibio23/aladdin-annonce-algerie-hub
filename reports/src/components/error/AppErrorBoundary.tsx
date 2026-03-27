import React from 'react';
import { ErrorBoundary } from 'react-error-boundary';
import { AlertTriangle, RefreshCw } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from '@/components/ui/card';
import { logger } from '@/utils/silentLogger';

interface ErrorFallbackProps {
  error: Error;
  resetErrorBoundary: () => void;
}

const ErrorFallback: React.FC<ErrorFallbackProps> = ({ error, resetErrorBoundary }) => {
  return (
    <div className="min-h-screen flex items-center justify-center p-4">
      <Card className="max-w-md w-full">
        <CardHeader>
          <div className="flex items-center gap-2">
            <AlertTriangle className="h-5 w-5 text-red-500" />
            <CardTitle>Oops ! Une erreur s'est produite</CardTitle>
          </div>
          <CardDescription>
            Quelque chose s'est mal passé. Veuillez réessayer.
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="text-sm text-muted-foreground bg-muted p-3 rounded">
            <strong>Détails de l'erreur :</strong>
            <br />
            {error.message}
          </div>
          <div className="flex gap-2">
            <Button 
              onClick={resetErrorBoundary}
              className="gap-2"
            >
              <RefreshCw className="w-4 h-4" />
              Réessayer
            </Button>
            <Button 
              variant="outline" 
              onClick={() => window.location.reload()}
            >
              Recharger la page
            </Button>
          </div>
        </CardContent>
      </Card>
    </div>
  );
};

interface AppErrorBoundaryProps {
  children: React.ReactNode;
}

const isDOMManipulationError = (error: Error): boolean => {
  const msg = error.message || '';
  return (
    msg.includes('removeChild') ||
    msg.includes('insertBefore') ||
    msg.includes('appendChild') ||
    msg.includes('not a child of this node')
  );
};

const AppErrorBoundary: React.FC<AppErrorBoundaryProps> = ({ children }) => {
  return (
    <ErrorBoundary
      FallbackComponent={ErrorFallback}
      onError={(error, errorInfo) => {
        // DOM manipulation errors (browser extensions, Google Translate, etc.)
        // are non-critical — just reload silently
        if (isDOMManipulationError(error)) {
          logger.warn('DOM manipulation conflict (likely browser extension), reloading...');
          window.location.reload();
          return;
        }

        logger.error('Application Error:', error);
        logger.error('Error Info:', errorInfo);
      }}
      onReset={() => {
        window.location.hash = '';
      }}
    >
      {children}
    </ErrorBoundary>
  );
};

export default AppErrorBoundary;