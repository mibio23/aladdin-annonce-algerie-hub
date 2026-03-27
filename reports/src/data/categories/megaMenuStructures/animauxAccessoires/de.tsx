import { MenuCategory } from "../../../categoryTypes";
import { PawPrint } from "lucide-react";

export const animauxAccessoiresDe: MenuCategory = {
  id: "animaux-accessoires",
  name: "Tiere & Zubehör",
  slug: "animaux-accessoires",
  icon: <PawPrint className="w-4 h-4" />,
  subcategories: [
    {
      id: "animaux-domestiques",
      name: "Haustiere",
      slug: "animaux-domestiques",
      subcategories: [
        {
          id: "chiens",
          name: "Hunde",
          slug: "chiens",
          subcategories: [
            { id: "chiots-races", name: "Rassenwelpen", slug: "chiots-races" },
            { id: "chiens-adultes", name: "Erwachsene Hunde", slug: "chiens-adultes" },
            { id: "chiens-dresses", name: "Abgerichtete Hunde", slug: "chiens-dresses" }
          ]
        },
        {
          id: "chats",
          name: "Katzen",
          slug: "chats",
          subcategories: [
            { id: "chatons-races", name: "Rassenkätzchen", slug: "chatons-races" },
            { id: "chats-adultes", name: "Erwachsene Katzen", slug: "chats-adultes" }
          ]
        },
        { id: "oiseaux", name: "Vögel", slug: "oiseaux", subcategories: [
          { id: "oiseaux-rares", name: "Seltene Vögel", slug: "oiseaux-rares" },
          { id: "canaris", name: "Kanarienvögel", slug: "canaris" }
        ] },
        { id: "poissons", name: "Fische", slug: "poissons", subcategories: [
          { id: "poissons-aquarium", name: "Aquariumfische", slug: "poissons-aquarium" }
        ] },
        { id: "rongeurs", name: "Nagetiere", slug: "rongeurs", subcategories: [
          { id: "lapins", name: "Kaninchen", slug: "lapins" },
          { id: "hamsters", name: "Hamster", slug: "hamsters" }
        ] },
        { id: "reptiles", name: "Reptilien", slug: "reptiles", subcategories: [
          { id: "tortues", name: "Schildkröten", slug: "tortues" }
        ] }
      ]
    },
    {
      id: "animaux-elevage",
      name: "Nutztiere",
      slug: "animaux-elevage",
      subcategories: [
        { id: "ovins", name: "Schafe", slug: "ovins" },
        { id: "bovins", name: "Rinder", slug: "bovins" },
        { id: "caprins", name: "Ziegen", slug: "caprins" },
        { id: "volailles", name: "Geflügel", slug: "volailles" },
        { id: "equides", name: "Pferde", slug: "equides" }
      ]
    },
    {
      id: "nourriture-soins",
      name: "Tiernahrung & Pflege",
      slug: "nourriture-soins",
      subcategories: [
        {
          id: "alimentation-chiens-chats",
          name: "Hunde- & Katzenfutter",
          slug: "alimentation-chiens-chats",
          subcategories: [
            { id: "croquettes", name: "Trockenfutter", slug: "croquettes" },
            { id: "patees", name: "Nassfutter", slug: "patees" },
            { id: "friandises", name: "Leckerli", slug: "friandises" }
          ]
        },
        {
          id: "alimentation-oiseaux",
          name: "Vogelfutter",
          slug: "alimentation-oiseaux",
          subcategories: [
            { id: "melanges-oiseaux", name: "Vogelsamenmischungen", slug: "melanges-oiseaux" }
          ]
        },
        {
          id: "alimentation-poissons",
          name: "Fischfutter",
          slug: "alimentation-poissons",
          subcategories: [
            { id: "aliments-poissons", name: "Fischfutter", slug: "aliments-poissons" }
          ]
        },
        {
          id: "soins-hygiene",
          name: "Pflege & Hygiene",
          slug: "soins-hygiene",
          subcategories: [
            { id: "produits-hygiene", name: "Hygieneprodukte", slug: "produits-hygiene" },
            { id: "shampoings", name: "Shampoos", slug: "shampoings" },
            { id: "antiparasitaires", name: "Antiparasitika", slug: "antiparasitaires" },
            { id: "anti-tiques", name: "Zeckenschutz", slug: "anti-tiques" },
            { id: "produits-veterinaires", name: "Veterinärprodukte", slug: "produits-veterinaires" }
          ]
        },
        {
          id: "complements-alimentaires",
          name: "Nahrungsergänzungsmittel",
          slug: "complements-alimentaires",
          subcategories: [
            { id: "vitamines", name: "Vitamine", slug: "vitamines" }
          ]
        }
      ]
    },
    {
      id: "accessoires-equipements",
      name: "Zubehör & Ausstattung",
      slug: "accessoires-equipements",
      subcategories: [
        {
          id: "accessoires-promenade",
          name: "Spaziergäng-Zubehör",
          slug: "accessoires-promenade",
          subcategories: [
            { id: "laisses", name: "Leinen", slug: "laisses" },
            { id: "colliers", name: "Halsbänder", slug: "colliers" },
            { id: "harnais", name: "Geschirre", slug: "harnais" }
          ]
        },
        {
          id: "habitats",
          name: "Unterkünfte",
          slug: "habitats",
          subcategories: [
            { id: "cages", name: "Käfige", slug: "cages" },
            { id: "volières", name: "Voliere", slug: "volières" },
            { id: "niches", name: "Hundehütten", slug: "niches" },
            { id: "aquariums", name: "Aquarien", slug: "aquariums" },
            { id: "terrariums", name: "Terrarien", slug: "terrariums" }
          ]
        },
        {
          id: "confort-dodo",
          name: "Komfort & Schlaf",
          slug: "confort-dodo",
          subcategories: [
            { id: "paniers", name: "Körbe", slug: "paniers" },
            { id: "coussins", name: "Kissen", slug: "coussins" },
            { id: "arbres-chat", name: "Kratzbäume", slug: "arbres-chat" }
          ]
        },
        {
          id: "alimentation-accessoires",
          name: "Futter & Zubehör",
          slug: "alimentation-accessoires",
          subcategories: [
            { id: "gamelles", name: "Futternäpfe", slug: "gamelles" },
            { id: "distributeurs-auto", name: "Automatische Futterspender", slug: "distributeurs-auto" },
            { id: "fontaines-eau", name: "Wasserbrunnen", slug: "fontaines-eau" }
          ]
        },
        {
          id: "litières-hygiene",
          name: "Katzenstreu & Hygiene",
          slug: "litières-hygiene",
          subcategories: [
            { id: "litières", name: "Katzenstreu", slug: "litières" },
            { id: "bacs-litiere", name: "Katzentoiletten", slug: "bacs-litiere" }
          ]
        },
        {
          id: "jouets-loisirs",
          name: "Spielzeug & Freizeit",
          slug: "jouets-loisirs",
          subcategories: [
            { id: "jouets", name: "Spielzeug", slug: "jouets" }
          ]
        },
        {
          id: "transport",
          name: "Transport",
          slug: "transport",
          subcategories: [
            { id: "paniers-transport", name: "Transportkörbe", slug: "paniers-transport" }
          ]
        }
      ]
    },
    {
      id: "elevage-reproduction",
      name: "Zucht & Fortpflanzung",
      slug: "elevage-reproduction",
      subcategories: [
        {
          id: "materiel-elevage",
          name: "Zuchtausrüstung",
          slug: "materiel-elevage",
          subcategories: [
            { id: "incubateurs", name: "Brutapparate", slug: "incubateurs" },
            { id: "couveuses", name: "Brutmaschinen", slug: "couveuses" },
            { id: "cages-elevage", name: "Zuchtkäfige", slug: "cages-elevage" }
          ]
        },
        {
          id: "accessoires-reproduction",
          name: "Fortpflanzungszubehör",
          slug: "accessoires-reproduction",
          subcategories: [
            { id: "accessoires-accouplement", name: "Paarungszubehör", slug: "accessoires-accouplement" }
          ]
        },
        {
          id: "reproducteurs-selectionnes",
          name: "Ausgewählte Zuchttiere",
          slug: "reproducteurs-selectionnes",
          subcategories: [
            { id: "reproducteurs", name: "Ausgewählte Zuchttiere", slug: "reproducteurs" }
          ]
        },
        {
          id: "jeunes-animaux",
          name: "Jungtiere",
          slug: "jeunes-animaux",
          subcategories: [
            { id: "poussins", name: "Küken", slug: "poussins" },
            { id: "agneaux", name: "Lämmer", slug: "agneaux" },
            { id: "chevreaux", name: "Zicklein", slug: "chevreaux" }
          ]
        },
        {
          id: "services-elevage",
          name: "Zuchtdienstleistungen",
          slug: "services-elevage",
          subcategories: [
            { id: "assistance-elevage", name: "Zuchtunterstützungsdienste", slug: "assistance-elevage" },
            { id: "conseils-specialises", name: "Spezialberatung", slug: "conseils-specialises" },
            { id: "genetique-selection", name: "Genetik & Selektion", slug: "genetique-selection" }
          ]
        }
      ]
    },
    {
      id: "services-animaliers",
      name: "Tierdienstleistungen",
      slug: "services-animaliers",
      subcategories: [
        {
          id: "toilettage",
          name: "Tierpflege",
          slug: "toilettage",
          subcategories: [
            { id: "toilettage-chiens", name: "Hundepflege", slug: "toilettage-chiens" },
            { id: "toilettage-chats", name: "Katzenpflege", slug: "toilettage-chats" }
          ]
        },
        {
          id: "dressage-education",
          name: "Abrichtung & Erziehung",
          slug: "dressage-education",
          subcategories: [
            { id: "dressage-canin", name: "Hundeabrichtung", slug: "dressage-canin" },
            { id: "education-canine", name: "Hundeerziehung", slug: "education-canine" }
          ]
        },
        {
          id: "pension-garde",
          name: "Pension & Betreuung",
          slug: "pension-garde",
          subcategories: [
            { id: "pension-animaux", name: "Tierpension & -betreuung", slug: "pension-animaux" }
          ]
        },
        {
          id: "promenades-soins",
          name: "Gassigehen & Pflege",
          slug: "promenades-soins",
          subcategories: [
            { id: "promenades", name: "Gassigehen", slug: "promenades" },
            { id: "soins-domicile", name: "Hausbesuchspflege", slug: "soins-domicile" }
          ]
        },
        {
          id: "comportement-adoption",
          name: "Verhalten & Adoption",
          slug: "comportement-adoption",
          subcategories: [
            { id: "consultation-comportementaliste", name: "Verhaltenstherapie", slug: "consultation-comportementaliste" },
            { id: "adoption", name: "Adoption", slug: "adoption" }
          ]
        },
        {
          id: "services-speciaux",
          name: "Spezialdienste",
          slug: "services-speciaux",
          subcategories: [
            { id: "photographie-animaliere", name: "Tierfotografie", slug: "photographie-animaliere" },
            { id: "transport-animaux", name: "Tiertransport", slug: "transport-animaux" },
            { id: "services-veterinaires", name: "Private Tierarztdienste", slug: "services-veterinaires" }
          ]
        }
      ]
    },
    {
      id: "produits-exterieurs",
      name: "Produkte & Outdoor-Zubehör",
      slug: "produits-exterieurs",
      subcategories: [
        {
          id: "clotures-enclos",
          name: "Zäune & Gehege",
          slug: "clotures-enclos",
          subcategories: [
            { id: "clotures-animaux", name: "Tierzäune", slug: "clotures-animaux" },
            { id: "enclos", name: "Gehege", slug: "enclos" }
          ]
        },
        {
          id: "abris-exterieurs",
          name: "Outdoor-Unterstände",
          slug: "abris-exterieurs",
          subcategories: [
            { id: "abris-exterieurs-animaux", name: "Outdoor-Unterstände", slug: "abris-exterieurs-animaux" }
          ]
        },
        {
          id: "alimentation-automatique",
          name: "Automatische Fütterung",
          slug: "alimentation-automatique",
          subcategories: [
            { id: "mangeoires-auto", name: "Automatische Futterautomaten", slug: "mangeoires-auto" },
            { id: "systemes-abreuvement", name: "Tränkesysteme", slug: "systemes-abreuvement" }
          ]
        },
        {
          id: "equipements-elevage-exterieur",
          name: "Outdoor-Zuchtausrüstung",
          slug: "equipements-elevage-exterieur",
          subcategories: [
            { id: "materiel-plein-air", name: "Outdoor-Zuchtausrüstung", slug: "materiel-plein-air" }
          ]
        },
        {
          id: "confort-thermique",
          name: "Thermischer Komfort",
          slug: "confort-thermique",
          subcategories: [
            { id: "lampes-chauffantes", name: "Wärmelampen", slug: "lampes-chauffantes" }
          ]
        },
        {
          id: "accessoires-volières",
          name: "Voliere- & Hühnerstall-Zubehör",
          slug: "accessoires-volières",
          subcategories: [
            { id: "materiel-volières", name: "Voliere- & Hühnerstall-Zubehör", slug: "materiel-volières" }
          ]
        }
      ]
    }
  ]
};