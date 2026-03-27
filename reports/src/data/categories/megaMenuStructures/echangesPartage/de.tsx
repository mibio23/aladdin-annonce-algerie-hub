import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Users } from "lucide-react";

export const echangesPartageDe: MenuCategory = {
  id: "echanges-partage",
  name: "Tausch & Teilen",
  slug: "echanges-partage",
  icon: <Users className="w-4 h-4" />,
  subcategories: [
    {
      id: "troc-objets",
      name: "Gegenstände tauschen",
      slug: "troc-objets",
      subcategories: [
        { id: "echange-vetements", name: "Kleidung tauschen", slug: "echange-vetements" },
        { id: "troc-electromenager", name: "Haushaltsgeräte tauschen", slug: "troc-electromenager" },
        { id: "echange-telephones", name: "Telefone tauschen", slug: "echange-telephones" },
        { id: "troc-meubles", name: "Möbel tauschen", slug: "troc-meubles" },
        { id: "echange-livres", name: "Bücher tauschen", slug: "echange-livres" },
        { id: "troc-jouets", name: "Spielzeug tauschen", slug: "troc-jouets" },
        { id: "echange-outils", name: "Werkzeuge tauschen", slug: "echange-outils" }
      ]
    },
    {
      id: "don-gratuit",
      name: "Spenden & Kostenlos",
      slug: "don-gratuit",
      subcategories: [
        { id: "objets-gratuits", name: "Kostenlose Gegenstände", slug: "objets-gratuits" },
        { id: "vetements-gratuits", name: "Kostenlose Kleidung", slug: "vetements-gratuits" },
        { id: "dons-meubles", name: "Möbelspenden", slug: "dons-meubles" },
        { id: "dons-electro", name: "Gerätespenden", slug: "dons-electro" },
        { id: "dons-jouets", name: "Spielzeugspenden", slug: "dons-jouets" },
        { id: "dons-divers", name: "Verschiedene Spenden", slug: "dons-divers" }
      ]
    },
    {
      id: "pret-objets",
      name: "Gegenstände verleihen",
      slug: "pret-objets",
      subcategories: [
        { id: "pret-outils", name: "Werkzeuge verleihen", slug: "pret-outils" },
        { id: "pret-appareils", name: "Geräte verleihen", slug: "pret-appareils" },
        { id: "pret-velos", name: "Fahrräder verleihen", slug: "pret-velos" },
        { id: "pret-materiel-pro", name: "Profi-Ausrüstung verleihen", slug: "pret-materiel-pro" },
        { id: "pret-equipements-maison", name: "Haushaltsausstattung verleihen", slug: "pret-equipements-maison" }
      ]
    },
    {
      id: "partage-competences",
      name: "Kompetenzen teilen",
      slug: "partage-competences",
      subcategories: [
        { id: "cours-gratuits", name: "Kostenlose Kurse", slug: "cours-gratuits" },
        { id: "echanges-competences", name: "Kompetenzen austauschen", slug: "echanges-competences" },
        { id: "ateliers-partages", name: "Gemeinsame Workshops", slug: "ateliers-partages" },
        { id: "bricolage-entraide", name: "Heimwerken & Hilfe", slug: "bricolage-entraide" },
        { id: "soutien-scolaire", name: "Nachhilfe", slug: "soutien-scolaire" }
      ]
    },
    {
      id: "carpooling-deplacements",
      name: "Fahrgemeinschaft & Wege",
      slug: "carpooling-deplacements",
      subcategories: [
        { id: "covoiturage-local", name: "Lokales Carpooling", slug: "covoiturage-local" },
        { id: "partage-trajet", name: "Fahrt teilen", slug: "partage-trajet" },
        { id: "transport-solidaire", name: "Solidarischer Transport", slug: "transport-solidaire" },
        { id: "livraison-solidaire", name: "Solidarische Lieferung", slug: "livraison-solidaire" }
      ]
    },
    {
      id: "partage-habitat",
      name: "Wohnraum teilen",
      slug: "partage-habitat",
      subcategories: [
        { id: "cohabitation-solidaire", name: "Solidarisches Zusammenwohnen", slug: "cohabitation-solidaire" },
        { id: "colocation-echange", name: "Tausch-Wohngemeinschaft", slug: "colocation-echange" },
        { id: "accueil-temporaire", name: "Vorübergehende Aufnahme", slug: "accueil-temporaire" },
        { id: "echange-maison", name: "Haus-Tausch", slug: "echange-maison" }
      ]
    },
    {
      id: "echange-services",
      name: "Dienstleistungstausch",
      slug: "echange-services",
      subcategories: [
        { id: "service-contre-service", name: "Dienstleistung gegen Dienstleistung", slug: "service-contre-service" },
        { id: "aide-mutuelle", name: "Gegenseitige Hilfe", slug: "aide-mutuelle" },
        { id: "reparation-echange", name: "Reparaturtausch", slug: "reparation-echange" },
        { id: "menage-contre-aide", name: "Haushalt gegen Hilfe", slug: "menage-contre-aide" }
      ]
    },
    {
      id: "communaute-entraide",
      name: "Gemeinschaft & Hilfe",
      slug: "communaute-entraide",
      subcategories: [
        { id: "entraide-quartier", name: "Nachbarschaftshilfe", slug: "entraide-quartier" },
        { id: "recuperation-objets", name: "Gegenstände wiederverwenden", slug: "recuperation-objets" },
        { id: "partage-alimentaire", name: "Lebensmittel teilen", slug: "partage-alimentaire" },
        { id: "solidarite-locale", name: "Lokale Solidarität", slug: "solidarite-locale" }
      ]
    },
    {
      id: "echange-culturel",
      name: "Kulturaustausch",
      slug: "echange-culturel",
      subcategories: [
        { id: "echange-livres", name: "Bücher tauschen", slug: "echange-livres" },
        { id: "partage-musique", name: "Musik teilen", slug: "partage-musique" },
        { id: "partage-jeux", name: "Spiele teilen", slug: "partage-jeux" },
        { id: "activites-communes", name: "Gemeinsame Aktivitäten", slug: "activites-communes" },
        { id: "sorties-partagees", name: "Gemeinsame Ausflüge", slug: "sorties-partagees" }
      ]
    },
    {
      id: "recuperation-reemploi",
      name: "Wiedergewinnung & Wiederverwendung",
      slug: "recuperation-reemploi",
      subcategories: [
        { id: "recyclage-objets", name: "Gegenstände recyceln", slug: "recyclage-objets" },
        { id: "recuperation-materiaux", name: "Materialien wiedergewinnen", slug: "recuperation-materiaux" },
        { id: "recuperation-meubles", name: "Möbel wiedergewinnen", slug: "recuperation-meubles" },
        { id: "upcycling-creatif", name: "Kreatives Upcycling", slug: "upcycling-creatif" }
      ]
    }
  ]
};