import "https://deno.land/x/xhr@0.1.0/mod.ts";
import { serve } from "https://deno.land/std@0.168.0/http/server.ts";
import { createClient, SupabaseClient } from 'https://esm.sh/@supabase/supabase-js@2';

const corsHeaders = {
  'Access-Control-Allow-Origin': '*',
  'Access-Control-Allow-Headers': 'authorization, x-client-info, apikey, content-type',
};

interface ConversationRequest {
  message: string;
  sessionId: string;
  language?: string;
  categoryContext?: string;
  searchHistory?: string[];
}

// Base de connaissances multilingue gratuite
const knowledgeBase = {
  fr: {
    greetings: ["bonjour", "salut", "bonsoir", "coucou", "hey"],
    searches: ["cherche", "recherche", "trouve", "où", "comment", "quoi"],
    comparisons: ["compare", "différence", "mieux", "vs", "entre"],
    recommendations: ["recommande", "conseille", "suggère", "choisis"],
    prices: ["prix", "coût", "combien", "tarif", "budget"],
    help: ["aide", "comment", "pourquoi", "explique"]
  },
  ar: {
    greetings: ["مرحبا", "أهلا", "سلام", "مساء الخير"],
    searches: ["بحث", "أجد", "أين", "كيف", "ماذا", "ابحث"],
    comparisons: ["مقارنة", "الفرق", "أفضل", "بين"],
    recommendations: ["أنصح", "اقترح", "أفضل", "اختار"],
    prices: ["سعر", "كم", "تكلفة", "ثمن"],
    help: ["مساعدة", "كيف", "لماذا", "اشرح"]
  },
  en: {
    greetings: ["hello", "hi", "good morning", "good evening", "hey"],
    searches: ["search", "find", "where", "how", "what", "look for"],
    comparisons: ["compare", "difference", "better", "vs", "between"],
    recommendations: ["recommend", "suggest", "advise", "choose"],
    prices: ["price", "cost", "how much", "budget"],
    help: ["help", "how", "why", "explain"]
  },
  es: {
    greetings: ["hola", "buenos días", "buenas tardes", "saludos"],
    searches: ["buscar", "encontrar", "dónde", "cómo", "qué"],
    comparisons: ["comparar", "diferencia", "mejor", "entre"],
    recommendations: ["recomendar", "sugerir", "aconsejar"],
    prices: ["precio", "costo", "cuánto", "presupuesto"],
    help: ["ayuda", "cómo", "por qué", "explicar"]
  },
  it: {
    greetings: ["ciao", "buongiorno", "buonasera", "salve"],
    searches: ["cercare", "trovare", "dove", "come", "cosa"],
    comparisons: ["confrontare", "differenza", "meglio", "tra"],
    recommendations: ["raccomandare", "suggerire", "consigliare"],
    prices: ["prezzo", "costo", "quanto", "budget"],
    help: ["aiuto", "come", "perché", "spiegare"]
  }
};

