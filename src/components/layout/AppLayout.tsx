import React from "react";
import Header from "@/components/layout/Header";
import { usePresenceTracker } from "@/hooks/usePresenceTracker";

interface AppLayoutProps {
  children: React.ReactNode;
  showHeader?: boolean;
}

const AppLayout: React.FC<AppLayoutProps> = ({ children, showHeader = true }) => {
  usePresenceTracker();

  return (
    <>
      {showHeader && <Header />}
      {children}
    </>
  );
};

export default AppLayout;