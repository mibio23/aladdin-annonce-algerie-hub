import React from "react";
// Catégories neutralisées: aucune donnée importée

const CategoryMobileAccordion = () => {

  return (
    <div className="py-2">
      <div className="flex items-center text-foreground font-medium mb-2 font-['Changa',Arial,sans-serif]">
        Catégories
      </div>
      {/* Menu vide volontairement */}
      <div className="max-h-[70vh] overflow-y-auto space-y-1" />
    </div>
  );
};

export default CategoryMobileAccordion;