// Réponses intelligentes multilingues
const responses = {
  fr: {
    welcome: "🤖 Bonjour ! Je suis votre assistant intelligent gratuit. Je peux vous aider en français, arabe, anglais, espagnol et italien. Comment puis-je vous aider ?",
    search: "Je comprends que vous cherchez quelque chose. Voici mes suggestions basées sur votre recherche :",
    compare: "Excellente idée de comparer ! Voici les points importants à considérer :",
    recommend: "Basé sur l'analyse de vos besoins, voici mes recommandations :",
    price: "Pour les questions de prix, voici ce que je peux vous conseiller :",
    help: "Je suis là pour vous aider ! Voici les informations utiles :",
    fallback: "Je comprends votre question. Laissez-moi vous aider avec des suggestions pertinentes :",
    noResults: "Aucun résultat trouvé, mais voici des alternatives intéressantes :",
    loading: "Analyse en cours...",
    suggestions: ["Affiner la recherche", "Voir les catégories", "Comparer les prix", "Consulter les avis"]
  },
  ar: {
    welcome: "🤖 مرحباً! أنا مساعدك الذكي المجاني. يمكنني مساعدتك بالعربية والفرنسية والإنجليزية والإسبانية والإيطالية. كيف يمكنني مساعدتك؟",
    search: "أفهم أنك تبحث عن شيء ما. إليك اقتراحاتي بناءً على بحثك:",
    compare: "فكرة ممتازة للمقارنة! إليك النقاط المهمة التي يجب مراعاتها:",
    recommend: "بناءً على تحليل احتياجاتك، إليك توصياتي:",
    price: "بخصوص أسئلة الأسعار، إليك ما يمكنني نصحك به:",
    help: "أنا هنا لمساعدتك! إليك المعلومات المفيدة:",
    fallback: "أفهم سؤالك. دعني أساعدك بالاقتراحات ذات الصلة:",
    noResults: "لم يتم العثور على نتائج، ولكن إليك البدائل المثيرة للاهتمام:",
    loading: "جاري التحليل...",
    suggestions: ["تحسين البحث", "عرض الفئات", "مقارنة الأسعار", "مراجعة التقييمات"]
  },
  en: {
    welcome: "🤖 Hello! I'm your free intelligent assistant. I can help you in French, Arabic, English, Spanish and Italian. How can I help you?",
    search: "I understand you're looking for something. Here are my suggestions based on your search:",
    compare: "Great idea to compare! Here are the important points to consider:",
    recommend: "Based on analyzing your needs, here are my recommendations:",
    price: "For price questions, here's what I can advise:",
    help: "I'm here to help! Here's the useful information:",
    fallback: "I understand your question. Let me help you with relevant suggestions:",
    noResults: "No results found, but here are interesting alternatives:",
    loading: "Analyzing...",
    suggestions: ["Refine search", "View categories", "Compare prices", "Check reviews"]
  },
  es: {
    welcome: "🤖 ¡Hola! Soy tu asistente inteligente gratuito. Puedo ayudarte en francés, árabe, inglés, español e italiano. ¿Cómo puedo ayudarte?",
    search: "Entiendo que buscas algo. Aquí están mis sugerencias basadas en tu búsqueda:",
    compare: "¡Excelente idea comparar! Aquí están los puntos importantes a considerar:",
    recommend: "Basado en el análisis de tus necesidades, aquí están mis recomendaciones:",
    price: "Para preguntas de precios, esto es lo que puedo aconsejarte:",
    help: "¡Estoy aquí para ayudarte! Aquí está la información útil:",
    fallback: "Entiendo tu pregunta. Déjame ayudarte con sugerencias relevantes:",
    noResults: "No se encontraron resultados, pero aquí hay alternativas interesantes:",
    loading: "Analizando...",
    suggestions: ["Refinar búsqueda", "Ver categorías", "Comparar precios", "Consultar reseñas"]
  },
  it: {
    welcome: "🤖 Ciao! Sono il tuo assistente intelligente gratuito. Posso aiutarti in francese, arabo, inglese, spagnolo e italiano. Come posso aiutarti?",
    search: "Capisco che stai cercando qualcosa. Ecco i miei suggerimenti basati sulla tua ricerca:",
    compare: "Ottima idea confrontare! Ecco i punti importanti da considerare:",
    recommend: "Basato sull'analisi delle tue esigenze, ecco le mie raccomandazioni:",
    price: "Per domande sui prezzi, ecco cosa posso consigliarti:",
    help: "Sono qui per aiutarti! Ecco le informazioni utili:",
    fallback: "Capisco la tua domanda. Lasciami aiutarti con suggerimenti pertinenti:",
    noResults: "Nessun risultato trovato, ma ecco alternative interessanti:",
    loading: "Analizzando...",
    suggestions: ["Affina ricerca", "Vedi categorie", "Confronta prezzi", "Controlla recensioni"]
  }
};

