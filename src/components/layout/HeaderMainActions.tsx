import { useInactivityTimer } from "@/hooks/useInactivityTimer";
import { useAuth } from "@/contexts/useAuth";

const HeaderMainActions = () => {
  const { user } = useAuth();

  // Activer le timer d'inactivité pour les utilisateurs connectés
  useInactivityTimer({ enabled: !!user });

  return null;
};

export default HeaderMainActions;
