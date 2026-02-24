import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Users } from "lucide-react";

export const echangesPartageEn: MenuCategory = {
  id: "echanges-partage",
  name: "Exchanges & Sharing",
  slug: "echanges-partage",
  icon: <Users className="w-4 h-4" />,
  subcategories: [
    {
      id: "troc-objets",
      name: "Barter of Objects",
      slug: "troc-objets",
      subcategories: [
        { id: "echange-vetements", name: "clothing exchange", slug: "echange-vetements" },
        { id: "troc-electromenager", name: "appliances barter", slug: "troc-electromenager" },
        { id: "echange-telephones", name: "phones exchange", slug: "echange-telephones" },
        { id: "troc-meubles", name: "furniture barter", slug: "troc-meubles" },
        { id: "echange-livres", name: "books exchange", slug: "echange-livres" },
        { id: "troc-jouets", name: "toys barter", slug: "troc-jouets" },
        { id: "echange-outils", name: "tools exchange", slug: "echange-outils" }
      ]
    },
    {
      id: "don-gratuit",
      name: "Donation & Free",
      slug: "don-gratuit",
      subcategories: [
        { id: "objets-gratuits", name: "free items", slug: "objets-gratuits" },
        { id: "vetements-gratuits", name: "free clothing", slug: "vetements-gratuits" },
        { id: "dons-meubles", name: "furniture donations", slug: "dons-meubles" },
        { id: "dons-electro", name: "appliance donations", slug: "dons-electro" },
        { id: "dons-jouets", name: "toy donations", slug: "dons-jouets" },
        { id: "dons-divers", name: "misc donations", slug: "dons-divers" }
      ]
    },
    {
      id: "pret-objets",
      name: "Object Lending",
      slug: "pret-objets",
      subcategories: [
        { id: "pret-outils", name: "tools lending", slug: "pret-outils" },
        { id: "pret-appareils", name: "devices lending", slug: "pret-appareils" },
        { id: "pret-velos", name: "bike lending", slug: "pret-velos" },
        { id: "pret-materiel-pro", name: "pro equipment lending", slug: "pret-materiel-pro" },
        { id: "pret-equipements-maison", name: "home equipment lending", slug: "pret-equipements-maison" }
      ]
    },
    {
      id: "partage-competences",
      name: "Skills Sharing",
      slug: "partage-competences",
      subcategories: [
        { id: "cours-gratuits", name: "free courses", slug: "cours-gratuits" },
        { id: "echanges-competences", name: "skills exchange", slug: "echanges-competences" },
        { id: "ateliers-partages", name: "shared workshops", slug: "ateliers-partages" },
        { id: "bricolage-entraide", name: "DIY mutual help", slug: "bricolage-entraide" },
        { id: "soutien-scolaire", name: "tutoring", slug: "soutien-scolaire" }
      ]
    },
    {
      id: "carpooling-deplacements",
      name: "Carpooling & Travel",
      slug: "carpooling-deplacements",
      subcategories: [
        { id: "covoiturage-local", name: "local carpool", slug: "covoiturage-local" },
        { id: "partage-trajet", name: "trip sharing", slug: "partage-trajet" },
        { id: "transport-solidaire", name: "solidarity transport", slug: "transport-solidaire" },
        { id: "livraison-solidaire", name: "solidarity delivery", slug: "livraison-solidaire" }
      ]
    },
    {
      id: "partage-habitat",
      name: "Housing Sharing",
      slug: "partage-habitat",
      subcategories: [
        { id: "cohabitation-solidaire", name: "solidarity cohabitation", slug: "cohabitation-solidaire" },
        { id: "colocation-echange", name: "exchange-based colocation", slug: "colocation-echange" },
        { id: "accueil-temporaire", name: "temporary hosting", slug: "accueil-temporaire" },
        { id: "echange-maison", name: "home exchange", slug: "echange-maison" }
      ]
    },
    {
      id: "echange-services",
      name: "Service Exchange",
      slug: "echange-services",
      subcategories: [
        { id: "service-contre-service", name: "service for service", slug: "service-contre-service" },
        { id: "aide-mutuelle", name: "mutual help", slug: "aide-mutuelle" },
        { id: "reparation-echange", name: "repair exchange", slug: "reparation-echange" },
        { id: "menage-contre-aide", name: "housework for help", slug: "menage-contre-aide" }
      ]
    },
    {
      id: "communaute-entraide",
      name: "Community & Mutual Aid",
      slug: "communaute-entraide",
      subcategories: [
        { id: "entraide-quartier", name: "neighborhood help", slug: "entraide-quartier" },
        { id: "recuperation-objets", name: "objects recovery", slug: "recuperation-objets" },
        { id: "partage-alimentaire", name: "food sharing", slug: "partage-alimentaire" },
        { id: "solidarite-locale", name: "local solidarity", slug: "solidarite-locale" }
      ]
    },
    {
      id: "echange-culturel",
      name: "Cultural Exchange",
      slug: "echange-culturel",
      subcategories: [
        { id: "echange-livres", name: "books exchange", slug: "echange-livres" },
        { id: "partage-musique", name: "music sharing", slug: "partage-musique" },
        { id: "partage-jeux", name: "games sharing", slug: "partage-jeux" },
        { id: "activites-communes", name: "shared activities", slug: "activites-communes" },
        { id: "sorties-partagees", name: "shared outings", slug: "sorties-partagees" }
      ]
    },
    {
      id: "recuperation-reemploi",
      name: "Recovery & Reuse",
      slug: "recuperation-reemploi",
      subcategories: [
        { id: "recyclage-objets", name: "objects recycling", slug: "recyclage-objets" },
        { id: "recuperation-materiaux", name: "materials recovery", slug: "recuperation-materiaux" },
        { id: "recuperation-meubles", name: "furniture recovery", slug: "recuperation-meubles" },
        { id: "upcycling-creatif", name: "creative upcycling", slug: "upcycling-creatif" }
      ]
    }
  ]
};