serve(async (req) => {
  if (req.method === 'OPTIONS') {
    return new Response(null, { headers: corsHeaders });
  }

  try {
    const supabaseClient = createClient(
      Deno.env.get('SUPABASE_URL') ?? '',
      Deno.env.get('SUPABASE_ANON_KEY') ?? ''
    );

    const { 
      message, 
      sessionId, 
      language = 'fr', 
      categoryContext, 
      searchHistory = []
    }: ConversationRequest = await req.json();

    console.log(`[FreeIntelligentAssistant] Message: "${message}" | Language: ${language} | Session: ${sessionId}`);

    // 1. Détection automatique de la langue si pas spécifiée
    const detectedLanguage = detectLanguage(message) || language;
    const currentResponses = responses[detectedLanguage as keyof typeof responses] || responses.fr;
    const currentKnowledge = knowledgeBase[detectedLanguage as keyof typeof knowledgeBase] || knowledgeBase.fr;

    // 2. Analyse d'intention basée sur les patterns linguistiques
    const userIntent = analyzeIntent(message, currentKnowledge);
    
    // 3. Recherche intelligente dans la base de données
    const relevantData = await searchRelevantData(supabaseClient as any, message, categoryContext ?? '', detectedLanguage);
    
    // 4. Analyse des patterns utilisateur pour personnalisation
    const userPatterns = await analyzeUserPatterns(supabaseClient as any, sessionId, searchHistory);
    
    // 5. Génération de réponse intelligente contextuelle
    const aiResponse = generateIntelligentResponse({
      message,
      language: detectedLanguage,
      categoryContext,
      userIntent,
      relevantData,
      userPatterns,
      responses: currentResponses
    });

    // 6. Sauvegarde pour apprentissage futur
    await saveConversation(supabaseClient as any, sessionId, message, aiResponse, userIntent, detectedLanguage);
    
    // 7. Mise à jour des patterns d'apprentissage
    await updateLearningPatterns(supabaseClient as any, message, aiResponse, userIntent, detectedLanguage);

    return new Response(JSON.stringify(aiResponse), {
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    });

  } catch (error) {
    const messageErr = error instanceof Error ? error.message : String(error);
    console.error('[FreeIntelligentAssistant] Erreur:', messageErr);
    return new Response(JSON.stringify({ 
      error: 'Erreur de l\'assistant', 
      details: messageErr 
    }), {
      status: 500,
      headers: { ...corsHeaders, 'Content-Type': 'application/json' },
    });
  }
});

// Détection de langue avancée
function detectLanguage(text: string): string {
  const arabicRegex = /[\u0600-\u06FF]/;
  const frenchWords = ['le', 'la', 'les', 'un', 'une', 'des', 'je', 'tu', 'il', 'nous', 'vous', 'ils', 'et', 'ou', 'dans'];
  const englishWords = ['the', 'a', 'an', 'and', 'or', 'in', 'on', 'at', 'to', 'for', 'of', 'with', 'by'];
  const spanishWords = ['el', 'la', 'los', 'las', 'un', 'una', 'y', 'o', 'en', 'de', 'con', 'por', 'para'];
  const italianWords = ['il', 'la', 'gli', 'le', 'un', 'una', 'e', 'o', 'in', 'di', 'con', 'per'];

  const lowerText = text.toLowerCase();
  
  if (arabicRegex.test(text)) return 'ar';
  
  const frenchCount = frenchWords.filter(word => lowerText.includes(word)).length;
  const englishCount = englishWords.filter(word => lowerText.includes(word)).length;
  const spanishCount = spanishWords.filter(word => lowerText.includes(word)).length;
  const italianCount = italianWords.filter(word => lowerText.includes(word)).length;
  
  const maxCount = Math.max(frenchCount, englishCount, spanishCount, italianCount);
  
  if (maxCount === 0) return 'fr'; // Défaut français
  if (frenchCount === maxCount) return 'fr';
  if (englishCount === maxCount) return 'en';
  if (spanishCount === maxCount) return 'es';
  if (italianCount === maxCount) return 'it';
  
  return 'fr';
}

