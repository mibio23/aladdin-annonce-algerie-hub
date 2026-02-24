export const search = {
  placeholder: "Search...",
  placeholderWithLocation: "Search near you...",
  placeholderConversational: "Ask your question...",
  submit: "Search",
  filters: {
    category: "Category",
    location: "Location",
    price: "Price",
    condition: "Condition"
  },
  labels: {
    history: "History",
    suggestion: "Suggestion",
    trending: "Trending",
    category: "Category",
    keyword: "Keyword",
    userInput: "Your search"
  },
  tip: "Tip: Use precise keywords for better results",
  noResults: "No results found",
  searchHistory: "Search history",
  clearHistory: "Clear history"
};

import { englishSmartSuggestions } from './smartSuggestions';

export const englishSearch = {
  // Advanced search translations
  "search.advanced.title": "Advanced Search",
  "search.advanced.category": "Category",
  "search.advanced.subCategory": "Subcategory",
  "search.advanced.specialization": "Specialization",
  "search.advanced.condition": "Condition",
  "search.advanced.selectCategory": "Select a category",
  "search.advanced.selectSubCategory": "Select a subcategory",
  "search.advanced.selectSpecialization": "Select a specialization",
  "search.advanced.allConditions": "All conditions",
  "search.advanced.distanceMax": "Maximum distance ({distance} km)",
  "search.advanced.priceRangeLabel": "Price range ({min} - {max} {currency})",
  "search.advanced.searchButton": "Search",
  "search.advanced.searching": "Searching...",
  "search.advanced.searchPlaceholder": "What are you looking for?",
  "search.advanced.chooseLocation": "Choose location",
  "search.advanced.searchLabel": "Search",
  "search.advanced.activeFilters": "Active filters:",
  "search.advanced.visualSearch": "Visual Search",
  "search.advanced.semanticSearch": "Semantic Search",

  // Condition options
  "search.all": "All",
  "search.new": "New",
  "search.used": "Used",
  "search.refurbished": "Refurbished",
  "search.defective": "Defective",
  "search.parts": "For Parts",
  "search.condition": "Condition",

  // Additional condition translations for CategoryFilters
  "search.advanced.new": "New",
  "search.advanced.used": "Used",
  "search.advanced.refurbished": "Refurbished",
  "search.advanced.defective": "Defective",
  "search.advanced.forParts": "For Parts",

  // Search related
  "search.noResults": "No results found",
  "search.loading": "Loading...",
  "search.error": "Search error",
  "search.tryAgain": "Try again",
  "search.suggestions": "Suggestions",
  "search.recent": "Recent searches",
  "search.popular": "Popular searches",
  "search.trending": "Trending",
  "search.filters": "Filters",
  "search.sortBy": "Sort by",
  "search.results": "results",
  "search.showMore": "Show more",
  "search.showLess": "Show less",

  // Labels for suggestions
  "search.labels.history": "Recent searches",
  "search.labels.popular": "Popular", 
  "search.labels.category": "Category",
  "search.labels.suggestion": "Suggestion",
  "search.labels.userInput": "Search",
  "search.tip": "Press Enter to search",
  
  // Smart suggestions
  ...englishSmartSuggestions,

  // Additional page elements
  "search.page.title": "Search",
  "search.page.allCategories": "All categories",
  "search.page.allConditions": "All conditions",
  "search.page.likeNew": "Like new",
  "search.page.good": "Good condition", 
  "search.page.fair": "Fair condition",
  "search.page.poor": "For renovation",
  "search.page.minPrice": "Min price",
  "search.page.maxPrice": "Max price",
  "search.page.location": "Location",
  "search.page.locationPlaceholder": "City, state...",
  "search.page.infiniteScroll": "Infinite scroll",
  "search.page.pagination": "Pagination",
  "search.page.export": "Export",
  "search.page.category": "Category",

  // Quick filters and UI elements
  "quickFilters": "Quick Filters",
  "save": "Save",
  "createAlert": "Create Alert",
  "similarSearches": "Similar Searches",
  "popularSearches": "Popular Searches",
  "resetFilters": "Reset",
  "activeFiltersLabel": "Active filters:",
  "suggestionsImprovement": "Improvement Suggestions",
  "savedSearches": "Saved Searches",
  "results": "results",
  "activeFilters": "active filters",
  
  // Filter labels
  "filter.category": "Category:",
  "filter.condition": "Condition:",
  "filter.location": "Location:",
  "filter.minPrice": "Min price:",
  "search.filter.maxPrice": "Max price:",
  
  // Quick filter labels
  "quickFilterLabels": {
    "urgent": "Urgent",
    "new": "New",
    "priceUnder10k": "< 10,000 DA",
    "priceUnder50k": "< 50,000 DA",
    "withPhotos": "With photos",
    "premium": "Premium"
  },

  // Missing keys for SearchResultsHeader and other components
  "searchResults": "Search Results",
  "for": "for",
  "announcementFound": "announcement found",
  "announcementsFound": "announcements found",
  "activeFilter": "active filter",
  
  // Additional missing keys
  "home": "Home",
  "searchFor": "Search",
  "searchResultsfor": "Search results for",
  "recentSearches": "Recent searches",
  "advancedSearch": "Advanced search",
  "filters": "Filters",
  
  // Navigation and UI
  "searchByDistrict": "💡 Search by district",
  "filterByArea": "💡 Filter by area", 
  "viewPricePerSqm": "💡 View price per sqm",
  
  // Search terms for contextual suggestions
  "searchTerms": {
    "cheap": "cheap",
    "premium": "premium", 
    "urgent": "urgent"
  },
  
  // Smart suggestions for categories
  "searchByBrand": "Add specific brand",
  "filterByYear": "Filter by year",
  "searchInWilaya": "Search in your area",
  "similarModels": "See similar models",
  "comparePrices": "Compare prices",
  "filterByCapacity": "Filter by capacity"
  ,
  // Geolocation picker
  "search.geolocation.useCurrentLocation": "Use my current location",
  "search.geolocation.searchAddressPlaceholder": "Search an address...",
  "search.geolocation.results": "Search results:",
  "search.geolocation.currentPositionDetected": "Current position detected",
  "search.geolocation.errorTitle": "Error",
  "search.geolocation.errorCurrent": "Unable to get your current position",
  "search.geolocation.noResultsTitle": "No results",
  "search.geolocation.noResultsDesc": "No address found for this search",
  "search.geolocation.searchErrorTitle": "Search error",
  "search.geolocation.searchErrorDesc": "Unable to search this address",
  "search.geolocation.addressSelected": "Address selected",

  // Intelligent Search
  "intelligentSearch": "Intelligent Search",
  "intelligentResults": "Intelligent Results",
  "intelligentFilters": "Intelligent Filters",
  "locatedAt": "Located at",
  "artificialIntelligence": "Artificial Intelligence",
  "aiSuggestions": "AI Suggestions",
  "price": "Price",
  
  // Sorting controls
  "sortBy": "Sort by",
  "show": "Show",
  "sortOptions": {
    "relevance": "Relevance",
    "dateDesc": "Newest",
    "dateAsc": "Oldest",
    "priceAsc": "Price ascending",
    "priceDesc": "Price descending",
    "viewsDesc": "Most popular"
  },

  // Export functionality
  "exportResults": "Export results",
  "exportFormat": "Export format",
  "fieldsToInclude": "Fields to include",
  "includeImageUrls": "Include image URLs",
  "cancel": "Cancel",
  "export": "Export",
  "exportSuccess": "Export successful",
  "exportError": "Error",
  "selectAtLeastOneField": "Please select at least one field to export",
  "exportedDescription": "Results have been exported",
  "announcement": "announcement",
  "announcements": "announcements",
  "willBeExported": "will be exported",
  "willBeExportedPlural": "will be exported",

  // Field labels
  "fieldLabels": {
    "title": "Title",
    "price": "Price",
    "location": "Location",
    "condition": "Condition",
    "createdAt": "Date created",
    "description": "Description",
    "contactPhone": "Phone",
    "contactEmail": "Email",
    "viewsCount": "Views count",
    "isUrgent": "Urgent",
    "isFeatured": "Featured"
  }
};
