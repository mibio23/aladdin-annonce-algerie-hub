import { LocalizedLink } from "@/utils/linkUtils";
import { NavigationMenuLink } from "@/components/ui/navigation-menu";

const goldMenuGlowClass = "dark:hover:gold-menu-glow dark:focus-visible:gold-menu-glow";

const ReparationDropdownContent = () => {
  return (
    <ul className="grid w-[220px] gap-1 p-2">
      <li>
        <NavigationMenuLink asChild>
          <LocalizedLink 
            to="/reparation/electromenager"
            className={`block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground ${goldMenuGlowClass}`}
          >
            <div className="text-sm font-medium leading-none text-black dark:text-white hover:text-black dark:hover:text-white aladdin-glow-hover">Électroménager</div>
          </LocalizedLink>
        </NavigationMenuLink>
      </li>
      <li>
        <NavigationMenuLink asChild>
          <LocalizedLink 
            to="/reparation/informatique"
            className={`block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground ${goldMenuGlowClass}`}
          >
            <div className="text-sm font-medium leading-none text-black dark:text-white hover:text-black dark:hover:text-white aladdin-glow-hover">Informatique</div>
          </LocalizedLink>
        </NavigationMenuLink>
      </li>
      <li>
        <NavigationMenuLink asChild>
          <LocalizedLink 
            to="/reparation/automobile"
            className={`block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground ${goldMenuGlowClass}`}
          >
            <div className="text-sm font-medium leading-none text-black dark:text-white hover:text-black dark:hover:text-white aladdin-glow-hover">Automobile</div>
          </LocalizedLink>
        </NavigationMenuLink>
      </li>
      <li>
        <NavigationMenuLink asChild>
          <LocalizedLink 
            to="/reparation/plomberie"
            className={`block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground ${goldMenuGlowClass}`}
          >
            <div className="text-sm font-medium leading-none text-black dark:text-white hover:text-black dark:hover:text-white aladdin-glow-hover">Plomberie</div>
          </LocalizedLink>
        </NavigationMenuLink>
      </li>
      <li>
        <NavigationMenuLink asChild>
          <LocalizedLink 
            to="/reparation/electricite"
            className={`block select-none space-y-1 rounded-md p-3 leading-none no-underline outline-none transition-colors hover:bg-accent hover:text-accent-foreground focus:bg-accent focus:text-accent-foreground ${goldMenuGlowClass}`}
          >
            <div className="text-sm font-medium leading-none text-black dark:text-white hover:text-black dark:hover:text-white aladdin-glow-hover">Électricité</div>
          </LocalizedLink>
        </NavigationMenuLink>
      </li>
    </ul>
  );
};

export default ReparationDropdownContent;