// Analyse d'intention avancée
function analyzeIntent(message: string, knowledge: { greetings: string[]; searches: string[]; comparisons: string[]; recommendations: string[]; prices: string[]; help: string[] }) {
  const lowerMessage = message.toLowerCase();
  
  const intentScores = {
    greeting: calculateScore(lowerMessage, knowledge.greetings),
    search: calculateScore(lowerMessage, knowledge.searches),
    compare: calculateScore(lowerMessage, knowledge.comparisons),
    recommend: calculateScore(lowerMessage, knowledge.recommendations),
    price: calculateScore(lowerMessage, knowledge.prices),
    help: calculateScore(lowerMessage, knowledge.help)
  };

  const maxIntent = Object.entries(intentScores).reduce((a, b) => 
    intentScores[a[0] as keyof typeof intentScores] > intentScores[b[0] as keyof typeof intentScores] ? a : b
  );

  return {
    type: maxIntent[0],
    confidence: maxIntent[1],
    keywords: extractKeywords(message)
  };
}

// Calcul de score pour l'analyse d'intention
function calculateScore(text: string, patterns: string[]): number {
  return patterns.reduce((score, pattern) => {
    return text.includes(pattern) ? score + 1 : score;
  }, 0) / patterns.length;
}

// Extraction de mots-clés intelligente
function extractKeywords(text: string): string[] {
  const stopWords = ['le', 'la', 'les', 'un', 'une', 'des', 'de', 'du', 'et', 'ou', 'the', 'a', 'an', 'and', 'or'];
  return text.toLowerCase()
    .split(/[\s\p{P}]+/u)
    .filter(word => word.length > 2 && !stopWords.includes(word))
    .slice(0, 8);
}

// Recherche de données pertinentes
async function searchRelevantData(supabase: SupabaseClient, message: string, _categoryContext: string, _language: string) {
  const keywords = extractKeywords(message);
  const results: { announcements: Array<{ id: string; title: string; description: string; price: number | null; location: string | null }>; categories: unknown[]; trending: Array<{ keyword: string; trending_score: number }>; suggestions: Array<{ suggested_query: string; confidence_score: number }> } = { announcements: [], categories: [], trending: [], suggestions: [] };

  try {
    // Recherche dans les annonces
    if (keywords.length > 0) {
      const searchQuery = keywords.join(' | ');
      const { data: announcements } = await supabase
        .from('announcements')
        .select('id, title, description, price, location')
        .eq('status', 'active')
        .textSearch('title', searchQuery, { config: 'french' })
        .limit(3);
      
      results.announcements = announcements || [];
    }

    // Recherche dans les mots-clés populaires
    const { data: trending } = await supabase
      .from('popular_keywords')
      .select('keyword, trending_score')
      .order('trending_score', { ascending: false })
      .limit(5);
    
    results.trending = trending || [];

    // Suggestions basées sur l'historique
    const { data: suggestions } = await supabase
      .from('search_suggestions')
      .select('suggested_query, confidence_score')
      .eq('is_active', true)
      .order('confidence_score', { ascending: false })
      .limit(3);
    
    results.suggestions = suggestions || [];

  } catch (error) {
    console.error('Erreur recherche données:', error);
  }

  return results;
}

// Analyse des patterns utilisateur
async function analyzeUserPatterns(supabase: SupabaseClient, sessionId: string, searchHistory: string[]) {
  try {
    const { data: recentSearches } = await supabase
      .from('search_queries')
      .select('*')
      .eq('user_session_id', sessionId)
      .order('created_at', { ascending: false })
      .limit(10);

    return {
      searchCount: recentSearches?.length || 0,
      recentKeywords: extractCommonKeywords(recentSearches || []),
      behavior: determineUserBehavior(recentSearches || [], searchHistory),
      preferences: extractUserPreferences(recentSearches || [])
    };
  } catch (error) {
    console.error('Erreur analyse patterns:', error);
    return { searchCount: 0, recentKeywords: [], behavior: 'new_user', preferences: {} };
  }
}

