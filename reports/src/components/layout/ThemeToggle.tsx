import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import { Moon, Sun } from "lucide-react";

const ThemeToggle = () => {
  const [mounted, setMounted] = useState(false);
  const [theme, setTheme] = useState<'light' | 'dark'>('light');

  useEffect(() => {
    const isDark = document.documentElement.classList.contains('dark');
    setTheme(isDark ? 'dark' : 'light');
    setMounted(true);
  }, []);

  if (!mounted) {
    return <Button variant="ghost" size="sm" className="p-2 w-9 h-9" disabled />;
  }

  return (
    <Button
      variant="ghost"
      size="sm"
      className="p-2"
      onClick={() => {
        const next = theme === 'light' ? 'dark' : 'light';
        if (next === 'dark') {
          document.documentElement.classList.add('dark');
        } else {
          document.documentElement.classList.remove('dark');
        }
        setTheme(next);
      }}
      aria-label="Toggle theme"
    >
      {theme === "light" ? (
        <Moon className="h-5 w-5 text-gray-700 hover:text-accessible-orange dark:text-white dark:hover:text-accessible-orange" />
      ) : (
        <Sun className="h-5 w-5 text-gray-700 hover:text-accessible-orange dark:text-white dark:hover:text-accessible-orange" />
      )}
    </Button>
  );
};

export default ThemeToggle;
