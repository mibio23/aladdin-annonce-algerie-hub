import React from "react";
import { MenuCategory } from "@/data/categoryTypes";
import { Users } from "lucide-react";

export const echangesPartageAr: MenuCategory = {
  id: "echanges-partage",
  name: "التبادل والمشاركة",
  slug: "echanges-partage",
  icon: <Users className="w-4 h-4" />,
  subcategories: [
    {
      id: "troc-objets",
      name: "تبادل الأشياء",
      slug: "troc-objets",
      subcategories: [
        { id: "echange-vetements", name: "تبادل الملابس", slug: "echange-vetements" },
        { id: "troc-electromenager", name: "مقايضة الأجهزة", slug: "troc-electromenager" },
        { id: "echange-telephones", name: "تبادل الهواتف", slug: "echange-telephones" },
        { id: "troc-meubles", name: "مقايضة الأثاث", slug: "troc-meubles" },
        { id: "echange-livres", name: "تبادل الكتب", slug: "echange-livres" },
        { id: "troc-jouets", name: "مقايضة الألعاب", slug: "troc-jouets" },
        { id: "echange-outils", name: "تبادل الأدوات", slug: "echange-outils" }
      ]
    },
    {
      id: "don-gratuit",
      name: "هبات ومجاني",
      slug: "don-gratuit",
      subcategories: [
        { id: "objets-gratuits", name: "أشياء مجانية", slug: "objets-gratuits" },
        { id: "vetements-gratuits", name: "ملابس مجانية", slug: "vetements-gratuits" },
        { id: "dons-meubles", name: "هبات الأثاث", slug: "dons-meubles" },
        { id: "dons-electro", name: "هبات الأجهزة", slug: "dons-electro" },
        { id: "dons-jouets", name: "هبات الألعاب", slug: "dons-jouets" },
        { id: "dons-divers", name: "هبات متنوعة", slug: "dons-divers" }
      ]
    },
    {
      id: "pret-objets",
      name: "إعارة الأشياء",
      slug: "pret-objets",
      subcategories: [
        { id: "pret-outils", name: "إعارة الأدوات", slug: "pret-outils" },
        { id: "pret-appareils", name: "إعارة الأجهزة", slug: "pret-appareils" },
        { id: "pret-velos", name: "إعارة الدراجات", slug: "pret-velos" },
        { id: "pret-materiel-pro", name: "إعارة معدات مهنية", slug: "pret-materiel-pro" },
        { id: "pret-equipements-maison", name: "إعارة تجهيزات المنزل", slug: "pret-equipements-maison" }
      ]
    },
    {
      id: "partage-competences",
      name: "مشاركة المهارات",
      slug: "partage-competences",
      subcategories: [
        { id: "cours-gratuits", name: "دروس مجانية", slug: "cours-gratuits" },
        { id: "echanges-competences", name: "تبادل المهارات", slug: "echanges-competences" },
        { id: "ateliers-partages", name: "ورشات مشتركة", slug: "ateliers-partages" },
        { id: "bricolage-entraide", name: "أعمال يدوية بالتعاون", slug: "bricolage-entraide" },
        { id: "soutien-scolaire", name: "دعم مدرسي", slug: "soutien-scolaire" }
      ]
    },
    {
      id: "carpooling-deplacements",
      name: "مشاركة الركوب والتنقل",
      slug: "carpooling-deplacements",
      subcategories: [
        { id: "covoiturage-local", name: "مشاركة السيارة محليًا", slug: "covoiturage-local" },
        { id: "partage-trajet", name: "مشاركة الرحلات", slug: "partage-trajet" },
        { id: "transport-solidaire", name: "نقل تضامني", slug: "transport-solidaire" },
        { id: "livraison-solidaire", name: "توصيل تضامني", slug: "livraison-solidaire" }
      ]
    },
    {
      id: "partage-habitat",
      name: "مشاركة السكن",
      slug: "partage-habitat",
      subcategories: [
        { id: "cohabitation-solidaire", name: "تعايش تضامني", slug: "cohabitation-solidaire" },
        { id: "colocation-echange", name: "سكن مشترك بالمقايضة", slug: "colocation-echange" },
        { id: "accueil-temporaire", name: "استضافة مؤقتة", slug: "accueil-temporaire" },
        { id: "echange-maison", name: "تبادل المنازل", slug: "echange-maison" }
      ]
    },
    {
      id: "echange-services",
      name: "تبادل الخدمات",
      slug: "echange-services",
      subcategories: [
        { id: "service-contre-service", name: "خدمة مقابل خدمة", slug: "service-contre-service" },
        { id: "aide-mutuelle", name: "مساعدة متبادلة", slug: "aide-mutuelle" },
        { id: "reparation-echange", name: "إصلاح بالمقايضة", slug: "reparation-echange" },
        { id: "menage-contre-aide", name: "تنظيف مقابل مساعدة", slug: "menage-contre-aide" }
      ]
    },
    {
      id: "communaute-entraide",
      name: "مجتمع وتعاون",
      slug: "communaute-entraide",
      subcategories: [
        { id: "entraide-quartier", name: "تعاون الحي", slug: "entraide-quartier" },
        { id: "recuperation-objets", name: "استعادة الأشياء", slug: "recuperation-objets" },
        { id: "partage-alimentaire", name: "مشاركة الطعام", slug: "partage-alimentaire" },
        { id: "solidarite-locale", name: "تضامن محلي", slug: "solidarite-locale" }
      ]
    },
    {
      id: "echange-culturel",
      name: "تبادل ثقافي",
      slug: "echange-culturel",
      subcategories: [
        { id: "echange-livres", name: "تبادل الكتب", slug: "echange-livres" },
        { id: "partage-musique", name: "مشاركة الموسيقى", slug: "partage-musique" },
        { id: "partage-jeux", name: "مشاركة الألعاب", slug: "partage-jeux" },
        { id: "activites-communes", name: "أنشطة مشتركة", slug: "activites-communes" },
        { id: "sorties-partagees", name: "خرجات مشتركة", slug: "sorties-partagees" }
      ]
    },
    {
      id: "recuperation-reemploi",
      name: "استعادة وإعادة الاستخدام",
      slug: "recuperation-reemploi",
      subcategories: [
        { id: "recyclage-objets", name: "إعادة تدوير الأشياء", slug: "recyclage-objets" },
        { id: "recuperation-materiaux", name: "استعادة المواد", slug: "recuperation-materiaux" },
        { id: "recuperation-meubles", name: "استعادة الأثاث", slug: "recuperation-meubles" },
        { id: "upcycling-creatif", name: "تدوير إبداعي", slug: "upcycling-creatif" }
      ]
    }
  ]
};