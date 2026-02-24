import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Users } from "lucide-react";

export const echangesPartageFr: MenuCategory = {
  id: "echanges-partage",
  name: "Échanges & Partage",
  slug: "echanges-partage",
  icon: <Users className="w-4 h-4" />,
  subcategories: [
    {
      id: "troc-objets",
      name: "Troc d’Objets",
      slug: "troc-objets",
      subcategories: [
        { id: "echange-vetements", name: "échange vêtements", slug: "echange-vetements" },
        { id: "troc-electromenager", name: "troc électroménager", slug: "troc-electromenager" },
        { id: "echange-telephones", name: "échange téléphones", slug: "echange-telephones" },
        { id: "troc-meubles", name: "troc meubles", slug: "troc-meubles" },
        { id: "echange-livres", name: "échange livres", slug: "echange-livres" },
        { id: "troc-jouets", name: "troc jouets", slug: "troc-jouets" },
        { id: "echange-outils", name: "échange outils", slug: "echange-outils" }
      ]
    },
    {
      id: "don-gratuit",
      name: "Don & Gratuit",
      slug: "don-gratuit",
      subcategories: [
        { id: "objets-gratuits", name: "objets gratuits", slug: "objets-gratuits" },
        { id: "vetements-gratuits", name: "vêtements gratuits", slug: "vetements-gratuits" },
        { id: "dons-meubles", name: "dons meubles", slug: "dons-meubles" },
        { id: "dons-electro", name: "dons électro", slug: "dons-electro" },
        { id: "dons-jouets", name: "dons jouets", slug: "dons-jouets" },
        { id: "dons-divers", name: "dons divers", slug: "dons-divers" }
      ]
    },
    {
      id: "pret-objets",
      name: "Prêt d’Objets",
      slug: "pret-objets",
      subcategories: [
        { id: "pret-outils", name: "prêt outils", slug: "pret-outils" },
        { id: "pret-appareils", name: "prêt appareils", slug: "pret-appareils" },
        { id: "pret-velos", name: "prêt vélos", slug: "pret-velos" },
        { id: "pret-materiel-pro", name: "prêt matériel pro", slug: "pret-materiel-pro" },
        { id: "pret-equipements-maison", name: "prêt équipements maison", slug: "pret-equipements-maison" }
      ]
    },
    {
      id: "partage-competences",
      name: "Partage de Compétences",
      slug: "partage-competences",
      subcategories: [
        { id: "cours-gratuits", name: "cours gratuits", slug: "cours-gratuits" },
        { id: "echanges-competences", name: "échanges compétences", slug: "echanges-competences" },
        { id: "ateliers-partages", name: "ateliers partagés", slug: "ateliers-partages" },
        { id: "bricolage-entraide", name: "bricolage entraide", slug: "bricolage-entraide" },
        { id: "soutien-scolaire", name: "soutien scolaire", slug: "soutien-scolaire" }
      ]
    },
    {
      id: "carpooling-deplacements",
      name: "Carpooling & Déplacements",
      slug: "carpooling-deplacements",
      subcategories: [
        { id: "covoiturage-local", name: "covoiturage local", slug: "covoiturage-local" },
        { id: "partage-trajet", name: "partage trajet", slug: "partage-trajet" },
        { id: "transport-solidaire", name: "transport solidaire", slug: "transport-solidaire" },
        { id: "livraison-solidaire", name: "livraison solidaire", slug: "livraison-solidaire" }
      ]
    },
    {
      id: "partage-habitat",
      name: "Partage Habitat",
      slug: "partage-habitat",
      subcategories: [
        { id: "cohabitation-solidaire", name: "cohabitation solidaire", slug: "cohabitation-solidaire" },
        { id: "colocation-echange", name: "colocation échange", slug: "colocation-echange" },
        { id: "accueil-temporaire", name: "accueil temporaire", slug: "accueil-temporaire" },
        { id: "echange-maison", name: "échange maison", slug: "echange-maison" }
      ]
    },
    {
      id: "echange-services",
      name: "Échange de Services",
      slug: "echange-services",
      subcategories: [
        { id: "service-contre-service", name: "service contre service", slug: "service-contre-service" },
        { id: "aide-mutuelle", name: "aide mutuelle", slug: "aide-mutuelle" },
        { id: "reparation-echange", name: "réparation échange", slug: "reparation-echange" },
        { id: "menage-contre-aide", name: "ménage contre aide", slug: "menage-contre-aide" }
      ]
    },
    {
      id: "communaute-entraide",
      name: "Communauté & Entraide",
      slug: "communaute-entraide",
      subcategories: [
        { id: "entraide-quartier", name: "entraide quartier", slug: "entraide-quartier" },
        { id: "recuperation-objets", name: "récupération objets", slug: "recuperation-objets" },
        { id: "partage-alimentaire", name: "partage alimentaire", slug: "partage-alimentaire" },
        { id: "solidarite-locale", name: "solidarité locale", slug: "solidarite-locale" }
      ]
    },
    {
      id: "echange-culturel",
      name: "Échange Culturel",
      slug: "echange-culturel",
      subcategories: [
        { id: "echange-livres", name: "échange livres", slug: "echange-livres" },
        { id: "partage-musique", name: "partage musique", slug: "partage-musique" },
        { id: "partage-jeux", name: "partage jeux", slug: "partage-jeux" },
        { id: "activites-communes", name: "activités communes", slug: "activites-communes" },
        { id: "sorties-partagees", name: "sorties partagées", slug: "sorties-partagees" }
      ]
    },
    {
      id: "recuperation-reemploi",
      name: "Récupération & Réemploi",
      slug: "recuperation-reemploi",
      subcategories: [
        { id: "recyclage-objets", name: "recyclage objets", slug: "recyclage-objets" },
        { id: "recuperation-materiaux", name: "récup matériaux", slug: "recuperation-materiaux" },
        { id: "recuperation-meubles", name: "récup meubles", slug: "recuperation-meubles" },
        { id: "upcycling-creatif", name: "upcycling créatif", slug: "upcycling-creatif" }
      ]
    }
  ]
};