// Extraction des mots-clés communs
function extractCommonKeywords(searches: Array<{ query_text?: string }>): string[] {
  const keywordCounts: { [key: string]: number } = {};
  
  searches.forEach(search => {
    const keywords = extractKeywords(search.query_text || '');
    keywords.forEach(keyword => {
      keywordCounts[keyword] = (keywordCounts[keyword] || 0) + 1;
    });
  });

  return Object.entries(keywordCounts)
    .filter(([_, count]) => count > 1)
    .sort(([_, a], [__, b]) => b - a)
    .slice(0, 5)
    .map(([keyword, _]) => keyword);
}

// Détermination du comportement utilisateur
function determineUserBehavior(searches: Array<{ query_text?: string }>, searchHistory: string[]): string {
  if (searches.length === 0) return 'new_user';
  if (searches.length > 10) return 'power_user';
  if (searchHistory.length > 5) return 'explorer';
  return 'regular_user';
}

// Extraction des préférences utilisateur
function extractUserPreferences(searches: Array<Record<string, unknown>>): { categories: unknown[]; timePatterns: number[]; languages: unknown[] } {
  return {
    categories: [...new Set(searches.map(s => s.search_context).filter(Boolean))],
    timePatterns: searches.map(s => new Date(String(s.created_at)).getHours()),
    languages: [...new Set(searches.map(s => s.language_detected).filter(Boolean))]
  };
}

// Génération de réponse intelligente
function generateIntelligentResponse(context: { message: string; language: string; userIntent: { type: string; confidence: number; keywords: string[] }; relevantData: { announcements: Array<{ title: string; price?: number | null }>; trending: Array<{ keyword: string }>; }; userPatterns: { recentKeywords: string[]; behavior?: string }; responses: { [k: string]: string | string[] }; categoryContext?: string }) {
  const { message: _message, language, userIntent, relevantData, userPatterns, responses, categoryContext } = context;
  
  let response = '';
  let suggestions: string[] = [];
  let anticipatedNeeds: string[] = [];
  
  // Sélection de la réponse basée sur l'intention
  switch (userIntent.type) {
    case 'greeting':
      response = String(responses.welcome);
      suggestions = ["Rechercher un produit", "Comparer des options", "Voir les tendances", "Obtenir des conseils"];
      anticipatedNeeds = ["Explorer les catégories", "Voir les offres spéciales"];
      break;
      
    case 'search':
      response = `${responses.search}\n\n`;
      if (relevantData.announcements.length > 0) {
        response += "📋 **Résultats trouvés:**\n";
        relevantData.announcements.forEach((ann, i: number) => {
          response += `${i + 1}. ${ann.title} - ${ann.price ? ann.price + ' DA' : 'Prix à négocier'}\n`;
        });
      }
      suggestions = ["Affiner la recherche", "Comparer les prix", "Voir plus de résultats"];
      anticipatedNeeds = ["Négocier le prix", "Contacter le vendeur", "Voir les détails"];
      break;
      
    case 'compare':
      response = `${responses.compare}\n\n`;
      response += "🔍 **Points de comparaison importants:**\n";
      response += "• Prix et rapport qualité-prix\n• Avis et évaluations\n• Disponibilité et localisation\n• Garanties et services";
      suggestions = ["Comparer 2 produits", "Voir les avis", "Analyser les prix"];
      anticipatedNeeds = ["Prendre une décision", "Négocier", "Finaliser l'achat"];
      break;
      
    case 'recommend':
      response = `${responses.recommend}\n\n`;
      if (userPatterns.recentKeywords.length > 0) {
        response += `📊 **Basé sur vos recherches récentes (${userPatterns.recentKeywords.join(', ')}):**\n`;
      }
      response += "• Analyser vos besoins spécifiques\n• Considérer votre budget\n• Vérifier la disponibilité locale";
      suggestions = ["Préciser mes besoins", "Voir les meilleures offres", "Obtenir plus de conseils"];
      anticipatedNeeds = ["Comparer les options", "Lire les avis", "Négocier le prix"];
      break;
      
    case 'price':
      response = `${responses.price}\n\n`;
      response += "💰 **Conseils pour les prix:**\n";
      response += "• Comparer plusieurs vendeurs\n• Négocier directement\n• Vérifier les promotions en cours\n• Considérer les frais de livraison";
      suggestions = ["Voir les prix moyens", "Négocier", "Chercher des promotions"];
      anticipatedNeeds = ["Finaliser l'achat", "Obtenir un meilleur prix"];
      break;
      
    default:
      response = `${responses.fallback}\n\n`;
      if (userIntent.keywords.length > 0) {
        response += `🎯 **Mots-clés détectés:** ${userIntent.keywords.join(', ')}\n\n`;
      }
      suggestions = Array.isArray(responses.suggestions) ? responses.suggestions : [String(responses.suggestions)];
      anticipatedNeeds = ["Explorer plus d'options", "Affiner la recherche"];
  }

  // Ajouter des suggestions tendance
  if (relevantData.trending.length > 0) {
    response += `\n\n🔥 **Tendances actuelles:** ${relevantData.trending.slice(0, 3).map((t) => t.keyword).join(', ')}`;
  }

  // Suggestions basées sur le contexte de catégorie
  if (categoryContext) {
    suggestions.unshift(`Explorer ${categoryContext}`);
    anticipatedNeeds.unshift(`Voir les sous-catégories de ${categoryContext}`);
  }

  // Suggestions proactives basées sur les patterns utilisateur
  const proactiveSuggestions = generateProactiveSuggestions(userPatterns, relevantData, language);

  return {
    response,
    suggestions: suggestions.slice(0, 4),
    proactiveSuggestions: proactiveSuggestions.slice(0, 3),
    anticipatedNeeds: anticipatedNeeds.slice(0, 3),
    confidence: Math.min(0.9, 0.5 + userIntent.confidence),
    userIntent: userIntent.type,
    language
  };
}

