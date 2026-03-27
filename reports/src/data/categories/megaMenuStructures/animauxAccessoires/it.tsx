import { MenuCategory } from "../../../categoryTypes";
import { PawPrint } from "lucide-react";

export const animauxAccessoiresIt: MenuCategory = {
  id: "animaux-accessoires",
  name: "Animali e Accessori",
  slug: "animaux-accessoires",
  icon: <PawPrint className="w-4 h-4" />,
  subcategories: [
    {
      id: "animaux-domestiques",
      name: "Animali Domestici",
      slug: "animaux-domestiques",
      subcategories: [
        {
          id: "chiens",
          name: "Cani",
          slug: "chiens",
          subcategories: [
            { id: "chiots-races", name: "cuccioli di razza", slug: "chiots-races" },
            { id: "chiens-adultes", name: "cani adulti", slug: "chiens-adultes" },
            { id: "chiens-dresses", name: "cani addestrati", slug: "chiens-dresses" }
          ]
        },
        {
          id: "chats",
          name: "Gatti",
          slug: "chats",
          subcategories: [
            { id: "chatons-races", name: "gattini di razza", slug: "chatons-races" },
            { id: "chats-adultes", name: "gatti adulti", slug: "chats-adultes" }
          ]
        },
        { id: "oiseaux", name: "Uccelli", slug: "oiseaux", subcategories: [
          { id: "oiseaux-rares", name: "uccelli rari", slug: "oiseaux-rares" },
          { id: "canaris", name: "canarini", slug: "canaris" }
        ] },
        { id: "poissons", name: "Pesci", slug: "poissons", subcategories: [
          { id: "poissons-aquarium", name: "pesci d'acquario", slug: "poissons-aquarium" }
        ] },
        { id: "rongeurs", name: "Roditori", slug: "rongeurs", subcategories: [
          { id: "lapins", name: "conigli", slug: "lapins" },
          { id: "hamsters", name: "criceti", slug: "hamsters" }
        ] },
        { id: "reptiles", name: "Rettili", slug: "reptiles", subcategories: [
          { id: "tortues", name: "tartarughe", slug: "tortues" }
        ] }
      ]
    },
    {
      id: "animaux-elevage",
      name: "Animali da Allevamento",
      slug: "animaux-elevage",
      subcategories: [
        { id: "ovins", name: "ovini", slug: "ovins" },
        { id: "bovins", name: "bovini", slug: "bovins" },
        { id: "caprins", name: "caprini", slug: "caprins" },
        { id: "volailles", name: "pollame", slug: "volailles" },
        { id: "equides", name: "equini", slug: "equides" }
      ]
    },
    {
      id: "nourriture-soins",
      name: "Cibo & Cura",
      slug: "nourriture-soins",
      subcategories: [
        {
          id: "alimentation-chiens-chats",
          name: "Alimentazione Cani & Gatti",
          slug: "alimentation-chiens-chats",
          subcategories: [
            { id: "croquettes", name: "crocchette", slug: "croquettes" },
            { id: "patees", name: "paté", slug: "patees" },
            { id: "friandises", name: "snack", slug: "friandises" }
          ]
        },
        {
          id: "alimentation-oiseaux",
          name: "Alimentazione Uccelli",
          slug: "alimentation-oiseaux",
          subcategories: [
            { id: "melanges-oiseaux", name: "miscele per uccelli", slug: "melanges-oiseaux" }
          ]
        },
        {
          id: "alimentation-poissons",
          name: "Alimentazione Pesci",
          slug: "alimentation-poissons",
          subcategories: [
            { id: "aliments-poissons", name: "cibo per pesci", slug: "aliments-poissons" }
          ]
        },
        {
          id: "soins-hygiene",
          name: "Cura & Igiene",
          slug: "soins-hygiene",
          subcategories: [
            { id: "produits-hygiene", name: "prodotti per l'igiene", slug: "produits-hygiene" },
            { id: "shampoings", name: "shampoo", slug: "shampoings" },
            { id: "antiparasitaires", name: "antiparassitari", slug: "antiparasitaires" },
            { id: "anti-tiques", name: "anti-zecche", slug: "anti-tiques" },
            { id: "produits-veterinaires", name: "prodotti veterinari", slug: "produits-veterinaires" }
          ]
        },
        {
          id: "complements-alimentaires",
          name: "Integratori Alimentari",
          slug: "complements-alimentaires",
          subcategories: [
            { id: "vitamines", name: "vitamine", slug: "vitamines" }
          ]
        }
      ]
    },
    {
      id: "accessoires-equipements",
      name: "Accessori & Attrezzature",
      slug: "accessoires-equipements",
      subcategories: [
        {
          id: "accessoires-promenade",
          name: "Accessori da Passeggiata",
          slug: "accessoires-promenade",
          subcategories: [
            { id: "laisses", name: "guinzagli", slug: "laisses" },
            { id: "colliers", name: "collari", slug: "colliers" },
            { id: "harnais", name: "pettorine", slug: "harnais" }
          ]
        },
        {
          id: "habitats",
          name: "Habitat",
          slug: "habitats",
          subcategories: [
            { id: "cages", name: "gabbie", slug: "cages" },
            { id: "volières", name: "voliere", slug: "volières" },
            { id: "niches", name: "cucce", slug: "niches" },
            { id: "aquariums", name: "acquari", slug: "aquariums" },
            { id: "terrariums", name: "terrari", slug: "terrariums" }
          ]
        },
        {
          id: "confort-dodo",
          name: "Comfort & Riposo",
          slug: "confort-dodo",
          subcategories: [
            { id: "paniers", name: "ceste", slug: "paniers" },
            { id: "coussins", name: "cuscini", slug: "coussins" },
            { id: "arbres-chat", name: "tiragraffi", slug: "arbres-chat" }
          ]
        },
        {
          id: "alimentation-accessoires",
          name: "Accessori per l'Alimentazione",
          slug: "alimentation-accessoires",
          subcategories: [
            { id: "gamelles", name: "ciotole", slug: "gamelles" },
            { id: "distributeurs-auto", name: "distributori automatici", slug: "distributeurs-auto" },
            { id: "fontaines-eau", name: "fontane d'acqua", slug: "fontaines-eau" }
          ]
        },
        {
          id: "litières-hygiene",
          name: "Lettiera & Igiene",
          slug: "litières-hygiene",
          subcategories: [
            { id: "litières", name: "lettiere", slug: "litières" },
            { id: "bacs-litiere", name: "cassette igieniche", slug: "bacs-litiere" }
          ]
        },
        {
          id: "jouets-loisirs",
          name: "Giocattoli & Svago",
          slug: "jouets-loisirs",
          subcategories: [
            { id: "jouets", name: "giocattoli", slug: "jouets" }
          ]
        },
        {
          id: "transport",
          name: "Trasporto",
          slug: "transport",
          subcategories: [
            { id: "paniers-transport", name: "trasportini", slug: "paniers-transport" }
          ]
        }
      ]
    },
    {
      id: "elevage-reproduction",
      name: "Allevamento & Riproduzione",
      slug: "elevage-reproduction",
      subcategories: [
        {
          id: "materiel-elevage",
          name: "Attrezzature per Allevamento",
          slug: "materiel-elevage",
          subcategories: [
            { id: "incubateurs", name: "incubatrici", slug: "incubateurs" },
            { id: "couveuses", name: "covatrici", slug: "couveuses" },
            { id: "cages-elevage", name: "gabbie da allevamento", slug: "cages-elevage" }
          ]
        },
        {
          id: "accessoires-reproduction",
          name: "Accessori per Riproduzione",
          slug: "accessoires-reproduction",
          subcategories: [
            { id: "accessoires-accouplement", name: "accessori per accoppiamento", slug: "accessoires-accouplement" }
          ]
        },
        {
          id: "reproducteurs-selectionnes",
          name: "Riproduttori Selezionati",
          slug: "reproducteurs-selectionnes",
          subcategories: [
            { id: "reproducteurs", name: "riproduttori selezionati", slug: "reproducteurs" }
          ]
        },
        {
          id: "jeunes-animaux",
          name: "Giovani Animali",
          slug: "jeunes-animaux",
          subcategories: [
            { id: "poussins", name: "pulcini", slug: "poussins" },
            { id: "agneaux", name: "agnelli", slug: "agneaux" },
            { id: "chevreaux", name: "capretti", slug: "chevreaux" }
          ]
        },
        {
          id: "services-elevage",
          name: "Servizi di Allevamento",
          slug: "services-elevage",
          subcategories: [
            { id: "assistance-elevage", name: "servizi di assistenza all'allevamento", slug: "assistance-elevage" },
            { id: "conseils-specialises", name: "consigli specializzati", slug: "conseils-specialises" },
            { id: "genetique-selection", name: "genetica & selezione", slug: "genetique-selection" }
          ]
        }
      ]
    },
    {
      id: "services-animaliers",
      name: "Servizi per Animali",
      slug: "services-animaliers",
      subcategories: [
        {
          id: "toilettage",
          name: "Toelettatura",
          slug: "toilettage",
          subcategories: [
            { id: "toilettage-chiens", name: "toelettatura cani", slug: "toilettage-chiens" },
            { id: "toilettage-chats", name: "toelettatura gatti", slug: "toilettage-chats" }
          ]
        },
        {
          id: "dressage-education",
          name: "Addestramento & Educazione",
          slug: "dressage-education",
          subcategories: [
            { id: "dressage-canin", name: "addestramento cinofilo", slug: "dressage-canin" },
            { id: "education-canine", name: "educazione cinofila", slug: "education-canine" }
          ]
        },
        {
          id: "pension-garde",
          name: "Pensione & Custodia",
          slug: "pension-garde",
          subcategories: [
            { id: "pension-animaux", name: "pensione & custodia animali", slug: "pension-animaux" }
          ]
        },
        {
          id: "promenades-soins",
          name: "Passeggiate & Cure",
          slug: "promenades-soins",
          subcategories: [
            { id: "promenades", name: "passeggiate", slug: "promenades" },
            { id: "soins-domicile", name: "cure a domicilio", slug: "soins-domicile" }
          ]
        },
        {
          id: "comportement-adoption",
          name: "Comportamento & Adozione",
          slug: "comportement-adoption",
          subcategories: [
            { id: "consultation-comportementaliste", name: "consultazione comportamentale", slug: "consultation-comportementaliste" },
            { id: "adoption", name: "adozione", slug: "adoption" }
          ]
        },
        {
          id: "services-speciaux",
          name: "Servizi Speciali",
          slug: "services-speciaux",
          subcategories: [
            { id: "photographie-animaliere", name: "fotografia di animali", slug: "photographie-animaliere" },
            { id: "transport-animaux", name: "trasporto animali", slug: "transport-animaux" },
            { id: "services-veterinaires", name: "servizi veterinari privati", slug: "services-veterinaires" }
          ]
        }
      ]
    },
    {
      id: "produits-exterieurs",
      name: "Prodotti & Accessori Esterni",
      slug: "produits-exterieurs",
      subcategories: [
        {
          id: "clotures-enclos",
          name: "Recinzioni & Recinti",
          slug: "clotures-enclos",
          subcategories: [
            { id: "clotures-animaux", name: "recinzioni per animali", slug: "clotures-animaux" },
            { id: "enclos", name: "recinti", slug: "enclos" }
          ]
        },
        {
          id: "abris-exterieurs",
          name: "Rifugi Esterni",
          slug: "abris-exterieurs",
          subcategories: [
            { id: "abris-exterieurs-animaux", name: "rifugi esterni", slug: "abris-exterieurs-animaux" }
          ]
        },
        {
          id: "alimentation-automatique",
          name: "Alimentazione Automatica",
          slug: "alimentation-automatique",
          subcategories: [
            { id: "mangeoires-auto", name: "mangiatoie automatiche", slug: "mangeoires-auto" },
            { id: "systemes-abreuvement", name: "sistemi di abbeveraggio", slug: "systemes-abreuvement" }
          ]
        },
        {
          id: "equipements-elevage-exterieur",
          name: "Attrezzature Allevamento Esterno",
          slug: "equipements-elevage-exterieur",
          subcategories: [
            { id: "materiel-plein-air", name: "attrezzature per allevamento all'aperto", slug: "materiel-plein-air" }
          ]
        },
        {
          id: "confort-thermique",
          name: "Comfort Termico",
          slug: "confort-thermique",
          subcategories: [
            { id: "lampes-chauffantes", name: "lampade riscaldanti", slug: "lampes-chauffantes" }
          ]
        },
        {
          id: "accessoires-volières",
          name: "Accessori Voliere & Aia",
          slug: "accessoires-volières",
          subcategories: [
            { id: "materiel-volières", name: "materiale per voliere & aia", slug: "materiel-volières" }
          ]
        }
      ]
    }
  ]
};
