import { MenuCategory } from "../../../categoryTypes";
import { PawPrint } from "lucide-react";

export const animauxAccessoiresEn: MenuCategory = {
  id: "animaux-accessoires",
  name: "Animals & Accessories",
  slug: "animaux-accessoires",
  icon: <PawPrint className="w-4 h-4" />,
  subcategories: [
    {
      id: "animaux-domestiques",
      name: "Pets",
      slug: "animaux-domestiques",
      subcategories: [
        {
          id: "chiens",
          name: "Dogs",
          slug: "chiens",
          subcategories: [
            { id: "chiots-races", name: "pedigree puppies", slug: "chiots-races" },
            { id: "chiens-adultes", name: "adult dogs", slug: "chiens-adultes" },
            { id: "chiens-dresses", name: "trained dogs", slug: "chiens-dresses" }
          ]
        },
        {
          id: "chats",
          name: "Cats",
          slug: "chats",
          subcategories: [
            { id: "chatons-races", name: "pedigree kittens", slug: "chatons-races" },
            { id: "chats-adultes", name: "adult cats", slug: "chats-adultes" }
          ]
        },
        { id: "oiseaux", name: "birds", slug: "oiseaux", subcategories: [
          { id: "oiseaux-rares", name: "rare birds", slug: "oiseaux-rares" },
          { id: "canaris", name: "canaries", slug: "canaris" }
        ] },
        { id: "poissons", name: "fish", slug: "poissons", subcategories: [
          { id: "poissons-aquarium", name: "aquarium fish", slug: "poissons-aquarium" }
        ] },
        { id: "rongeurs", name: "rodents", slug: "rongeurs", subcategories: [
          { id: "lapins", name: "rabbits", slug: "lapins" },
          { id: "hamsters", name: "hamsters", slug: "hamsters" }
        ] },
        { id: "reptiles", name: "reptiles", slug: "reptiles", subcategories: [
          { id: "tortues", name: "turtles", slug: "tortues" }
        ] }
      ]
    },
    {
      id: "animaux-elevage",
      name: "Farm Animals",
      slug: "animaux-elevage",
      subcategories: [
        { id: "ovins", name: "sheep", slug: "ovins" },
        { id: "bovins", name: "cattle", slug: "bovins" },
        { id: "caprins", name: "goats", slug: "caprins" },
        { id: "volailles", name: "poultry", slug: "volailles" },
        { id: "equides", name: "equines", slug: "equides" }
      ]
    },
    {
      id: "nourriture-soins",
      name: "Food & Animal Care",
      slug: "nourriture-soins",
      subcategories: [
        {
          id: "alimentation-chiens-chats",
          name: "Dog & Cat Food",
          slug: "alimentation-chiens-chats",
          subcategories: [
            { id: "croquettes", name: "kibble", slug: "croquettes" },
            { id: "patees", name: "wet food", slug: "patees" },
            { id: "friandises", name: "treats", slug: "friandises" }
          ]
        },
        {
          id: "alimentation-oiseaux",
          name: "Bird Food",
          slug: "alimentation-oiseaux",
          subcategories: [
            { id: "melanges-oiseaux", name: "bird seed mixes", slug: "melanges-oiseaux" }
          ]
        },
        {
          id: "alimentation-poissons",
          name: "Fish Food",
          slug: "alimentation-poissons",
          subcategories: [
            { id: "aliments-poissons", name: "fish food", slug: "aliments-poissons" }
          ]
        },
        {
          id: "soins-hygiene",
          name: "Care & Hygiene",
          slug: "soins-hygiene",
          subcategories: [
            { id: "produits-hygiene", name: "hygiene products", slug: "produits-hygiene" },
            { id: "shampoings", name: "shampoos", slug: "shampoings" },
            { id: "antiparasitaires", name: "antiparasitics", slug: "antiparasitaires" },
            { id: "anti-tiques", name: "anti-tick products", slug: "anti-tiques" },
            { id: "produits-veterinaires", name: "veterinary products", slug: "produits-veterinaires" }
          ]
        },
        {
          id: "complements-alimentaires",
          name: "Food Supplements",
          slug: "complements-alimentaires",
          subcategories: [
            { id: "vitamines", name: "vitamins", slug: "vitamines" }
          ]
        }
      ]
    },
    {
      id: "accessoires-equipements",
      name: "Accessories & Equipment",
      slug: "accessoires-equipements",
      subcategories: [
        {
          id: "accessoires-promenade",
          name: "Walking Accessories",
          slug: "accessoires-promenade",
          subcategories: [
            { id: "laisses", name: "leashes", slug: "laisses" },
            { id: "colliers", name: "collars", slug: "colliers" },
            { id: "harnais", name: "harnesses", slug: "harnais" }
          ]
        },
        {
          id: "habitats",
          name: "Habitats",
          slug: "habitats",
          subcategories: [
            { id: "cages", name: "cages", slug: "cages" },
            { id: "volières", name: "aviaries", slug: "volières" },
            { id: "niches", name: "dog houses", slug: "niches" },
            { id: "aquariums", name: "aquariums", slug: "aquariums" },
            { id: "terrariums", name: "terrariums", slug: "terrariums" }
          ]
        },
        {
          id: "confort-dodo",
          name: "Comfort & Sleep",
          slug: "confort-dodo",
          subcategories: [
            { id: "paniers", name: "baskets", slug: "paniers" },
            { id: "coussins", name: "cushions", slug: "coussins" },
            { id: "arbres-chat", name: "cat trees", slug: "arbres-chat" }
          ]
        },
        {
          id: "alimentation-accessoires",
          name: "Feeding Accessories",
          slug: "alimentation-accessoires",
          subcategories: [
            { id: "gamelles", name: "bowls", slug: "gamelles" },
            { id: "distributeurs-auto", name: "automatic feeders", slug: "distributeurs-auto" },
            { id: "fontaines-eau", name: "water fountains", slug: "fontaines-eau" }
          ]
        },
        {
          id: "litières-hygiene",
          name: "Litter & Hygiene",
          slug: "litières-hygiene",
          subcategories: [
            { id: "litières", name: "litter", slug: "litières" },
            { id: "bacs-litiere", name: "litter boxes", slug: "bacs-litiere" }
          ]
        },
        {
          id: "jouets-loisirs",
          name: "Toys & Recreation",
          slug: "jouets-loisirs",
          subcategories: [
            { id: "jouets", name: "toys", slug: "jouets" }
          ]
        },
        {
          id: "transport",
          name: "Transport",
          slug: "transport",
          subcategories: [
            { id: "paniers-transport", name: "transport baskets", slug: "paniers-transport" }
          ]
        }
      ]
    },
    {
      id: "elevage-reproduction",
      name: "Breeding & Reproduction",
      slug: "elevage-reproduction",
      subcategories: [
        {
          id: "materiel-elevage",
          name: "Breeding Equipment",
          slug: "materiel-elevage",
          subcategories: [
            { id: "incubateurs", name: "incubators", slug: "incubateurs" },
            { id: "couveuses", name: "brooders", slug: "couveuses" },
            { id: "cages-elevage", name: "breeding cages", slug: "cages-elevage" }
          ]
        },
        {
          id: "accessoires-reproduction",
          name: "Reproduction Accessories",
          slug: "accessoires-reproduction",
          subcategories: [
            { id: "accessoires-accouplement", name: "mating accessories", slug: "accessoires-accouplement" }
          ]
        },
        {
          id: "reproducteurs-selectionnes",
          name: "Selected Breeders",
          slug: "reproducteurs-selectionnes",
          subcategories: [
            { id: "reproducteurs", name: "selected breeders", slug: "reproducteurs" }
          ]
        },
        {
          id: "jeunes-animaux",
          name: "Young Animals",
          slug: "jeunes-animaux",
          subcategories: [
            { id: "poussins", name: "chicks", slug: "poussins" },
            { id: "agneaux", name: "lambs", slug: "agneaux" },
            { id: "chevreaux", name: "kids", slug: "chevreaux" }
          ]
        },
        {
          id: "services-elevage",
          name: "Breeding Services",
          slug: "services-elevage",
          subcategories: [
            { id: "assistance-elevage", name: "breeding assistance services", slug: "assistance-elevage" },
            { id: "conseils-specialises", name: "specialized advice", slug: "conseils-specialises" },
            { id: "genetique-selection", name: "genetics & selection", slug: "genetique-selection" }
          ]
        }
      ]
    },
    {
      id: "services-animaliers",
      name: "Animal Services",
      slug: "services-animaliers",
      subcategories: [
        {
          id: "toilettage",
          name: "Grooming",
          slug: "toilettage",
          subcategories: [
            { id: "toilettage-chiens", name: "dog grooming", slug: "toilettage-chiens" },
            { id: "toilettage-chats", name: "cat grooming", slug: "toilettage-chats" }
          ]
        },
        {
          id: "dressage-education",
          name: "Training & Education",
          slug: "dressage-education",
          subcategories: [
            { id: "dressage-canin", name: "dog training", slug: "dressage-canin" },
            { id: "education-canine", name: "canine education", slug: "education-canine" }
          ]
        },
        {
          id: "pension-garde",
          name: "Boarding & Care",
          slug: "pension-garde",
          subcategories: [
            { id: "pension-animaux", name: "pet boarding & care", slug: "pension-animaux" }
          ]
        },
        {
          id: "promenades-soins",
          name: "Walks & Care",
          slug: "promenades-soins",
          subcategories: [
            { id: "promenades", name: "walks", slug: "promenades" },
            { id: "soins-domicile", name: "home care", slug: "soins-domicile" }
          ]
        },
        {
          id: "comportement-adoption",
          name: "Behavior & Adoption",
          slug: "comportement-adoption",
          subcategories: [
            { id: "consultation-comportementaliste", name: "behaviorist consultation", slug: "consultation-comportementaliste" },
            { id: "adoption", name: "adoption", slug: "adoption" }
          ]
        },
        {
          id: "services-speciaux",
          name: "Special Services",
          slug: "services-speciaux",
          subcategories: [
            { id: "photographie-animaliere", name: "pet photography", slug: "photographie-animaliere" },
            { id: "transport-animaux", name: "animal transport", slug: "transport-animaux" },
            { id: "services-veterinaires", name: "private veterinary services", slug: "services-veterinaires" }
          ]
        }
      ]
    },
    {
      id: "produits-exterieurs",
      name: "Outdoor Products",
      slug: "produits-exterieurs",
      subcategories: [
        {
          id: "clotures-enclos",
          name: "Fences & Enclosures",
          slug: "clotures-enclos",
          subcategories: [
            { id: "clotures-animaux", name: "animal fences", slug: "clotures-animaux" },
            { id: "enclos", name: "enclosures", slug: "enclos" }
          ]
        },
        {
          id: "abris-exterieurs",
          name: "Outdoor Shelters",
          slug: "abris-exterieurs",
          subcategories: [
            { id: "abris-exterieurs-animaux", name: "outdoor shelters", slug: "abris-exterieurs-animaux" }
          ]
        },
        {
          id: "alimentation-automatique",
          name: "Automatic Feeding",
          slug: "alimentation-automatique",
          subcategories: [
            { id: "mangeoires-auto", name: "automatic feeders", slug: "mangeoires-auto" },
            { id: "systemes-abreuvement", name: "watering systems", slug: "systemes-abreuvement" }
          ]
        },
        {
          id: "equipements-elevage-exterieur",
          name: "Outdoor Breeding Equipment",
          slug: "equipements-elevage-exterieur",
          subcategories: [
            { id: "materiel-plein-air", name: "outdoor breeding equipment", slug: "materiel-plein-air" }
          ]
        },
        {
          id: "confort-thermique",
          name: "Thermal Comfort",
          slug: "confort-thermique",
          subcategories: [
            { id: "lampes-chauffantes", name: "heat lamps", slug: "lampes-chauffantes" }
          ]
        },
        {
          id: "accessoires-volières",
          name: "Aviary & Coop Accessories",
          slug: "accessoires-volières",
          subcategories: [
            { id: "materiel-volières", name: "aviary & coop equipment", slug: "materiel-volières" }
          ]
        }
      ]
    }
  ]
};