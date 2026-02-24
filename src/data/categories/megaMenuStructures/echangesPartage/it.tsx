import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Users } from "lucide-react";

export const echangesPartageIt: MenuCategory = {
  id: "echanges-partage",
  name: "Scambi & Condivisione",
  slug: "echanges-partage",
  icon: <Users className="w-4 h-4" />,
  subcategories: [
    {
      id: "troc-objets",
      name: "Baratto di Oggetti",
      slug: "troc-objets",
      subcategories: [
        { id: "echange-vetements", name: "scambio vestiti", slug: "echange-vetements" },
        { id: "troc-electromenager", name: "baratto elettrodomestici", slug: "troc-electromenager" },
        { id: "echange-telephones", name: "scambio telefoni", slug: "echange-telephones" },
        { id: "troc-meubles", name: "baratto mobili", slug: "troc-meubles" },
        { id: "echange-livres", name: "scambio libri", slug: "echange-livres" },
        { id: "troc-jouets", name: "baratto giocattoli", slug: "troc-jouets" },
        { id: "echange-outils", name: "scambio attrezzi", slug: "echange-outils" }
      ]
    },
    {
      id: "don-gratuit",
      name: "Donazione & Gratis",
      slug: "don-gratuit",
      subcategories: [
        { id: "objets-gratuits", name: "oggetti gratuiti", slug: "objets-gratuits" },
        { id: "vetements-gratuits", name: "vestiti gratuiti", slug: "vetements-gratuits" },
        { id: "dons-meubles", name: "donazione mobili", slug: "dons-meubles" },
        { id: "dons-electro", name: "donazione elettrodomestici", slug: "dons-electro" },
        { id: "dons-jouets", name: "donazione giocattoli", slug: "dons-jouets" },
        { id: "dons-divers", name: "donazioni varie", slug: "dons-divers" }
      ]
    },
    {
      id: "pret-objets",
      name: "Prestito di Oggetti",
      slug: "pret-objets",
      subcategories: [
        { id: "pret-outils", name: "prestito attrezzi", slug: "pret-outils" },
        { id: "pret-appareils", name: "prestito dispositivi", slug: "pret-appareils" },
        { id: "pret-velos", name: "prestito biciclette", slug: "pret-velos" },
        { id: "pret-materiel-pro", name: "prestito attrezzature pro", slug: "pret-materiel-pro" },
        { id: "pret-equipements-maison", name: "prestito attrezzature casa", slug: "pret-equipements-maison" }
      ]
    },
    {
      id: "partage-competences",
      name: "Condivisione Competenze",
      slug: "partage-competences",
      subcategories: [
        { id: "cours-gratuits", name: "corsi gratuiti", slug: "cours-gratuits" },
        { id: "echanges-competences", name: "scambio competenze", slug: "echanges-competences" },
        { id: "ateliers-partages", name: "laboratori condivisi", slug: "ateliers-partages" },
        { id: "bricolage-entraide", name: "fai-da-te solidale", slug: "bricolage-entraide" },
        { id: "soutien-scolaire", name: "sostegno scolastico", slug: "soutien-scolaire" }
      ]
    },
    {
      id: "carpooling-deplacements",
      name: "Carpooling & Spostamenti",
      slug: "carpooling-deplacements",
      subcategories: [
        { id: "covoiturage-local", name: "carpool locale", slug: "covoiturage-local" },
        { id: "partage-trajet", name: "condivisione tragitto", slug: "partage-trajet" },
        { id: "transport-solidaire", name: "trasporto solidale", slug: "transport-solidaire" },
        { id: "livraison-solidaire", name: "consegna solidale", slug: "livraison-solidaire" }
      ]
    },
    {
      id: "partage-habitat",
      name: "Condivisione Abitazione",
      slug: "partage-habitat",
      subcategories: [
        { id: "cohabitation-solidaire", name: "convivenza solidale", slug: "cohabitation-solidaire" },
        { id: "colocation-echange", name: "colocazione per scambio", slug: "colocation-echange" },
        { id: "accueil-temporaire", name: "accoglienza temporanea", slug: "accueil-temporaire" },
        { id: "echange-maison", name: "scambio casa", slug: "echange-maison" }
      ]
    },
    {
      id: "echange-services",
      name: "Scambio di Servizi",
      slug: "echange-services",
      subcategories: [
        { id: "service-contre-service", name: "servizio per servizio", slug: "service-contre-service" },
        { id: "aide-mutuelle", name: "aiuto reciproco", slug: "aide-mutuelle" },
        { id: "reparation-echange", name: "riparazione in scambio", slug: "reparation-echange" },
        { id: "menage-contre-aide", name: "pulizie per aiuto", slug: "menage-contre-aide" }
      ]
    },
    {
      id: "communaute-entraide",
      name: "Comunità & Aiuto",
      slug: "communaute-entraide",
      subcategories: [
        { id: "entraide-quartier", name: "aiuto di quartiere", slug: "entraide-quartier" },
        { id: "recuperation-objets", name: "recupero oggetti", slug: "recuperation-objets" },
        { id: "partage-alimentaire", name: "condivisione alimentare", slug: "partage-alimentaire" },
        { id: "solidarite-locale", name: "solidarietà locale", slug: "solidarite-locale" }
      ]
    },
    {
      id: "echange-culturel",
      name: "Scambio Culturale",
      slug: "echange-culturel",
      subcategories: [
        { id: "echange-livres", name: "scambio libri", slug: "echange-livres" },
        { id: "partage-musique", name: "condivisione musica", slug: "partage-musique" },
        { id: "partage-jeux", name: "condivisione giochi", slug: "partage-jeux" },
        { id: "activites-communes", name: "attività comuni", slug: "activites-communes" },
        { id: "sorties-partagees", name: "uscite condivise", slug: "sorties-partagees" }
      ]
    },
    {
      id: "recuperation-reemploi",
      name: "Recupero & Riutilizzo",
      slug: "recuperation-reemploi",
      subcategories: [
        { id: "recyclage-objets", name: "riciclo oggetti", slug: "recyclage-objets" },
        { id: "recuperation-materiaux", name: "recupero materiali", slug: "recuperation-materiaux" },
        { id: "recuperation-meubles", name: "recupero mobili", slug: "recuperation-meubles" },
        { id: "upcycling-creatif", name: "upcycling creativo", slug: "upcycling-creatif" }
      ]
    }
  ]
};