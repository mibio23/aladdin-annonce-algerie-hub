export const shop = {
  // Page de création de boutique
  createShop: {
    title: "إنشئ متجرك",
    subtitle: "اعرض منتجاتك وخدماتك لآلاف العملاء المحتملين",
    tips: {
      title: "نصائح لمتجر ناجح:",
      tip1: "اختر اسمًا واضحًا وسهل التذكر",
      tip2: "أضف شعارًا عالي الجودة",
      tip3: "اعرض منتجاتك بصور جذابة",
      tip4: "اكتب وصفًا مفصلاً لأنشطتك",
      tip5: "قدم معلومات اتصال موثوقة للتواصل معك"
    },
    form: {
      informations: "معلومات المتجر",
      name: "اسم المتجر",
      namePlaceholder: "مثال: متجر الموضة الجزائر",
      description: "الوصف",
      descriptionPlaceholder: "صف متجرك ومنتجاتك وخدماتك...",
      wilaya: "الولاية",
      wilayaPlaceholder: "اختر ولاية",
      phone: "أرقام الهاتف",
      phonePlaceholder: "0555 XX XX XX",
      addPhone: "إضافة رقم",
      logo: "شعار المتجر",
      logoUploadText: "انقر لإضافة شعار",
      productImages: "صور المنتجات (بحد أقصى 8)",
      productImagesUploadText: "انقر لإضافة صور",
      onlineShop: "متجر عبر الإنترنت (بيع على الإنترنت)",
      cancelButton: "إلغاء",
      submitButton: "إنشاء المتجر",
      creatingButton: "إنشاء...",
      required: "مطلوب"
    },
    benefits: {
      title: "لماذا تنشئ متجرًا؟",
      visibility: {
        title: "زيادة الرؤية",
        description: "سيكون متجرك مرئيًا لآلاف العملاء المحتملين في جميع أنحاء الجزائر."
      },
      management: {
        title: "إدارة سهلة",
        description: "أضف وعدّل واحذف منتجاتك بسهولة من مساحتك الشخصية."
      },
      contact: {
        title: "اتصال مباشر",
        description: "يمكن للعملاء التواصل معك مباشرة عبر متجرك للحصول على مزيد من المعلومات."
      }
    }
  },
  
  // Page de consultation de boutique
  viewShop: {
    backButton: "العودة إلى الصفحة الرئيسية",
    online: "عبر الإنترنت",
    verified: "موثق",
    memberSince: "عضو منذ 2023",
    addToFavorites: "إضافة إلى المفضلة",
    removeFromFavorites: "إزالة من المفضلة",
    share: "مشاركة",
    productGallery: "معرض المنتجات",
    about: "حول",
    contact: "اتصال",
    reviews: "مراجعات",
    description: "وصف المتجر",
    generalInfo: "معلومات عامة",
    type: "النوع",
    onlineShop: "متجر عبر الإنترنت",
    physicalShop: "متجر فعلي",
    location: "الموقع",
    status: "الحالة",
    services: "الخدمات",
    onlineSales: "المبيعات عبر الإنترنت متاحة",
    phoneSupport: "دعم الهاتف",
    contactInfo: "معلومات الاتصال",
    call: "اتصال",
    contactShop: "اتصل بالمحل",
    shopProfile: "ملف المتجر",
    similarShops: "متاجر مشابهة",
    shopNotFound: "المتجر غير موجود",
    shopNotFoundText: "المتجر الذي تبحث عنه غير موجود أو تمت إزالته.",
    linkCopied: "تم نسخ الرابط",
    linkCopiedText: "تم نسخ رابط المتجر إلى الحافظة الخاصة بك",
    addedToFavorites: "تمت إضافة المتجر إلى مفضلاتك",
    removedFromFavorites: "تمت إزالة المتجر من مفضلاتك",
    loginRequiredTitle: "تسجيل الدخول مطلوب",
    loginRequiredDescription: "يرجى تسجيل الدخول أو التسجيل لإضافة هذا المتجر إلى المفضلة.",
    noReviews: "لا توجد مراجعات حتى الآن",
    noReviewsText: "كن أول من يترك مراجعة لهذا المتجر.",
    loginRequiredVoteTitle: "تسجيل الدخول مطلوب",
    loginRequiredVoteDescription: "يرجى تسجيل الدخول لتقييم هذا المتجر.",
    voteRecorded: "تم تسجيل التصويت",
    voteRecordedDesc: "لقد قيمت هذا المتجر بـ {star} نجوم.",
    voteError: "خطأ",
    voteErrorDesc: "تعذر تسجيل تصويتك.",
    loginRequiredContactTitle: "تسجيل الدخول مطلوب",
    loginRequiredContactDescription: "يرجى تسجيل الدخول للاتصال بهذا المتجر."
  },
  
  // Modal de contact
  contactModal: {
    title: "اتصل بـ {shopName}",
    description: "أرسل رسالة مباشرة إلى المتجر للحصول على مزيد من المعلومات.",
    contactInfo: "معلومات الاتصال",
    yourName: "اسمك",
    yourEmail: "بريدك الإلكتروني",
    yourMessage: "رسالتك",
    messagePlaceholder: "صف ما تبحث عنه أو اطرح أسئلتك...",
    sendingButton: "جارٍ الإرسال...",
    sendButton: "إرسال الرسالة",
    messageSent: "تم إرسال الرسالة!",
    messageSentText: "تم إرسال رسالتك إلى {shopName}. ستصدر استجابة قريبًا.",
    messageError: "حدث خطأ أثناء إرسال رسالتك"
  },
  
  // Messages d'erreur et de succès
  messages: {
    shopCreated: "تم إنشاء متجرك بنجاح",
    errorCreatingShop: "حدث خطأ أثناء إنشاء متجرك",
    errorLoadingShop: "غير قادر على تحميل معلومات المتجر",
    fillRequiredFields: "يرجى ملء جميع الحقول المطلوبة",
    mustBeLoggedIn: "يجب أن تكون مسجلاً الدخول لإنشاء متجر",
    messageRequired: "يرجى إدخال رسالة"
  }
};