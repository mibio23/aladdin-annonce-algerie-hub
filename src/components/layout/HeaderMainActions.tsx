import { useInactivityTimer } from "@/hooks/useInactivityTimer";
import DigitalClock from "./DigitalClock";
import { useAuth } from "@/contexts/useAuth";

const HeaderMainActions = () => {
  const { user } = useAuth();

  // Activer le timer d'inactivité pour les utilisateurs connectés
  useInactivityTimer({ enabled: !!user });

  return (
    <div className="flex items-center gap-1">
      {/* Clock */}
      <DigitalClock />
    </div>
  );
};

export default HeaderMainActions;
