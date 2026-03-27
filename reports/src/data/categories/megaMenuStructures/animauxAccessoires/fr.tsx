import { MenuCategory } from "../../../categoryTypes";
import { PawPrint } from "lucide-react";

export const animauxAccessoiresFr: MenuCategory = {
  id: "animaux-accessoires",
  name: "Animales & Accessoires",
  slug: "animaux-accessoires",
  icon: <PawPrint className="w-4 h-4" />,
  subcategories: [
    {
      id: "animaux-domestiques",
      name: "Animaux Domestiques",
      slug: "animaux-domestiques",
      subcategories: [
        {
          id: "chiens",
          name: "Chiens",
          slug: "chiens",
          subcategories: [
            { id: "chiots-races", name: "chiots de race", slug: "chiots-races" },
            { id: "chiens-adultes", name: "chiens adultes", slug: "chiens-adultes" },
            { id: "chiens-dresses", name: "chiens dressés", slug: "chiens-dresses" }
          ]
        },
        {
          id: "chats",
          name: "Chats",
          slug: "chats",
          subcategories: [
            { id: "chatons-races", name: "chatons de race", slug: "chatons-races" },
            { id: "chats-adultes", name: "chats adultes", slug: "chats-adultes" }
          ]
        },
        { id: "oiseaux", name: "oiseaux", slug: "oiseaux", subcategories: [
          { id: "oiseaux-rares", name: "oiseaux rares", slug: "oiseaux-rares" },
          { id: "canaris", name: "canaris", slug: "canaris" }
        ] },
        { id: "poissons", name: "poissons", slug: "poissons", subcategories: [
          { id: "poissons-aquarium", name: "poissons d'aquarium", slug: "poissons-aquarium" }
        ] },
        { id: "rongeurs", name: "rongeurs", slug: "rongeurs", subcategories: [
          { id: "lapins", name: "lapins", slug: "lapins" },
          { id: "hamsters", name: "hamsters", slug: "hamsters" }
        ] },
        { id: "reptiles", name: "reptiles", slug: "reptiles", subcategories: [
          { id: "tortues", name: "tortues", slug: "tortues" }
        ] }
      ]
    },
    {
      id: "animaux-elevage",
      name: "Animaux d'Élevage",
      slug: "animaux-elevage",
      subcategories: [
        { id: "ovins", name: "ovins", slug: "ovins" },
        { id: "bovins", name: "bovins", slug: "bovins" },
        { id: "caprins", name: "caprins", slug: "caprins" },
        { id: "volailles", name: "volailles", slug: "volailles" },
        { id: "equides", name: "équidés", slug: "equides" }
      ]
    },
    {
      id: "nourriture-soins",
      name: "Nourriture & Soins Animaliers",
      slug: "nourriture-soins",
      subcategories: [
        {
          id: "alimentation-chiens-chats",
          name: "Alimentation Chiens & Chats",
          slug: "alimentation-chiens-chats",
          subcategories: [
            { id: "croquettes", name: "croquettes", slug: "croquettes" },
            { id: "patees", name: "pâtées", slug: "patees" },
            { id: "friandises", name: "friandises", slug: "friandises" }
          ]
        },
        {
          id: "alimentation-oiseaux",
          name: "Alimentation Oiseaux",
          slug: "alimentation-oiseaux",
          subcategories: [
            { id: "melanges-oiseaux", name: "mélanges pour oiseaux", slug: "melanges-oiseaux" }
          ]
        },
        {
          id: "alimentation-poissons",
          name: "Alimentation Poissons",
          slug: "alimentation-poissons",
          subcategories: [
            { id: "aliments-poissons", name: "aliments pour poissons", slug: "aliments-poissons" }
          ]
        },
        {
          id: "soins-hygiene",
          name: "Soins & Hygiène",
          slug: "soins-hygiene",
          subcategories: [
            { id: "produits-hygiene", name: "produits d'hygiène", slug: "produits-hygiene" },
            { id: "shampoings", name: "shampoings", slug: "shampoings" },
            { id: "antiparasitaires", name: "antiparasitaires", slug: "antiparasitaires" },
            { id: "anti-tiques", name: "anti-tiques", slug: "anti-tiques" },
            { id: "produits-veterinaires", name: "produits vétérinaires", slug: "produits-veterinaires" }
          ]
        },
        {
          id: "complements-alimentaires",
          name: "Compléments Alimentaires",
          slug: "complements-alimentaires",
          subcategories: [
            { id: "vitamines", name: "vitamines", slug: "vitamines" }
          ]
        }
      ]
    },
    {
      id: "accessoires-equipements",
      name: "Accessoires & Équipements",
      slug: "accessoires-equipements",
      subcategories: [
        {
          id: "accessoires-promenade",
          name: "Accessoires de Promenade",
          slug: "accessoires-promenade",
          subcategories: [
            { id: "laisses", name: "laisses", slug: "laisses" },
            { id: "colliers", name: "colliers", slug: "colliers" },
            { id: "harnais", name: "harnais", slug: "harnais" }
          ]
        },
        {
          id: "habitats",
          name: "Habitats",
          slug: "habitats",
          subcategories: [
            { id: "cages", name: "cages", slug: "cages" },
            { id: "volières", name: "volières", slug: "volières" },
            { id: "niches", name: "niches", slug: "niches" },
            { id: "aquariums", name: "aquariums", slug: "aquariums" },
            { id: "terrariums", name: "terrariums", slug: "terrariums" }
          ]
        },
        {
          id: "confort-dodo",
          name: "Confort & Dodo",
          slug: "confort-dodo",
          subcategories: [
            { id: "paniers", name: "paniers", slug: "paniers" },
            { id: "coussins", name: "coussins", slug: "coussins" },
            { id: "arbres-chat", name: "arbres à chat", slug: "arbres-chat" }
          ]
        },
        {
          id: "alimentation-accessoires",
          name: "Alimentation & Accessoires",
          slug: "alimentation-accessoires",
          subcategories: [
            { id: "gamelles", name: "gamelles", slug: "gamelles" },
            { id: "distributeurs-auto", name: "distributeurs automatiques", slug: "distributeurs-auto" },
            { id: "fontaines-eau", name: "fontaines d'eau", slug: "fontaines-eau" }
          ]
        },
        {
          id: "litières-hygiene",
          name: "Litières & Hygiène",
          slug: "litières-hygiene",
          subcategories: [
            { id: "litières", name: "litières", slug: "litières" },
            { id: "bacs-litiere", name: "bacs à litière", slug: "bacs-litiere" }
          ]
        },
        {
          id: "jouets-loisirs",
          name: "Jouets & Loisirs",
          slug: "jouets-loisirs",
          subcategories: [
            { id: "jouets", name: "jouets", slug: "jouets" }
          ]
        },
        {
          id: "transport",
          name: "Transport",
          slug: "transport",
          subcategories: [
            { id: "paniers-transport", name: "paniers de transport", slug: "paniers-transport" }
          ]
        }
      ]
    },
    {
      id: "elevage-reproduction",
      name: "Élevage & Reproduction",
      slug: "elevage-reproduction",
      subcategories: [
        {
          id: "materiel-elevage",
          name: "Matériel d'Élevage",
          slug: "materiel-elevage",
          subcategories: [
            { id: "incubateurs", name: "incubateurs", slug: "incubateurs" },
            { id: "couveuses", name: "couveuses", slug: "couveuses" },
            { id: "cages-elevage", name: "cages d'élevage", slug: "cages-elevage" }
          ]
        },
        {
          id: "accessoires-reproduction",
          name: "Accessoires de Reproduction",
          slug: "accessoires-reproduction",
          subcategories: [
            { id: "accessoires-accouplement", name: "accessoires d'accouplement", slug: "accessoires-accouplement" }
          ]
        },
        {
          id: "reproducteurs-selectionnes",
          name: "Reproducteurs Sélectionnés",
          slug: "reproducteurs-selectionnes",
          subcategories: [
            { id: "reproducteurs", name: "reproducteurs sélectionnés", slug: "reproducteurs" }
          ]
        },
        {
          id: "jeunes-animaux",
          name: "Jeunes Animaux",
          slug: "jeunes-animaux",
          subcategories: [
            { id: "poussins", name: "poussins", slug: "poussins" },
            { id: "agneaux", name: "agneaux", slug: "agneaux" },
            { id: "chevreaux", name: "chevreaux", slug: "chevreaux" }
          ]
        },
        {
          id: "services-elevage",
          name: "Services d'Élevage",
          slug: "services-elevage",
          subcategories: [
            { id: "assistance-elevage", name: "services d'assistance à l'élevage", slug: "assistance-elevage" },
            { id: "conseils-specialises", name: "conseils spécialisés", slug: "conseils-specialises" },
            { id: "genetique-selection", name: "génétique & sélection", slug: "genetique-selection" }
          ]
        }
      ]
    },
    {
      id: "services-animaliers",
      name: "Services Animaliers",
      slug: "services-animaliers",
      subcategories: [
        {
          id: "toilettage",
          name: "Toilettage",
          slug: "toilettage",
          subcategories: [
            { id: "toilettage-chiens", name: "toilettage chiens", slug: "toilettage-chiens" },
            { id: "toilettage-chats", name: "toilettage chats", slug: "toilettage-chats" }
          ]
        },
        {
          id: "dressage-education",
          name: "Dressage & Éducation",
          slug: "dressage-education",
          subcategories: [
            { id: "dressage-canin", name: "dressage canin", slug: "dressage-canin" },
            { id: "education-canine", name: "éducation canine", slug: "education-canine" }
          ]
        },
        {
          id: "pension-garde",
          name: "Pension & Garde",
          slug: "pension-garde",
          subcategories: [
            { id: "pension-animaux", name: "pension & garde d'animaux", slug: "pension-animaux" }
          ]
        },
        {
          id: "promenades-soins",
          name: "Promenades & Soins",
          slug: "promenades-soins",
          subcategories: [
            { id: "promenades", name: "promenades", slug: "promenades" },
            { id: "soins-domicile", name: "soins à domicile", slug: "soins-domicile" }
          ]
        },
        {
          id: "comportement-adoption",
          name: "Comportement & Adoption",
          slug: "comportement-adoption",
          subcategories: [
            { id: "consultation-comportementaliste", name: "consultation comportementaliste", slug: "consultation-comportementaliste" },
            { id: "adoption", name: "adoption", slug: "adoption" }
          ]
        },
        {
          id: "services-speciaux",
          name: "Services Spéciaux",
          slug: "services-speciaux",
          subcategories: [
            { id: "photographie-animaliere", name: "photographie animalière", slug: "photographie-animaliere" },
            { id: "transport-animaux", name: "transport d'animaux", slug: "transport-animaux" },
            { id: "services-veterinaires", name: "services vétérinaires privés", slug: "services-veterinaires" }
          ]
        }
      ]
    },
    {
      id: "produits-exterieurs",
      name: "Produits & Accessoires Extérieurs",
      slug: "produits-exterieurs",
      subcategories: [
        {
          id: "clotures-enclos",
          name: "Clôtures & Enclos",
          slug: "clotures-enclos",
          subcategories: [
            { id: "clotures-animaux", name: "clôtures pour animaux", slug: "clotures-animaux" },
            { id: "enclos", name: "enclos", slug: "enclos" }
          ]
        },
        {
          id: "abris-exterieurs",
          name: "Abris Extérieurs",
          slug: "abris-exterieurs",
          subcategories: [
            { id: "abris-exterieurs-animaux", name: "abris extérieurs", slug: "abris-exterieurs-animaux" }
          ]
        },
        {
          id: "alimentation-automatique",
          name: "Alimentation Automatique",
          slug: "alimentation-automatique",
          subcategories: [
            { id: "mangeoires-auto", name: "mangeoires automatiques", slug: "mangeoires-auto" },
            { id: "systemes-abreuvement", name: "systèmes d'abreuvement", slug: "systemes-abreuvement" }
          ]
        },
        {
          id: "equipements-elevage-exterieur",
          name: "Équipements Élevage Extérieur",
          slug: "equipements-elevage-exterieur",
          subcategories: [
            { id: "materiel-plein-air", name: "matériel pour élevage en plein air", slug: "materiel-plein-air" }
          ]
        },
        {
          id: "confort-thermique",
          name: "Confort Thermique",
          slug: "confort-thermique",
          subcategories: [
            { id: "lampes-chauffantes", name: "lampes chauffantes", slug: "lampes-chauffantes" }
          ]
        },
        {
          id: "accessoires-volières",
          name: "Accessoires Volières & Basse-Cour",
          slug: "accessoires-volières",
          subcategories: [
            { id: "materiel-volières", name: "matériel pour volières & basses-cour", slug: "materiel-volières" }
          ]
        }
      ]
    }
  ]
};