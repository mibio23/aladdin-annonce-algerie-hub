import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Users } from "lucide-react";

export const echangesPartageEs: MenuCategory = {
  id: "echanges-partage",
  name: "Intercambios & Compartir",
  slug: "echanges-partage",
  icon: <Users className="w-4 h-4" />,
  subcategories: [
    {
      id: "troc-objets",
      name: "Trueque de Objetos",
      slug: "troc-objets",
      subcategories: [
        { id: "echange-vetements", name: "intercambio de ropa", slug: "echange-vetements" },
        { id: "troc-electromenager", name: "trueque de electrodomésticos", slug: "troc-electromenager" },
        { id: "echange-telephones", name: "intercambio de teléfonos", slug: "echange-telephones" },
        { id: "troc-meubles", name: "trueque de muebles", slug: "troc-meubles" },
        { id: "echange-livres", name: "intercambio de libros", slug: "echange-livres" },
        { id: "troc-jouets", name: "trueque de juguetes", slug: "troc-jouets" },
        { id: "echange-outils", name: "intercambio de herramientas", slug: "echange-outils" }
      ]
    },
    {
      id: "don-gratuit",
      name: "Donación & Gratis",
      slug: "don-gratuit",
      subcategories: [
        { id: "objets-gratuits", name: "objetos gratis", slug: "objets-gratuits" },
        { id: "vetements-gratuits", name: "ropa gratis", slug: "vetements-gratuits" },
        { id: "dons-meubles", name: "donación de muebles", slug: "dons-meubles" },
        { id: "dons-electro", name: "donación de electrodomésticos", slug: "dons-electro" },
        { id: "dons-jouets", name: "donación de juguetes", slug: "dons-jouets" },
        { id: "dons-divers", name: "donaciones varias", slug: "dons-divers" }
      ]
    },
    {
      id: "pret-objets",
      name: "Préstamo de Objetos",
      slug: "pret-objets",
      subcategories: [
        { id: "pret-outils", name: "préstamo de herramientas", slug: "pret-outils" },
        { id: "pret-appareils", name: "préstamo de aparatos", slug: "pret-appareils" },
        { id: "pret-velos", name: "préstamo de bicicletas", slug: "pret-velos" },
        { id: "pret-materiel-pro", name: "préstamo de equipo profesional", slug: "pret-materiel-pro" },
        { id: "pret-equipements-maison", name: "préstamo de equipos del hogar", slug: "pret-equipements-maison" }
      ]
    },
    {
      id: "partage-competences",
      name: "Compartir Competencias",
      slug: "partage-competences",
      subcategories: [
        { id: "cours-gratuits", name: "cursos gratuitos", slug: "cours-gratuits" },
        { id: "echanges-competences", name: "intercambio de competencias", slug: "echanges-competences" },
        { id: "ateliers-partages", name: "talleres compartidos", slug: "ateliers-partages" },
        { id: "bricolage-entraide", name: "bricolaje solidario", slug: "bricolage-entraide" },
        { id: "soutien-scolaire", name: "apoyo escolar", slug: "soutien-scolaire" }
      ]
    },
    {
      id: "carpooling-deplacements",
      name: "Carpooling & Desplazamientos",
      slug: "carpooling-deplacements",
      subcategories: [
        { id: "covoiturage-local", name: "coche compartido local", slug: "covoiturage-local" },
        { id: "partage-trajet", name: "compartir trayecto", slug: "partage-trajet" },
        { id: "transport-solidaire", name: "transporte solidario", slug: "transport-solidaire" },
        { id: "livraison-solidaire", name: "entrega solidaria", slug: "livraison-solidaire" }
      ]
    },
    {
      id: "partage-habitat",
      name: "Compartir Vivienda",
      slug: "partage-habitat",
      subcategories: [
        { id: "cohabitation-solidaire", name: "cohabitación solidaria", slug: "cohabitation-solidaire" },
        { id: "colocation-echange", name: "compartir piso por intercambio", slug: "colocation-echange" },
        { id: "accueil-temporaire", name: "acogida temporal", slug: "accueil-temporaire" },
        { id: "echange-maison", name: "intercambio de viviendas", slug: "echange-maison" }
      ]
    },
    {
      id: "echange-services",
      name: "Intercambio de Servicios",
      slug: "echange-services",
      subcategories: [
        { id: "service-contre-service", name: "servicio por servicio", slug: "service-contre-service" },
        { id: "aide-mutuelle", name: "ayuda mutua", slug: "aide-mutuelle" },
        { id: "reparation-echange", name: "reparación por intercambio", slug: "reparation-echange" },
        { id: "menage-contre-aide", name: "limpieza por ayuda", slug: "menage-contre-aide" }
      ]
    },
    {
      id: "communaute-entraide",
      name: "Comunidad & Ayuda",
      slug: "communaute-entraide",
      subcategories: [
        { id: "entraide-quartier", name: "ayuda del barrio", slug: "entraide-quartier" },
        { id: "recuperation-objets", name: "recuperación de objetos", slug: "recuperation-objets" },
        { id: "partage-alimentaire", name: "compartir alimentos", slug: "partage-alimentaire" },
        { id: "solidarite-locale", name: "solidaridad local", slug: "solidarite-locale" }
      ]
    },
    {
      id: "echange-culturel",
      name: "Intercambio Cultural",
      slug: "echange-culturel",
      subcategories: [
        { id: "echange-livres", name: "intercambio de libros", slug: "echange-livres" },
        { id: "partage-musique", name: "compartir música", slug: "partage-musique" },
        { id: "partage-jeux", name: "compartir juegos", slug: "partage-jeux" },
        { id: "activites-communes", name: "actividades comunes", slug: "activites-communes" },
        { id: "sorties-partagees", name: "salidas compartidas", slug: "sorties-partagees" }
      ]
    },
    {
      id: "recuperation-reemploi",
      name: "Recuperación & Reutilización",
      slug: "recuperation-reemploi",
      subcategories: [
        { id: "recyclage-objets", name: "reciclaje de objetos", slug: "recyclage-objets" },
        { id: "recuperation-materiaux", name: "recuperación de materiales", slug: "recuperation-materiaux" },
        { id: "recuperation-meubles", name: "recuperación de muebles", slug: "recuperation-meubles" },
        { id: "upcycling-creatif", name: "upcycling creativo", slug: "upcycling-creatif" }
      ]
    }
  ]
};