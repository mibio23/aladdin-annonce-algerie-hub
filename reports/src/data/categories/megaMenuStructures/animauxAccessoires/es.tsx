import { MenuCategory } from "../../../categoryTypes";
import { PawPrint } from "lucide-react";

export const animauxAccessoiresEs: MenuCategory = {
  id: "animaux-accessoires",
  name: "Animales y Accesorios",
  slug: "animaux-accessoires",
  icon: <PawPrint className="w-4 h-4" />,
  subcategories: [
    {
      id: "animaux-domestiques",
      name: "Animales Domésticos",
      slug: "animaux-domestiques",
      subcategories: [
        {
          id: "chiens",
          name: "Perros",
          slug: "chiens",
          subcategories: [
            { id: "chiots-races", name: "cachorros de raza", slug: "chiots-races" },
            { id: "chiens-adultes", name: "perros adultos", slug: "chiens-adultes" },
            { id: "chiens-dresses", name: "perros entrenados", slug: "chiens-dresses" }
          ]
        },
        {
          id: "chats",
          name: "Gatos",
          slug: "chats",
          subcategories: [
            { id: "chatons-races", name: "gatitos de raza", slug: "chatons-races" },
            { id: "chats-adultes", name: "gatos adultos", slug: "chats-adultes" }
          ]
        },
        { id: "oiseaux", name: "aves", slug: "oiseaux", subcategories: [
          { id: "oiseaux-rares", name: "aves raras", slug: "oiseaux-rares" },
          { id: "canaris", name: "canarios", slug: "canaris" }
        ] },
        { id: "poissons", name: "peces", slug: "poissons", subcategories: [
          { id: "poissons-aquarium", name: "peces de acuario", slug: "poissons-aquarium" }
        ] },
        { id: "rongeurs", name: "roedores", slug: "rongeurs", subcategories: [
          { id: "lapins", name: "conejos", slug: "lapins" },
          { id: "hamsters", name: "hámsters", slug: "hamsters" }
        ] },
        { id: "reptiles", name: "reptiles", slug: "reptiles", subcategories: [
          { id: "tortues", name: "tortugas", slug: "tortues" }
        ] }
      ]
    },
    {
      id: "animaux-elevage",
      name: "Animales de Cría",
      slug: "animaux-elevage",
      subcategories: [
        { id: "ovins", name: "ovinos", slug: "ovins" },
        { id: "bovins", name: "bovinos", slug: "bovins" },
        { id: "caprins", name: "caprinos", slug: "caprins" },
        { id: "volailles", name: "aves de corral", slug: "volailles" },
        { id: "equides", name: "equinos", slug: "equides" }
      ]
    },
    {
      id: "nourriture-soins",
      name: "Alimentación & Cuidado Animal",
      slug: "nourriture-soins",
      subcategories: [
        {
          id: "alimentation-chiens-chats",
          name: "Alimentación Perros & Gatos",
          slug: "alimentation-chiens-chats",
          subcategories: [
            { id: "croquettes", name: "croquetas", slug: "croquettes" },
            { id: "patees", name: "patés", slug: "patees" },
            { id: "friandises", name: "golosinas", slug: "friandises" }
          ]
        },
        {
          id: "alimentation-oiseaux",
          name: "Alimentación Aves",
          slug: "alimentation-oiseaux",
          subcategories: [
            { id: "melanges-oiseaux", name: "mezclas para aves", slug: "melanges-oiseaux" }
          ]
        },
        {
          id: "alimentation-poissons",
          name: "Alimentación Peces",
          slug: "alimentation-poissons",
          subcategories: [
            { id: "aliments-poissons", name: "alimentos para peces", slug: "aliments-poissons" }
          ]
        },
        {
          id: "soins-hygiene",
          name: "Cuidado & Higiene",
          slug: "soins-hygiene",
          subcategories: [
            { id: "produits-hygiene", name: "productos de higiene", slug: "produits-hygiene" },
            { id: "shampoings", name: "champús", slug: "shampoings" },
            { id: "antiparasitaires", name: "antiparasitarios", slug: "antiparasitaires" },
            { id: "anti-tiques", name: "anti-garrapatas", slug: "anti-tiques" },
            { id: "produits-veterinaires", name: "productos veterinarios", slug: "produits-veterinaires" }
          ]
        },
        {
          id: "complements-alimentaires",
          name: "Complementos Alimenticios",
          slug: "complements-alimentaires",
          subcategories: [
            { id: "vitamines", name: "vitaminas", slug: "vitamines" }
          ]
        }
      ]
    },
    {
      id: "accessoires-equipements",
      name: "Accesorios & Equipos",
      slug: "accessoires-equipements",
      subcategories: [
        {
          id: "accessoires-promenade",
          name: "Accesorios de Paseo",
          slug: "accessoires-promenade",
          subcategories: [
            { id: "laisses", name: "correas", slug: "laisses" },
            { id: "colliers", name: "collares", slug: "colliers" },
            { id: "harnais", name: "arneses", slug: "harnais" }
          ]
        },
        {
          id: "habitats",
          name: "Hábitats",
          slug: "habitats",
          subcategories: [
            { id: "cages", name: "jaulas", slug: "cages" },
            { id: "volières", name: "pajareras", slug: "volières" },
            { id: "niches", name: "casetas", slug: "niches" },
            { id: "aquariums", name: "acuarios", slug: "aquariums" },
            { id: "terrariums", name: "terrarios", slug: "terrariums" }
          ]
        },
        {
          id: "confort-dodo",
          name: "Confort & Descanso",
          slug: "confort-dodo",
          subcategories: [
            { id: "paniers", name: "cestas", slug: "paniers" },
            { id: "coussins", name: "cojines", slug: "coussins" },
            { id: "arbres-chat", name: "árboles para gatos", slug: "arbres-chat" }
          ]
        },
        {
          id: "alimentation-accessoires",
          name: "Alimentación & Accesorios",
          slug: "alimentation-accessoires",
          subcategories: [
            { id: "gamelles", name: "tazones", slug: "gamelles" },
            { id: "distributeurs-auto", name: "dispensadores automáticos", slug: "distributeurs-auto" },
            { id: "fontaines-eau", name: "fuentes de agua", slug: "fontaines-eau" }
          ]
        },
        {
          id: "litières-hygiene",
          name: "Arena & Higiene",
          slug: "litières-hygiene",
          subcategories: [
            { id: "litières", name: "arenas", slug: "litières" },
            { id: "bacs-litiere", name: "bandejas de arena", slug: "bacs-litiere" }
          ]
        },
        {
          id: "jouets-loisirs",
          name: "Juguetes & Ocio",
          slug: "jouets-loisirs",
          subcategories: [
            { id: "jouets", name: "juguetes", slug: "jouets" }
          ]
        },
        {
          id: "transport",
          name: "Transporte",
          slug: "transport",
          subcategories: [
            { id: "paniers-transport", name: "cestas de transporte", slug: "paniers-transport" }
          ]
        }
      ]
    },
    {
      id: "elevage-reproduction",
      name: "Cría & Reproducción",
      slug: "elevage-reproduction",
      subcategories: [
        {
          id: "materiel-elevage",
          name: "Material de Cría",
          slug: "materiel-elevage",
          subcategories: [
            { id: "incubateurs", name: "incubadoras", slug: "incubateurs" },
            { id: "couveuses", name: "cobederas", slug: "couveuses" },
            { id: "cages-elevage", name: "jaulas de cría", slug: "cages-elevage" }
          ]
        },
        {
          id: "accessoires-reproduction",
          name: "Accesorios de Reproducción",
          slug: "accessoires-reproduction",
          subcategories: [
            { id: "accessoires-accouplement", name: "accesorios de apareamiento", slug: "accessoires-accouplement" }
          ]
        },
        {
          id: "reproducteurs-selectionnes",
          name: "Reproductores Seleccionados",
          slug: "reproducteurs-selectionnes",
          subcategories: [
            { id: "reproducteurs", name: "reproductores seleccionados", slug: "reproducteurs" }
          ]
        },
        {
          id: "jeunes-animaux",
          name: "Animales Jóvenes",
          slug: "jeunes-animaux",
          subcategories: [
            { id: "poussins", name: "polluelos", slug: "poussins" },
            { id: "agneaux", name: "corderos", slug: "agneaux" },
            { id: "chevreaux", name: "cabritos", slug: "chevreaux" }
          ]
        },
        {
          id: "services-elevage",
          name: "Servicios de Cría",
          slug: "services-elevage",
          subcategories: [
            { id: "assistance-elevage", name: "servicios de asistencia a la cría", slug: "assistance-elevage" },
            { id: "conseils-specialises", name: "asesoramiento especializado", slug: "conseils-specialises" },
            { id: "genetique-selection", name: "genética & selección", slug: "genetique-selection" }
          ]
        }
      ]
    },
    {
      id: "services-animaliers",
      name: "Servicios Animales",
      slug: "services-animaliers",
      subcategories: [
        {
          id: "toilettage",
          name: "Estética",
          slug: "toilettage",
          subcategories: [
            { id: "toilettage-chiens", name: "estética canina", slug: "toilettage-chiens" },
            { id: "toilettage-chats", name: "estética felina", slug: "toilettage-chats" }
          ]
        },
        {
          id: "dressage-education",
          name: "Adiestramiento & Educación",
          slug: "dressage-education",
          subcategories: [
            { id: "dressage-canin", name: "adiestramiento canino", slug: "dressage-canin" },
            { id: "education-canine", name: "educación canina", slug: "education-canine" }
          ]
        },
        {
          id: "pension-garde",
          name: "Pensión & Guardería",
          slug: "pension-garde",
          subcategories: [
            { id: "pension-animaux", name: "pensión & guardería de animales", slug: "pension-animaux" }
          ]
        },
        {
          id: "promenades-soins",
          name: "Paseos & Cuidados",
          slug: "promenades-soins",
          subcategories: [
            { id: "promenades", name: "paseos", slug: "promenades" },
            { id: "soins-domicile", name: "cuidados a domicilio", slug: "soins-domicile" }
          ]
        },
        {
          id: "comportement-adoption",
          name: "Comportamiento & Adopción",
          slug: "comportement-adoption",
          subcategories: [
            { id: "consultation-comportementaliste", name: "consulta etóloga", slug: "consultation-comportementaliste" },
            { id: "adoption", name: "adopción", slug: "adoption" }
          ]
        },
        {
          id: "services-speciaux",
          name: "Servicios Especiales",
          slug: "services-speciaux",
          subcategories: [
            { id: "photographie-animaliere", name: "fotografía animal", slug: "photographie-animaliere" },
            { id: "transport-animaux", name: "transporte de animales", slug: "transport-animaux" },
            { id: "services-veterinaires", name: "servicios veterinarios privados", slug: "services-veterinaires" }
          ]
        }
      ]
    },
    {
      id: "produits-exterieurs",
      name: "Productos & Accesorios Exteriores",
      slug: "produits-exterieurs",
      subcategories: [
        {
          id: "clotures-enclos",
          name: "Cercas & Recintos",
          slug: "clotures-enclos",
          subcategories: [
            { id: "clotures-animaux", name: "cercas para animales", slug: "clotures-animaux" },
            { id: "enclos", name: "recintos", slug: "enclos" }
          ]
        },
        {
          id: "abris-exterieurs",
          name: "Refugios Exteriores",
          slug: "abris-exterieurs",
          subcategories: [
            { id: "abris-exterieurs-animaux", name: "refugios exteriores", slug: "abris-exterieurs-animaux" }
          ]
        },
        {
          id: "alimentation-automatique",
          name: "Alimentación Automática",
          slug: "alimentation-automatique",
          subcategories: [
            { id: "mangeoires-auto", name: "comedores automáticos", slug: "mangeoires-auto" },
            { id: "systemes-abreuvement", name: "sistemas de abrevadero", slug: "systemes-abreuvement" }
          ]
        },
        {
          id: "equipements-elevage-exterieur",
          name: "Equipos Cría Exterior",
          slug: "equipements-elevage-exterieur",
          subcategories: [
            { id: "materiel-plein-air", name: "material para cría al aire libre", slug: "materiel-plein-air" }
          ]
        },
        {
          id: "confort-thermique",
          name: "Confort Térmico",
          slug: "confort-thermique",
          subcategories: [
            { id: "lampes-chauffantes", name: "lámparas calefactoras", slug: "lampes-chauffantes" }
          ]
        },
        {
          id: "accessoires-volières",
          name: "Accesorios Volieras & Gallineros",
          slug: "accessoires-volières",
          subcategories: [
            { id: "materiel-volières", name: "material para volieras & gallineros", slug: "materiel-volières" }
          ]
        }
      ]
    }
  ]
};