// Génération de suggestions proactives
function generateProactiveSuggestions(userPatterns: { recentKeywords: string[]; behavior?: string }, relevantData: { trending: Array<{ keyword: string }> }, _language: string): string[] {
  const suggestions: string[] = [];
  
  // Basé sur les mots-clés récents
  if (userPatterns.recentKeywords.length > 0) {
    suggestions.push(`Recherches similaires: ${userPatterns.recentKeywords[0]}`);
  }
  
  // Basé sur le comportement
  if (userPatterns.behavior === 'explorer') {
    suggestions.push("Découvrir de nouvelles catégories");
  } else if (userPatterns.behavior === 'power_user') {
    suggestions.push("Recherche avancée");
  }
  
  // Basé sur les tendances
  if (relevantData.trending.length > 0) {
    suggestions.push(`Tendance: ${relevantData.trending[0].keyword}`);
  }
  
  return suggestions;
}

// Sauvegarde de la conversation
async function saveConversation(supabase: SupabaseClient, sessionId: string, userMessage: string, aiResponse: { response: string; confidence: number; suggestions?: string[]; anticipatedNeeds?: string[] }, userIntent: { type: string }, language: string) {
  try {
    await supabase
      .from('conversation_memory')
      .insert([
        {
          session_id: sessionId,
          role: 'user',
          content: userMessage,
          metadata: { intent: userIntent, language }
        },
        {
          session_id: sessionId,
          role: 'assistant',
          content: aiResponse.response,
          metadata: { 
            confidence: aiResponse.confidence,
            intent_response: userIntent.type,
            language,
            free_ai: true
          }
        }
      ]);
  } catch (error) {
    console.error('Erreur sauvegarde conversation:', error);
  }
}

// Mise à jour des patterns d'apprentissage
async function updateLearningPatterns(supabase: SupabaseClient, userMessage: string, aiResponse: { response: string; confidence: number }, userIntent: { type: string }, _language: string) {
  try {
    await supabase
      .from('ai_learning_data')
      .insert({
        user_input: userMessage,
        ai_output: aiResponse.response,
        intent_detected: userIntent.type,
        confidence_score: aiResponse.confidence,
        improvement_applied: false
      });
  } catch (error) {
    console.error('Erreur mise à jour apprentissage:', error);
  }
}
