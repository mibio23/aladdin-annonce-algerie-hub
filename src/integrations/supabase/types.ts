export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "12.2.3 (519615d)"
  }
  public: {
    Tables: {
      advertising_banner_translations: {
        Row: {
          banner_id: string
          button_text: string
          created_at: string
          description: string | null
          id: string
          language_code: string
          subtitle: string | null
          title: string
          updated_at: string
        }
        Insert: {
          banner_id: string
          button_text: string
          created_at?: string
          description?: string | null
          id?: string
          language_code: string
          subtitle?: string | null
          title: string
          updated_at?: string
        }
        Update: {
          banner_id?: string
          button_text?: string
          created_at?: string
          description?: string | null
          id?: string
          language_code?: string
          subtitle?: string | null
          title?: string
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "advertising_banner_translations_banner_id_fkey"
            columns: ["banner_id"]
            isOneToOne: false
            referencedRelation: "advertising_banners"
            referencedColumns: ["id"]
          },
        ]
      }
      advertising_banners: {
        Row: {
          background_gradient: string
          button_text: string
          created_at: string
          created_by: string | null
          description: string | null
          end_at: string | null
          icon_emoji: string | null
          id: string
          image_url: string | null
          is_active: boolean
          link_url: string | null
          position_order: number
          subtitle: string | null
          title: string
          updated_at: string
        }
        Insert: {
          background_gradient?: string
          button_text?: string
          created_at?: string
          created_by?: string | null
          description?: string | null
          end_at?: string | null
          icon_emoji?: string | null
          id?: string
          image_url?: string | null
          is_active?: boolean
          link_url?: string | null
          position_order?: number
          subtitle?: string | null
          title: string
          updated_at?: string
        }
        Update: {
          background_gradient?: string
          button_text?: string
          created_at?: string
          created_by?: string | null
          description?: string | null
          end_at?: string | null
          icon_emoji?: string | null
          id?: string
          image_url?: string | null
          is_active?: boolean
          link_url?: string | null
          position_order?: number
          subtitle?: string | null
          title?: string
          updated_at?: string
        }
        Relationships: []
      }
      agriculture_details: {
        Row: {
          announcement_id: string
          condition: string | null
          created_at: string | null
          id: string
          origin: string | null
          quantity: string | null
          type: string | null
        }
        Insert: {
          announcement_id: string
          condition?: string | null
          created_at?: string | null
          id?: string
          origin?: string | null
          quantity?: string | null
          type?: string | null
        }
        Update: {
          announcement_id?: string
          condition?: string | null
          created_at?: string | null
          id?: string
          origin?: string | null
          quantity?: string | null
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "agriculture_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "agriculture_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "agriculture_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      ai_learning_data: {
        Row: {
          ai_output: string
          confidence_score: number | null
          created_at: string
          feedback_score: number | null
          id: string
          improvement_applied: boolean | null
          intent_detected: string | null
          updated_at: string
          user_input: string
        }
        Insert: {
          ai_output: string
          confidence_score?: number | null
          created_at?: string
          feedback_score?: number | null
          id?: string
          improvement_applied?: boolean | null
          intent_detected?: string | null
          updated_at?: string
          user_input: string
        }
        Update: {
          ai_output?: string
          confidence_score?: number | null
          created_at?: string
          feedback_score?: number | null
          id?: string
          improvement_applied?: boolean | null
          intent_detected?: string | null
          updated_at?: string
          user_input?: string
        }
        Relationships: []
      }
      animals_details: {
        Row: {
          age: string | null
          announcement_id: string
          breed: string | null
          created_at: string | null
          gender: string | null
          id: string
          species: string | null
        }
        Insert: {
          age?: string | null
          announcement_id: string
          breed?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          species?: string | null
        }
        Update: {
          age?: string | null
          announcement_id?: string
          breed?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          species?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "animals_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "animals_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "animals_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      announcement_favorites: {
        Row: {
          announcement_id: string
          created_at: string
          id: string
          user_id: string
        }
        Insert: {
          announcement_id: string
          created_at?: string
          id?: string
          user_id: string
        }
        Update: {
          announcement_id?: string
          created_at?: string
          id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "announcement_favorites_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcement_favorites_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcement_favorites_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      announcement_views: {
        Row: {
          announcement_id: string
          id: string
          ip_address: unknown
          user_agent: string | null
          user_id: string | null
          viewed_at: string
        }
        Insert: {
          announcement_id: string
          id?: string
          ip_address?: unknown
          user_agent?: string | null
          user_id?: string | null
          viewed_at?: string
        }
        Update: {
          announcement_id?: string
          id?: string
          ip_address?: unknown
          user_agent?: string | null
          user_id?: string | null
          viewed_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "announcement_views_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcement_views_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcement_views_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      announcements: {
        Row: {
          address: string | null
          animal_age: number | null
          animal_age_unit: string | null
          animal_breed: string | null
          animal_dewormed: boolean | null
          animal_gender: string | null
          animal_pedigree: boolean | null
          animal_species: string | null
          animal_sterilized: boolean | null
          animal_vaccinated: boolean | null
          attributes: Json | null
          availability_date: string | null
          brand: string | null
          cash_discount: number | null
          category_id: string
          category_slug: string | null
          color: string | null
          commune: string | null
          condition: string | null
          contact_count: number | null
          created_at: string
          currency: string | null
          deleted_at: string | null
          delivery_areas: string[] | null
          delivery_available: boolean | null
          delivery_fees: number | null
          delivery_location_name: string | null
          description: string
          detail_photos: string[] | null
          dimensions: string | null
          documentation: string[] | null
          email: string | null
          exchange_condition: string | null
          exchange_offered: string | null
          exchange_possible: boolean | null
          exchange_type: string | null
          exchange_value: number | null
          exchange_wanted: string | null
          expires_at: string | null
          finance_amount: number | null
          finance_currency: string | null
          finance_exchange_rate: number | null
          finance_payment_methods: string[] | null
          finance_service_type: string | null
          global_announcement_number: number
          global_listing_number: number
          has_invoice: boolean | null
          id: string
          image_url: string | null
          image_urls: string[] | null
          images: string[] | null
          included_accessories: string[] | null
          is_featured: boolean | null
          is_negotiable: boolean | null
          is_urgent: boolean | null
          keywords: string[] | null
          latitude: number | null
          location: string | null
          longitude: number | null
          model: string | null
          original_price: number | null
          packaging_info: string | null
          phone_number: string | null
          premium_end_at: string | null
          price: number | null
          product_video: string | null
          purchase_year: number | null
          search_vector: unknown
          selling_reason: string | null
          service_availability: string | null
          service_experience: number | null
          service_location_type: string | null
          service_price_model: string | null
          service_type: string | null
          shop_id: string | null
          shop_logo_url: string | null
          shop_name: string | null
          status: string | null
          subcategory_id: string | null
          title: string
          type: string | null
          updated_at: string
          urgent_message: string | null
          user_id: string
          view_count: number | null
          warranty_duration: string | null
          website: string | null
          weight_info: string | null
          wilaya: string
        }
        Insert: {
          address?: string | null
          animal_age?: number | null
          animal_age_unit?: string | null
          animal_breed?: string | null
          animal_dewormed?: boolean | null
          animal_gender?: string | null
          animal_pedigree?: boolean | null
          animal_species?: string | null
          animal_sterilized?: boolean | null
          animal_vaccinated?: boolean | null
          attributes?: Json | null
          availability_date?: string | null
          brand?: string | null
          cash_discount?: number | null
          category_id: string
          category_slug?: string | null
          color?: string | null
          commune?: string | null
          condition?: string | null
          contact_count?: number | null
          created_at?: string
          currency?: string | null
          deleted_at?: string | null
          delivery_areas?: string[] | null
          delivery_available?: boolean | null
          delivery_fees?: number | null
          delivery_location_name?: string | null
          description: string
          detail_photos?: string[] | null
          dimensions?: string | null
          documentation?: string[] | null
          email?: string | null
          exchange_condition?: string | null
          exchange_offered?: string | null
          exchange_possible?: boolean | null
          exchange_type?: string | null
          exchange_value?: number | null
          exchange_wanted?: string | null
          expires_at?: string | null
          finance_amount?: number | null
          finance_currency?: string | null
          finance_exchange_rate?: number | null
          finance_payment_methods?: string[] | null
          finance_service_type?: string | null
          global_announcement_number: number
          global_listing_number?: number
          has_invoice?: boolean | null
          id?: string
          image_url?: string | null
          image_urls?: string[] | null
          images?: string[] | null
          included_accessories?: string[] | null
          is_featured?: boolean | null
          is_negotiable?: boolean | null
          is_urgent?: boolean | null
          keywords?: string[] | null
          latitude?: number | null
          location?: string | null
          longitude?: number | null
          model?: string | null
          original_price?: number | null
          packaging_info?: string | null
          phone_number?: string | null
          premium_end_at?: string | null
          price?: number | null
          product_video?: string | null
          purchase_year?: number | null
          search_vector?: unknown
          selling_reason?: string | null
          service_availability?: string | null
          service_experience?: number | null
          service_location_type?: string | null
          service_price_model?: string | null
          service_type?: string | null
          shop_id?: string | null
          shop_logo_url?: string | null
          shop_name?: string | null
          status?: string | null
          subcategory_id?: string | null
          title: string
          type?: string | null
          updated_at?: string
          urgent_message?: string | null
          user_id: string
          view_count?: number | null
          warranty_duration?: string | null
          website?: string | null
          weight_info?: string | null
          wilaya: string
        }
        Update: {
          address?: string | null
          animal_age?: number | null
          animal_age_unit?: string | null
          animal_breed?: string | null
          animal_dewormed?: boolean | null
          animal_gender?: string | null
          animal_pedigree?: boolean | null
          animal_species?: string | null
          animal_sterilized?: boolean | null
          animal_vaccinated?: boolean | null
          attributes?: Json | null
          availability_date?: string | null
          brand?: string | null
          cash_discount?: number | null
          category_id?: string
          category_slug?: string | null
          color?: string | null
          commune?: string | null
          condition?: string | null
          contact_count?: number | null
          created_at?: string
          currency?: string | null
          deleted_at?: string | null
          delivery_areas?: string[] | null
          delivery_available?: boolean | null
          delivery_fees?: number | null
          delivery_location_name?: string | null
          description?: string
          detail_photos?: string[] | null
          dimensions?: string | null
          documentation?: string[] | null
          email?: string | null
          exchange_condition?: string | null
          exchange_offered?: string | null
          exchange_possible?: boolean | null
          exchange_type?: string | null
          exchange_value?: number | null
          exchange_wanted?: string | null
          expires_at?: string | null
          finance_amount?: number | null
          finance_currency?: string | null
          finance_exchange_rate?: number | null
          finance_payment_methods?: string[] | null
          finance_service_type?: string | null
          global_announcement_number?: number
          global_listing_number?: number
          has_invoice?: boolean | null
          id?: string
          image_url?: string | null
          image_urls?: string[] | null
          images?: string[] | null
          included_accessories?: string[] | null
          is_featured?: boolean | null
          is_negotiable?: boolean | null
          is_urgent?: boolean | null
          keywords?: string[] | null
          latitude?: number | null
          location?: string | null
          longitude?: number | null
          model?: string | null
          original_price?: number | null
          packaging_info?: string | null
          phone_number?: string | null
          premium_end_at?: string | null
          price?: number | null
          product_video?: string | null
          purchase_year?: number | null
          search_vector?: unknown
          selling_reason?: string | null
          service_availability?: string | null
          service_experience?: number | null
          service_location_type?: string | null
          service_price_model?: string | null
          service_type?: string | null
          shop_id?: string | null
          shop_logo_url?: string | null
          shop_name?: string | null
          status?: string | null
          subcategory_id?: string | null
          title?: string
          type?: string | null
          updated_at?: string
          urgent_message?: string | null
          user_id?: string
          view_count?: number | null
          warranty_duration?: string | null
          website?: string | null
          weight_info?: string | null
          wilaya?: string
        }
        Relationships: [
          {
            foreignKeyName: "announcements_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcements_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_announcements_category"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_announcements_category"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      anticipation_suggestions: {
        Row: {
          confidence_score: number | null
          context_data: Json | null
          created_at: string
          id: string
          is_clicked: boolean | null
          is_helpful: boolean | null
          session_id: string
          suggestion_content: string
          suggestion_type: string
        }
        Insert: {
          confidence_score?: number | null
          context_data?: Json | null
          created_at?: string
          id?: string
          is_clicked?: boolean | null
          is_helpful?: boolean | null
          session_id: string
          suggestion_content: string
          suggestion_type: string
        }
        Update: {
          confidence_score?: number | null
          context_data?: Json | null
          created_at?: string
          id?: string
          is_clicked?: boolean | null
          is_helpful?: boolean | null
          session_id?: string
          suggestion_content?: string
          suggestion_type?: string
        }
        Relationships: []
      }
      appliance_details: {
        Row: {
          announcement_id: string
          brand: string | null
          condition: string | null
          created_at: string | null
          energy_class: string | null
          id: string
          type: string | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          condition?: string | null
          created_at?: string | null
          energy_class?: string | null
          id?: string
          type?: string | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          condition?: string | null
          created_at?: string | null
          energy_class?: string | null
          id?: string
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "appliance_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "appliance_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "appliance_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      appliances_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          condition_detail: string | null
          created_at: string | null
          energy_class: string | null
          id: string
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          condition_detail?: string | null
          created_at?: string | null
          energy_class?: string | null
          id?: string
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          condition_detail?: string | null
          created_at?: string | null
          energy_class?: string | null
          id?: string
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "appliances_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "appliances_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "appliances_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      baby_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          condition_detail: string | null
          created_at: string | null
          id: string
          size: string | null
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          condition_detail?: string | null
          created_at?: string | null
          id?: string
          size?: string | null
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          condition_detail?: string | null
          created_at?: string | null
          id?: string
          size?: string | null
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "baby_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "baby_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "baby_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      bags_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          created_at: string | null
          id: string
          material: string | null
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          id?: string
          material?: string | null
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          id?: string
          material?: string | null
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "bags_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "bags_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "bags_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      beauty_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          created_at: string | null
          gender: string | null
          id: string
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "beauty_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "beauty_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "beauty_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      bike_details: {
        Row: {
          announcement_id: string
          brand: string | null
          created_at: string | null
          electric: boolean | null
          frame_material: string | null
          frame_size: string | null
          id: string
          model: string | null
          motorized: boolean | null
          type: string | null
          updated_at: string | null
          wheel_size: string | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          created_at?: string | null
          electric?: boolean | null
          frame_material?: string | null
          frame_size?: string | null
          id?: string
          model?: string | null
          motorized?: boolean | null
          type?: string | null
          updated_at?: string | null
          wheel_size?: string | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          created_at?: string | null
          electric?: boolean | null
          frame_material?: string | null
          frame_size?: string | null
          id?: string
          model?: string | null
          motorized?: boolean | null
          type?: string | null
          updated_at?: string | null
          wheel_size?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "bike_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "bike_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "bike_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      boat_details: {
        Row: {
          announcement_id: string
          brand: string | null
          cabin: boolean | null
          created_at: string | null
          hours: number | null
          id: string
          length: number | null
          model: string | null
          motor_power: number | null
          motor_type: string | null
          type: string | null
          updated_at: string | null
          width: number | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          cabin?: boolean | null
          created_at?: string | null
          hours?: number | null
          id?: string
          length?: number | null
          model?: string | null
          motor_power?: number | null
          motor_type?: string | null
          type?: string | null
          updated_at?: string | null
          width?: number | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          cabin?: boolean | null
          created_at?: string | null
          hours?: number | null
          id?: string
          length?: number | null
          model?: string | null
          motor_power?: number | null
          motor_type?: string | null
          type?: string | null
          updated_at?: string | null
          width?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "boat_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "boat_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "boat_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      bookings: {
        Row: {
          announcement_id: string
          booking_date: string
          booking_reference: string
          cancellation_reason: string | null
          cancelled_at: string | null
          contact_email: string | null
          contact_phone: string | null
          created_at: string
          currency: string | null
          end_time: string
          guest_count: number | null
          id: string
          payment_status: string | null
          special_requests: string | null
          start_time: string
          status: string
          total_amount: number | null
          updated_at: string
          user_id: string
        }
        Insert: {
          announcement_id: string
          booking_date: string
          booking_reference?: string
          cancellation_reason?: string | null
          cancelled_at?: string | null
          contact_email?: string | null
          contact_phone?: string | null
          created_at?: string
          currency?: string | null
          end_time: string
          guest_count?: number | null
          id?: string
          payment_status?: string | null
          special_requests?: string | null
          start_time: string
          status?: string
          total_amount?: number | null
          updated_at?: string
          user_id: string
        }
        Update: {
          announcement_id?: string
          booking_date?: string
          booking_reference?: string
          cancellation_reason?: string | null
          cancelled_at?: string | null
          contact_email?: string | null
          contact_phone?: string | null
          created_at?: string
          currency?: string | null
          end_time?: string
          guest_count?: number | null
          id?: string
          payment_status?: string | null
          special_requests?: string | null
          start_time?: string
          status?: string
          total_amount?: number | null
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      business_contacts: {
        Row: {
          contact_type: string
          contact_value: string
          created_at: string
          id: string
          is_public: boolean
          requires_auth: boolean
          shop_id: string
          updated_at: string
        }
        Insert: {
          contact_type: string
          contact_value: string
          created_at?: string
          id?: string
          is_public?: boolean
          requires_auth?: boolean
          shop_id: string
          updated_at?: string
        }
        Update: {
          contact_type?: string
          contact_value?: string
          created_at?: string
          id?: string
          is_public?: boolean
          requires_auth?: boolean
          shop_id?: string
          updated_at?: string
        }
        Relationships: []
      }
      categories: {
        Row: {
          created_at: string
          description: string | null
          icon: string | null
          icon_name: string | null
          id: string
          id_uuid: string | null
          image_url: string | null
          is_active: boolean | null
          is_featured: boolean | null
          level: number | null
          name: string
          parent_id: string | null
          parent_id_uuid: string | null
          position_order: number | null
          slug: string
          sort_order: number | null
          updated_at: string
        }
        Insert: {
          created_at?: string
          description?: string | null
          icon?: string | null
          icon_name?: string | null
          id?: string
          id_uuid?: string | null
          image_url?: string | null
          is_active?: boolean | null
          is_featured?: boolean | null
          level?: number | null
          name: string
          parent_id?: string | null
          parent_id_uuid?: string | null
          position_order?: number | null
          slug: string
          sort_order?: number | null
          updated_at?: string
        }
        Update: {
          created_at?: string
          description?: string | null
          icon?: string | null
          icon_name?: string | null
          id?: string
          id_uuid?: string | null
          image_url?: string | null
          is_active?: boolean | null
          is_featured?: boolean | null
          level?: number | null
          name?: string
          parent_id?: string | null
          parent_id_uuid?: string | null
          position_order?: number | null
          slug?: string
          sort_order?: number | null
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "categories_parent_id_fkey"
            columns: ["parent_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "categories_parent_id_fkey"
            columns: ["parent_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      category_images: {
        Row: {
          alt_text: string | null
          category_id: string
          created_at: string | null
          id: string
          image_type: string | null
          image_url: string
          updated_at: string | null
        }
        Insert: {
          alt_text?: string | null
          category_id: string
          created_at?: string | null
          id?: string
          image_type?: string | null
          image_url: string
          updated_at?: string | null
        }
        Update: {
          alt_text?: string | null
          category_id?: string
          created_at?: string | null
          id?: string
          image_type?: string | null
          image_url?: string
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "category_images_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "category_images_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      category_tags: {
        Row: {
          category_id: string
          created_at: string | null
          id: string
          tag: string
        }
        Insert: {
          category_id: string
          created_at?: string | null
          id?: string
          tag: string
        }
        Update: {
          category_id?: string
          created_at?: string | null
          id?: string
          tag?: string
        }
        Relationships: [
          {
            foreignKeyName: "category_tags_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "category_tags_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      category_translations: {
        Row: {
          category_id: string
          created_at: string | null
          description: string | null
          id: string
          language_code: string
          meta_description: string | null
          meta_title: string | null
          name: string
          updated_at: string | null
        }
        Insert: {
          category_id: string
          created_at?: string | null
          description?: string | null
          id?: string
          language_code: string
          meta_description?: string | null
          meta_title?: string | null
          name: string
          updated_at?: string | null
        }
        Update: {
          category_id?: string
          created_at?: string | null
          description?: string | null
          id?: string
          language_code?: string
          meta_description?: string | null
          meta_title?: string | null
          name?: string
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "category_translations_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "category_translations_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      clothing_details: {
        Row: {
          announcement_id: string
          brand: string | null
          condition: string | null
          created_at: string | null
          gender: string | null
          id: string
          material: string | null
          size: string | null
          type: string | null
          updated_at: string | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          condition?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          material?: string | null
          size?: string | null
          type?: string | null
          updated_at?: string | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          condition?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          material?: string | null
          size?: string | null
          type?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "clothing_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "clothing_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "clothing_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      computer_details: {
        Row: {
          announcement_id: string
          created_at: string | null
          graphics_card: string | null
          id: string
          os: string | null
          processor: string | null
          ram: string | null
          screen_size: string | null
          storage: string | null
          updated_at: string | null
        }
        Insert: {
          announcement_id: string
          created_at?: string | null
          graphics_card?: string | null
          id?: string
          os?: string | null
          processor?: string | null
          ram?: string | null
          screen_size?: string | null
          storage?: string | null
          updated_at?: string | null
        }
        Update: {
          announcement_id?: string
          created_at?: string | null
          graphics_card?: string | null
          id?: string
          os?: string | null
          processor?: string | null
          ram?: string | null
          screen_size?: string | null
          storage?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "computer_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "computer_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "computer_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      construction_details: {
        Row: {
          announcement_id: string
          brand: string | null
          created_at: string | null
          hours: number | null
          id: string
          model: string | null
          power: number | null
          type: string | null
          updated_at: string | null
          weight: number | null
          year: number | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          created_at?: string | null
          hours?: number | null
          id?: string
          model?: string | null
          power?: number | null
          type?: string | null
          updated_at?: string | null
          weight?: number | null
          year?: number | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          created_at?: string | null
          hours?: number | null
          id?: string
          model?: string | null
          power?: number | null
          type?: string | null
          updated_at?: string | null
          weight?: number | null
          year?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "construction_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "construction_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "construction_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      contact_requests: {
        Row: {
          announcement_id: string
          created_at: string
          id: string
          message: string | null
          requester_email: string
          requester_name: string
          status: string
          updated_at: string
        }
        Insert: {
          announcement_id: string
          created_at?: string
          id?: string
          message?: string | null
          requester_email: string
          requester_name: string
          status?: string
          updated_at?: string
        }
        Update: {
          announcement_id?: string
          created_at?: string
          id?: string
          message?: string | null
          requester_email?: string
          requester_name?: string
          status?: string
          updated_at?: string
        }
        Relationships: []
      }
      conversation_memory: {
        Row: {
          content: string
          created_at: string
          id: string
          metadata: Json | null
          role: string
          session_id: string
          updated_at: string
        }
        Insert: {
          content: string
          created_at?: string
          id?: string
          metadata?: Json | null
          role: string
          session_id: string
          updated_at?: string
        }
        Update: {
          content?: string
          created_at?: string
          id?: string
          metadata?: Json | null
          role?: string
          session_id?: string
          updated_at?: string
        }
        Relationships: []
      }
      conversations: {
        Row: {
          created_at: string | null
          id: string
          last_message_at: string | null
          participant_1_id: string
          participant_2_id: string
          subject_id: string | null
          subject_type: string | null
          updated_at: string | null
        }
        Insert: {
          created_at?: string | null
          id?: string
          last_message_at?: string | null
          participant_1_id: string
          participant_2_id: string
          subject_id?: string | null
          subject_type?: string | null
          updated_at?: string | null
        }
        Update: {
          created_at?: string | null
          id?: string
          last_message_at?: string | null
          participant_1_id?: string
          participant_2_id?: string
          subject_id?: string | null
          subject_type?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      crafts_details: {
        Row: {
          announcement_id: string | null
          created_at: string | null
          id: string
          material: string | null
          origin: string | null
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          created_at?: string | null
          id?: string
          material?: string | null
          origin?: string | null
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          created_at?: string | null
          id?: string
          material?: string | null
          origin?: string | null
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "crafts_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "crafts_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "crafts_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      education_loisirs_details: {
        Row: {
          announcement_id: string
          art_material: string | null
          art_type: string | null
          book_condition: string | null
          book_language: string | null
          book_type: string | null
          club_activity_type: string | null
          club_age_group: string | null
          club_association_type: string | null
          club_audience: string | null
          club_format: string | null
          club_genre: string | null
          club_sport_type: string | null
          club_theme: string | null
          created_at: string | null
          education_level: string | null
          education_mode: string | null
          education_subject: string | null
          game_players: string | null
          game_type: string | null
          id: string
          sport_brand: string | null
          sport_condition: string | null
          sport_type: string | null
          toy_age_group: string | null
          toy_material: string | null
          updated_at: string | null
        }
        Insert: {
          announcement_id: string
          art_material?: string | null
          art_type?: string | null
          book_condition?: string | null
          book_language?: string | null
          book_type?: string | null
          club_activity_type?: string | null
          club_age_group?: string | null
          club_association_type?: string | null
          club_audience?: string | null
          club_format?: string | null
          club_genre?: string | null
          club_sport_type?: string | null
          club_theme?: string | null
          created_at?: string | null
          education_level?: string | null
          education_mode?: string | null
          education_subject?: string | null
          game_players?: string | null
          game_type?: string | null
          id?: string
          sport_brand?: string | null
          sport_condition?: string | null
          sport_type?: string | null
          toy_age_group?: string | null
          toy_material?: string | null
          updated_at?: string | null
        }
        Update: {
          announcement_id?: string
          art_material?: string | null
          art_type?: string | null
          book_condition?: string | null
          book_language?: string | null
          book_type?: string | null
          club_activity_type?: string | null
          club_age_group?: string | null
          club_association_type?: string | null
          club_audience?: string | null
          club_format?: string | null
          club_genre?: string | null
          club_sport_type?: string | null
          club_theme?: string | null
          created_at?: string | null
          education_level?: string | null
          education_mode?: string | null
          education_subject?: string | null
          game_players?: string | null
          game_type?: string | null
          id?: string
          sport_brand?: string | null
          sport_condition?: string | null
          sport_type?: string | null
          toy_age_group?: string | null
          toy_material?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "education_loisirs_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "education_loisirs_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "education_loisirs_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      event_details: {
        Row: {
          access_type: string | null
          announcement_id: string
          created_at: string
          event_type: string | null
          format: string | null
          id: string
        }
        Insert: {
          access_type?: string | null
          announcement_id: string
          created_at?: string
          event_type?: string | null
          format?: string | null
          id?: string
        }
        Update: {
          access_type?: string | null
          announcement_id?: string
          created_at?: string
          event_type?: string | null
          format?: string | null
          id?: string
        }
        Relationships: [
          {
            foreignKeyName: "event_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "event_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "event_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      exchange_details: {
        Row: {
          announcement_id: string
          condition: string | null
          created_at: string | null
          exchange_type: string | null
          id: string
          item_offered: string | null
          item_wanted: string | null
        }
        Insert: {
          announcement_id: string
          condition?: string | null
          created_at?: string | null
          exchange_type?: string | null
          id?: string
          item_offered?: string | null
          item_wanted?: string | null
        }
        Update: {
          announcement_id?: string
          condition?: string | null
          created_at?: string | null
          exchange_type?: string | null
          id?: string
          item_offered?: string | null
          item_wanted?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "exchange_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "exchange_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "exchange_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      fashion_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          clothing_type: string | null
          created_at: string | null
          gender: string | null
          id: string
          material: string | null
          size: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          clothing_type?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          material?: string | null
          size?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          clothing_type?: string | null
          created_at?: string | null
          gender?: string | null
          id?: string
          material?: string | null
          size?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "fashion_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fashion_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fashion_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      favorites: {
        Row: {
          announcement_id: string
          created_at: string
          id: string
          user_id: string
        }
        Insert: {
          announcement_id: string
          created_at?: string
          id?: string
          user_id: string
        }
        Update: {
          announcement_id?: string
          created_at?: string
          id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "favorites_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "favorites_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "favorites_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      finance_details: {
        Row: {
          amount: number | null
          announcement_id: string
          created_at: string | null
          currency_from: string | null
          currency_to: string | null
          id: string
          service_type: string | null
        }
        Insert: {
          amount?: number | null
          announcement_id: string
          created_at?: string | null
          currency_from?: string | null
          currency_to?: string | null
          id?: string
          service_type?: string | null
        }
        Update: {
          amount?: number | null
          announcement_id?: string
          created_at?: string | null
          currency_from?: string | null
          currency_to?: string | null
          id?: string
          service_type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "finance_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "finance_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "finance_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      gaming_details: {
        Row: {
          announcement_id: string | null
          created_at: string | null
          genre: string | null
          id: string
          platform: string | null
          product_type: string | null
        }
        Insert: {
          announcement_id?: string | null
          created_at?: string | null
          genre?: string | null
          id?: string
          platform?: string | null
          product_type?: string | null
        }
        Update: {
          announcement_id?: string | null
          created_at?: string | null
          genre?: string | null
          id?: string
          platform?: string | null
          product_type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "gaming_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "gaming_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "gaming_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      gastronomy_details: {
        Row: {
          announcement_id: string | null
          created_at: string | null
          diet: string | null
          id: string
          order_mode: string | null
          origin: string | null
          type: string | null
          unit: string | null
        }
        Insert: {
          announcement_id?: string | null
          created_at?: string | null
          diet?: string | null
          id?: string
          order_mode?: string | null
          origin?: string | null
          type?: string | null
          unit?: string | null
        }
        Update: {
          announcement_id?: string | null
          created_at?: string | null
          diet?: string | null
          id?: string
          order_mode?: string | null
          origin?: string | null
          type?: string | null
          unit?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "gastronomy_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "gastronomy_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "gastronomy_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      hardware_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          created_at: string | null
          id: string
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          id?: string
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          id?: string
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "hardware_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "hardware_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "hardware_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      hero_carousel_settings: {
        Row: {
          carousel_id: number
          created_at: string
          id: string
          interval_ms: number
          updated_at: string
        }
        Insert: {
          carousel_id: number
          created_at?: string
          id?: string
          interval_ms?: number
          updated_at?: string
        }
        Update: {
          carousel_id?: number
          created_at?: string
          id?: string
          interval_ms?: number
          updated_at?: string
        }
        Relationships: []
      }
      hero_carousel_slides: {
        Row: {
          animation_type: string | null
          carousel_id: number
          created_at: string
          display_order: number
          end_at: string | null
          font_family: string | null
          font_size: string | null
          id: string
          image_url: string
          is_active: boolean
          text_2: string | null
          text_3: string | null
          text_4: string | null
          text_5: string | null
          text_color: string | null
          text_position: string | null
          text_style: string
          title: string | null
          updated_at: string
        }
        Insert: {
          animation_type?: string | null
          carousel_id: number
          created_at?: string
          display_order?: number
          end_at?: string | null
          font_family?: string | null
          font_size?: string | null
          id?: string
          image_url: string
          is_active?: boolean
          text_2?: string | null
          text_3?: string | null
          text_4?: string | null
          text_5?: string | null
          text_color?: string | null
          text_position?: string | null
          text_style?: string
          title?: string | null
          updated_at?: string
        }
        Update: {
          animation_type?: string | null
          carousel_id?: number
          created_at?: string
          display_order?: number
          end_at?: string | null
          font_family?: string | null
          font_size?: string | null
          id?: string
          image_url?: string
          is_active?: boolean
          text_2?: string | null
          text_3?: string | null
          text_4?: string | null
          text_5?: string | null
          text_color?: string | null
          text_position?: string | null
          text_style?: string
          title?: string | null
          updated_at?: string
        }
        Relationships: []
      }
      home_furniture_details: {
        Row: {
          announcement_id: string
          color: string | null
          created_at: string | null
          dimensions: string | null
          id: string
          material: string | null
          type: string | null
          updated_at: string | null
          weight: string | null
        }
        Insert: {
          announcement_id: string
          color?: string | null
          created_at?: string | null
          dimensions?: string | null
          id?: string
          material?: string | null
          type?: string | null
          updated_at?: string | null
          weight?: string | null
        }
        Update: {
          announcement_id?: string
          color?: string | null
          created_at?: string | null
          dimensions?: string | null
          id?: string
          material?: string | null
          type?: string | null
          updated_at?: string | null
          weight?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "home_furniture_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "home_furniture_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "home_furniture_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      job_details: {
        Row: {
          announcement_id: string
          contract_type: string | null
          created_at: string
          experience_level: string | null
          id: string
          job_type: string | null
          work_regime: string | null
        }
        Insert: {
          announcement_id: string
          contract_type?: string | null
          created_at?: string
          experience_level?: string | null
          id?: string
          job_type?: string | null
          work_regime?: string | null
        }
        Update: {
          announcement_id?: string
          contract_type?: string | null
          created_at?: string
          experience_level?: string | null
          id?: string
          job_type?: string | null
          work_regime?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "job_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "job_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "job_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      messages: {
        Row: {
          content: string
          conversation_id: string
          created_at: string | null
          id: string
          is_read: boolean | null
          sender_id: string
        }
        Insert: {
          content: string
          conversation_id: string
          created_at?: string | null
          id?: string
          is_read?: boolean | null
          sender_id: string
        }
        Update: {
          content?: string
          conversation_id?: string
          created_at?: string | null
          id?: string
          is_read?: boolean | null
          sender_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "messages_conversation_id_fkey"
            columns: ["conversation_id"]
            isOneToOne: false
            referencedRelation: "conversations"
            referencedColumns: ["id"]
          },
        ]
      }
      moderation_actions: {
        Row: {
          action_type: string
          admin_id: string
          created_at: string
          evidence_links: string[] | null
          expires_at: string | null
          id: string
          reason: string
          user_id: string
        }
        Insert: {
          action_type: string
          admin_id: string
          created_at?: string
          evidence_links?: string[] | null
          expires_at?: string | null
          id?: string
          reason: string
          user_id: string
        }
        Update: {
          action_type?: string
          admin_id?: string
          created_at?: string
          evidence_links?: string[] | null
          expires_at?: string | null
          id?: string
          reason?: string
          user_id?: string
        }
        Relationships: []
      }
      multimedia_details: {
        Row: {
          announcement_id: string
          brand: string | null
          condition: string | null
          created_at: string | null
          device_type: string | null
          id: string
          model: string | null
          resolution: string | null
          technology: string | null
          type: string | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          condition?: string | null
          created_at?: string | null
          device_type?: string | null
          id?: string
          model?: string | null
          resolution?: string | null
          technology?: string | null
          type?: string | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          condition?: string | null
          created_at?: string | null
          device_type?: string | null
          id?: string
          model?: string | null
          resolution?: string | null
          technology?: string | null
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "multimedia_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "multimedia_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "multimedia_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      notification_campaigns: {
        Row: {
          channels: string[]
          completed_at: string | null
          created_at: string
          created_by: string | null
          delivered_count: number | null
          description: string | null
          failed_count: number | null
          id: string
          name: string
          scheduled_at: string | null
          sent_count: number | null
          started_at: string | null
          status: string
          target_criteria: Json
          template_id: string | null
          total_recipients: number | null
          updated_at: string
        }
        Insert: {
          channels: string[]
          completed_at?: string | null
          created_at?: string
          created_by?: string | null
          delivered_count?: number | null
          description?: string | null
          failed_count?: number | null
          id?: string
          name: string
          scheduled_at?: string | null
          sent_count?: number | null
          started_at?: string | null
          status?: string
          target_criteria: Json
          template_id?: string | null
          total_recipients?: number | null
          updated_at?: string
        }
        Update: {
          channels?: string[]
          completed_at?: string | null
          created_at?: string
          created_by?: string | null
          delivered_count?: number | null
          description?: string | null
          failed_count?: number | null
          id?: string
          name?: string
          scheduled_at?: string | null
          sent_count?: number | null
          started_at?: string | null
          status?: string
          target_criteria?: Json
          template_id?: string | null
          total_recipients?: number | null
          updated_at?: string
        }
        Relationships: [
          {
            foreignKeyName: "notification_campaigns_template_id_fkey"
            columns: ["template_id"]
            isOneToOne: false
            referencedRelation: "notification_templates"
            referencedColumns: ["id"]
          },
        ]
      }
      notification_delivery_log: {
        Row: {
          attempt_count: number | null
          channel: string
          created_at: string
          delivered_at: string | null
          error_message: string | null
          external_id: string | null
          id: string
          notification_id: string
          provider: string | null
          response_data: Json | null
          sent_at: string | null
          status: string
        }
        Insert: {
          attempt_count?: number | null
          channel: string
          created_at?: string
          delivered_at?: string | null
          error_message?: string | null
          external_id?: string | null
          id?: string
          notification_id: string
          provider?: string | null
          response_data?: Json | null
          sent_at?: string | null
          status: string
        }
        Update: {
          attempt_count?: number | null
          channel?: string
          created_at?: string
          delivered_at?: string | null
          error_message?: string | null
          external_id?: string | null
          id?: string
          notification_id?: string
          provider?: string | null
          response_data?: Json | null
          sent_at?: string | null
          status?: string
        }
        Relationships: [
          {
            foreignKeyName: "notification_delivery_log_notification_id_fkey"
            columns: ["notification_id"]
            isOneToOne: false
            referencedRelation: "notifications"
            referencedColumns: ["id"]
          },
        ]
      }
      notification_preferences: {
        Row: {
          categories_preferences: Json | null
          created_at: string
          email_enabled: boolean | null
          id: string
          in_app_enabled: boolean | null
          push_enabled: boolean | null
          quiet_hours_end: string | null
          quiet_hours_start: string | null
          sms_enabled: boolean | null
          timezone: string | null
          updated_at: string
          user_id: string | null
        }
        Insert: {
          categories_preferences?: Json | null
          created_at?: string
          email_enabled?: boolean | null
          id?: string
          in_app_enabled?: boolean | null
          push_enabled?: boolean | null
          quiet_hours_end?: string | null
          quiet_hours_start?: string | null
          sms_enabled?: boolean | null
          timezone?: string | null
          updated_at?: string
          user_id?: string | null
        }
        Update: {
          categories_preferences?: Json | null
          created_at?: string
          email_enabled?: boolean | null
          id?: string
          in_app_enabled?: boolean | null
          push_enabled?: boolean | null
          quiet_hours_end?: string | null
          quiet_hours_start?: string | null
          sms_enabled?: boolean | null
          timezone?: string | null
          updated_at?: string
          user_id?: string | null
        }
        Relationships: []
      }
      notification_templates: {
        Row: {
          category: string
          created_at: string
          created_by: string | null
          default_channels: string[]
          id: string
          is_active: boolean
          message_template: string
          name: string
          title_template: string
          type: string
          updated_at: string
          variables: Json | null
        }
        Insert: {
          category: string
          created_at?: string
          created_by?: string | null
          default_channels?: string[]
          id?: string
          is_active?: boolean
          message_template: string
          name: string
          title_template: string
          type: string
          updated_at?: string
          variables?: Json | null
        }
        Update: {
          category?: string
          created_at?: string
          created_by?: string | null
          default_channels?: string[]
          id?: string
          is_active?: boolean
          message_template?: string
          name?: string
          title_template?: string
          type?: string
          updated_at?: string
          variables?: Json | null
        }
        Relationships: []
      }
      notifications: {
        Row: {
          category: string
          channels: string[]
          created_at: string
          expires_at: string | null
          id: string
          message: string
          metadata: Json | null
          priority: string
          read_at: string | null
          scheduled_at: string | null
          sent_at: string | null
          status: string
          title: string
          type: string
          updated_at: string
          user_id: string | null
        }
        Insert: {
          category: string
          channels?: string[]
          created_at?: string
          expires_at?: string | null
          id?: string
          message: string
          metadata?: Json | null
          priority?: string
          read_at?: string | null
          scheduled_at?: string | null
          sent_at?: string | null
          status?: string
          title: string
          type: string
          updated_at?: string
          user_id?: string | null
        }
        Update: {
          category?: string
          channels?: string[]
          created_at?: string
          expires_at?: string | null
          id?: string
          message?: string
          metadata?: Json | null
          priority?: string
          read_at?: string | null
          scheduled_at?: string | null
          sent_at?: string | null
          status?: string
          title?: string
          type?: string
          updated_at?: string
          user_id?: string | null
        }
        Relationships: []
      }
      parapharmacy_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          created_at: string | null
          id: string
          type: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          id?: string
          type?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string | null
          id?: string
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "parapharmacy_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "parapharmacy_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "parapharmacy_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      phone_details: {
        Row: {
          announcement_id: string
          brand: string | null
          color: string | null
          created_at: string | null
          id: string
          model: string | null
          os: string | null
          ram: string | null
          screen_size: string | null
          storage: string | null
          updated_at: string | null
        }
        Insert: {
          announcement_id: string
          brand?: string | null
          color?: string | null
          created_at?: string | null
          id?: string
          model?: string | null
          os?: string | null
          ram?: string | null
          screen_size?: string | null
          storage?: string | null
          updated_at?: string | null
        }
        Update: {
          announcement_id?: string
          brand?: string | null
          color?: string | null
          created_at?: string | null
          id?: string
          model?: string | null
          os?: string | null
          ram?: string | null
          screen_size?: string | null
          storage?: string | null
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "phone_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "phone_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "phone_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      popular_keywords: {
        Row: {
          category_context: string[] | null
          created_at: string
          id: string
          keyword: string
          keyword_normalized: string
          last_searched: string | null
          search_count: number | null
          success_rate: number | null
          trending_score: number | null
          updated_at: string
        }
        Insert: {
          category_context?: string[] | null
          created_at?: string
          id?: string
          keyword: string
          keyword_normalized: string
          last_searched?: string | null
          search_count?: number | null
          success_rate?: number | null
          trending_score?: number | null
          updated_at?: string
        }
        Update: {
          category_context?: string[] | null
          created_at?: string
          id?: string
          keyword?: string
          keyword_normalized?: string
          last_searched?: string | null
          search_count?: number | null
          success_rate?: number | null
          trending_score?: number | null
          updated_at?: string
        }
        Relationships: []
      }
      pro_favorites: {
        Row: {
          created_at: string
          id: string
          pro_id: string
          user_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          pro_id: string
          user_id: string
        }
        Update: {
          created_at?: string
          id?: string
          pro_id?: string
          user_id?: string
        }
        Relationships: []
      }
      professional_job_offer_addresses: {
        Row: {
          address: string
          created_at: string | null
          id: string
          job_offer_id: string
          updated_at: string | null
        }
        Insert: {
          address: string
          created_at?: string | null
          id?: string
          job_offer_id: string
          updated_at?: string | null
        }
        Update: {
          address?: string
          created_at?: string | null
          id?: string
          job_offer_id?: string
          updated_at?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "professional_job_offer_addresses_job_offer_id_fkey"
            columns: ["job_offer_id"]
            isOneToOne: true
            referencedRelation: "professional_job_offers"
            referencedColumns: ["id"]
          },
        ]
      }
      professional_job_offers: {
        Row: {
          availability: string | null
          commune: string | null
          created_at: string
          currency: string | null
          description: string | null
          email: string | null
          experience_level: string | null
          expires_at: string | null
          global_listing_number: number
          home_service: boolean | null
          id: string
          images: string[] | null
          is_active: boolean
          is_graduate: boolean | null
          is_urgent: boolean | null
          location: string | null
          logo_url: string | null
          phone_numbers: string[] | null
          profession: string
          salary: number | null
          specialty: string | null
          title: string
          updated_at: string
          user_id: string
          view_count: number
          wilaya: string | null
        }
        Insert: {
          availability?: string | null
          commune?: string | null
          created_at?: string
          currency?: string | null
          description?: string | null
          email?: string | null
          experience_level?: string | null
          expires_at?: string | null
          global_listing_number?: number
          home_service?: boolean | null
          id?: string
          images?: string[] | null
          is_active?: boolean
          is_graduate?: boolean | null
          is_urgent?: boolean | null
          location?: string | null
          logo_url?: string | null
          phone_numbers?: string[] | null
          profession: string
          salary?: number | null
          specialty?: string | null
          title: string
          updated_at?: string
          user_id: string
          view_count?: number
          wilaya?: string | null
        }
        Update: {
          availability?: string | null
          commune?: string | null
          created_at?: string
          currency?: string | null
          description?: string | null
          email?: string | null
          experience_level?: string | null
          expires_at?: string | null
          global_listing_number?: number
          home_service?: boolean | null
          id?: string
          images?: string[] | null
          is_active?: boolean
          is_graduate?: boolean | null
          is_urgent?: boolean | null
          location?: string | null
          logo_url?: string | null
          phone_numbers?: string[] | null
          profession?: string
          salary?: number | null
          specialty?: string | null
          title?: string
          updated_at?: string
          user_id?: string
          view_count?: number
          wilaya?: string | null
        }
        Relationships: []
      }
      profiles: {
        Row: {
          address: string | null
          avatar_url: string | null
          bio: string | null
          commune: string | null
          country: string | null
          created_at: string
          date_of_birth: string | null
          email: string | null
          first_name: string | null
          full_name: string | null
          gender: string | null
          id: string
          is_verified: boolean | null
          last_name: string | null
          location: string | null
          nickname: string | null
          phone: string | null
          phone_secondary: string | null
          phone_tertiary: string | null
          preferences: Json | null
          profession: string | null
          profile_locked: boolean | null
          public_user_id: number | null
          referral_count: number
          referral_points: number
          updated_at: string
          user_id: string
          wilaya: string | null
        }
        Insert: {
          address?: string | null
          avatar_url?: string | null
          bio?: string | null
          commune?: string | null
          country?: string | null
          created_at?: string
          date_of_birth?: string | null
          email?: string | null
          first_name?: string | null
          full_name?: string | null
          gender?: string | null
          id?: string
          is_verified?: boolean | null
          last_name?: string | null
          location?: string | null
          nickname?: string | null
          phone?: string | null
          phone_secondary?: string | null
          phone_tertiary?: string | null
          preferences?: Json | null
          profession?: string | null
          profile_locked?: boolean | null
          public_user_id?: number | null
          referral_count?: number
          referral_points?: number
          updated_at?: string
          user_id: string
          wilaya?: string | null
        }
        Update: {
          address?: string | null
          avatar_url?: string | null
          bio?: string | null
          commune?: string | null
          country?: string | null
          created_at?: string
          date_of_birth?: string | null
          email?: string | null
          first_name?: string | null
          full_name?: string | null
          gender?: string | null
          id?: string
          is_verified?: boolean | null
          last_name?: string | null
          location?: string | null
          nickname?: string | null
          phone?: string | null
          phone_secondary?: string | null
          phone_tertiary?: string | null
          preferences?: Json | null
          profession?: string | null
          profile_locked?: boolean | null
          public_user_id?: number | null
          referral_count?: number
          referral_points?: number
          updated_at?: string
          user_id?: string
          wilaya?: string | null
        }
        Relationships: []
      }
      real_estate_details: {
        Row: {
          announcement_id: string | null
          balcony: boolean | null
          bathrooms: number | null
          bedrooms: number | null
          capacity: number | null
          created_at: string
          elevator: boolean | null
          facades: number | null
          floor: number | null
          furnished: boolean | null
          garage: boolean | null
          garden: boolean | null
          id: string
          papers: string[] | null
          parking: boolean | null
          payment_period: string | null
          pool: boolean | null
          property_type: string | null
          rooms: number | null
          specifications: string[] | null
          surface: number | null
          terrace: boolean | null
          total_floors: number | null
          view_type: string | null
          with_permit: boolean | null
          zoning: string | null
        }
        Insert: {
          announcement_id?: string | null
          balcony?: boolean | null
          bathrooms?: number | null
          bedrooms?: number | null
          capacity?: number | null
          created_at?: string
          elevator?: boolean | null
          facades?: number | null
          floor?: number | null
          furnished?: boolean | null
          garage?: boolean | null
          garden?: boolean | null
          id?: string
          papers?: string[] | null
          parking?: boolean | null
          payment_period?: string | null
          pool?: boolean | null
          property_type?: string | null
          rooms?: number | null
          specifications?: string[] | null
          surface?: number | null
          terrace?: boolean | null
          total_floors?: number | null
          view_type?: string | null
          with_permit?: boolean | null
          zoning?: string | null
        }
        Update: {
          announcement_id?: string | null
          balcony?: boolean | null
          bathrooms?: number | null
          bedrooms?: number | null
          capacity?: number | null
          created_at?: string
          elevator?: boolean | null
          facades?: number | null
          floor?: number | null
          furnished?: boolean | null
          garage?: boolean | null
          garden?: boolean | null
          id?: string
          papers?: string[] | null
          parking?: boolean | null
          payment_period?: string | null
          pool?: boolean | null
          property_type?: string | null
          rooms?: number | null
          specifications?: string[] | null
          surface?: number | null
          terrace?: boolean | null
          total_floors?: number | null
          view_type?: string | null
          with_permit?: boolean | null
          zoning?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "real_estate_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "real_estate_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "real_estate_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      real_time_trends: {
        Row: {
          category: string | null
          created_at: string
          growth_rate: number | null
          id: string
          keyword: string
          language: string | null
          search_volume: number | null
          time_period: string | null
          trend_score: number | null
          updated_at: string
        }
        Insert: {
          category?: string | null
          created_at?: string
          growth_rate?: number | null
          id?: string
          keyword: string
          language?: string | null
          search_volume?: number | null
          time_period?: string | null
          trend_score?: number | null
          updated_at?: string
        }
        Update: {
          category?: string | null
          created_at?: string
          growth_rate?: number | null
          id?: string
          keyword?: string
          language?: string | null
          search_volume?: number | null
          time_period?: string | null
          trend_score?: number | null
          updated_at?: string
        }
        Relationships: []
      }
      reports: {
        Row: {
          assigned_to: string | null
          client_session_id: string
          created_at: string
          created_date: string
          details: string | null
          id: string
          reason: string
          reporter_user_id: string | null
          resolution_note: string | null
          resolved_at: string | null
          resolved_by: string | null
          status: string
          target_global_number: number | null
          target_id: string
          target_owner_user_id: string | null
          target_title: string | null
          target_type: string
          target_wilaya: string | null
        }
        Insert: {
          assigned_to?: string | null
          client_session_id: string
          created_at?: string
          created_date?: string
          details?: string | null
          id?: string
          reason: string
          reporter_user_id?: string | null
          resolution_note?: string | null
          resolved_at?: string | null
          resolved_by?: string | null
          status?: string
          target_global_number?: number | null
          target_id: string
          target_owner_user_id?: string | null
          target_title?: string | null
          target_type: string
          target_wilaya?: string | null
        }
        Update: {
          assigned_to?: string | null
          client_session_id?: string
          created_at?: string
          created_date?: string
          details?: string | null
          id?: string
          reason?: string
          reporter_user_id?: string | null
          resolution_note?: string | null
          resolved_at?: string | null
          resolved_by?: string | null
          status?: string
          target_global_number?: number | null
          target_id?: string
          target_owner_user_id?: string | null
          target_title?: string | null
          target_type?: string
          target_wilaya?: string | null
        }
        Relationships: []
      }
      reviews: {
        Row: {
          announcement_id: string
          comment: string | null
          created_at: string
          id: string
          is_anonymous: boolean | null
          rating: number
          reviewed_user_id: string | null
          reviewer_id: string | null
          shop_id: string | null
          updated_at: string
          user_id: string
        }
        Insert: {
          announcement_id: string
          comment?: string | null
          created_at?: string
          id?: string
          is_anonymous?: boolean | null
          rating: number
          reviewed_user_id?: string | null
          reviewer_id?: string | null
          shop_id?: string | null
          updated_at?: string
          user_id: string
        }
        Update: {
          announcement_id?: string
          comment?: string | null
          created_at?: string
          id?: string
          is_anonymous?: boolean | null
          rating?: number
          reviewed_user_id?: string | null
          reviewer_id?: string | null
          shop_id?: string | null
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      saved_searches: {
        Row: {
          created_at: string
          filters: Json | null
          id: string
          last_checked: string | null
          name: string
          notification_enabled: boolean | null
          query: string
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          filters?: Json | null
          id?: string
          last_checked?: string | null
          name: string
          notification_enabled?: boolean | null
          query: string
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          filters?: Json | null
          id?: string
          last_checked?: string | null
          name?: string
          notification_enabled?: boolean | null
          query?: string
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      search_history: {
        Row: {
          created_at: string
          filters: Json | null
          id: string
          query: string
          results_count: number | null
          search_time: number | null
          user_id: string | null
        }
        Insert: {
          created_at?: string
          filters?: Json | null
          id?: string
          query: string
          results_count?: number | null
          search_time?: number | null
          user_id?: string | null
        }
        Update: {
          created_at?: string
          filters?: Json | null
          id?: string
          query?: string
          results_count?: number | null
          search_time?: number | null
          user_id?: string | null
        }
        Relationships: []
      }
      search_queries: {
        Row: {
          created_at: string
          id: string
          ip_hash: string | null
          language_detected: string | null
          query_normalized: string
          query_text: string
          results_count: number | null
          search_context: string | null
          user_session_id: string | null
        }
        Insert: {
          created_at?: string
          id?: string
          ip_hash?: string | null
          language_detected?: string | null
          query_normalized: string
          query_text: string
          results_count?: number | null
          search_context?: string | null
          user_session_id?: string | null
        }
        Update: {
          created_at?: string
          id?: string
          ip_hash?: string | null
          language_detected?: string | null
          query_normalized?: string
          query_text?: string
          results_count?: number | null
          search_context?: string | null
          user_session_id?: string | null
        }
        Relationships: []
      }
      search_results_clicks: {
        Row: {
          click_position: number
          created_at: string
          id: string
          result_id: string
          result_type: string
          search_query_id: string | null
          session_id: string | null
          time_to_click: number | null
        }
        Insert: {
          click_position: number
          created_at?: string
          id?: string
          result_id: string
          result_type: string
          search_query_id?: string | null
          session_id?: string | null
          time_to_click?: number | null
        }
        Update: {
          click_position?: number
          created_at?: string
          id?: string
          result_id?: string
          result_type?: string
          search_query_id?: string | null
          session_id?: string | null
          time_to_click?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "search_results_clicks_search_query_id_fkey"
            columns: ["search_query_id"]
            isOneToOne: false
            referencedRelation: "search_queries"
            referencedColumns: ["id"]
          },
        ]
      }
      search_suggestions: {
        Row: {
          confidence_score: number | null
          created_at: string
          id: string
          is_active: boolean | null
          original_query: string
          success_rate: number | null
          suggested_query: string
          suggestion_type: string
          updated_at: string
          usage_count: number | null
        }
        Insert: {
          confidence_score?: number | null
          created_at?: string
          id?: string
          is_active?: boolean | null
          original_query: string
          success_rate?: number | null
          suggested_query: string
          suggestion_type: string
          updated_at?: string
          usage_count?: number | null
        }
        Update: {
          confidence_score?: number | null
          created_at?: string
          id?: string
          is_active?: boolean | null
          original_query?: string
          success_rate?: number | null
          suggested_query?: string
          suggestion_type?: string
          updated_at?: string
          usage_count?: number | null
        }
        Relationships: []
      }
      security_audit_log: {
        Row: {
          action_type: string
          created_at: string
          id: string
          ip_address: unknown
          metadata: Json | null
          resource_id: string | null
          resource_type: string
          session_id: string | null
          user_agent: string | null
          user_id: string | null
        }
        Insert: {
          action_type: string
          created_at?: string
          id?: string
          ip_address?: unknown
          metadata?: Json | null
          resource_id?: string | null
          resource_type: string
          session_id?: string | null
          user_agent?: string | null
          user_id?: string | null
        }
        Update: {
          action_type?: string
          created_at?: string
          id?: string
          ip_address?: unknown
          metadata?: Json | null
          resource_id?: string | null
          resource_type?: string
          session_id?: string | null
          user_agent?: string | null
          user_id?: string | null
        }
        Relationships: []
      }
      service_details: {
        Row: {
          announcement_id: string
          availability: string | null
          created_at: string | null
          experience_years: number | null
          hourly_rate: number | null
          id: string
          service_type: string | null
        }
        Insert: {
          announcement_id: string
          availability?: string | null
          created_at?: string | null
          experience_years?: number | null
          hourly_rate?: number | null
          id?: string
          service_type?: string | null
        }
        Update: {
          announcement_id?: string
          availability?: string | null
          created_at?: string | null
          experience_years?: number | null
          hourly_rate?: number | null
          id?: string
          service_type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "service_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "service_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "service_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      shop_favorites: {
        Row: {
          created_at: string
          id: string
          shop_id: string
          user_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          shop_id: string
          user_id: string
        }
        Update: {
          created_at?: string
          id?: string
          shop_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "shop_favorites_shop_id_fkey"
            columns: ["shop_id"]
            isOneToOne: false
            referencedRelation: "shops"
            referencedColumns: ["id"]
          },
        ]
      }
      shop_reviews: {
        Row: {
          created_at: string
          id: string
          rating: number
          shop_id: string
          user_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          rating: number
          shop_id: string
          user_id: string
        }
        Update: {
          created_at?: string
          id?: string
          rating?: number
          shop_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "shop_reviews_shop_id_fkey"
            columns: ["shop_id"]
            isOneToOne: false
            referencedRelation: "shops"
            referencedColumns: ["id"]
          },
        ]
      }
      shops: {
        Row: {
          address: string | null
          after_sales_service: string | null
          banner_url: string | null
          brands_distributed: string[] | null
          catalog_pdf: string | null
          commune: string | null
          created_at: string | null
          delivery_options: Json | null
          description: string | null
          email: string | null
          followers_count: number
          global_listing_number: number
          gps_coordinates: Json | null
          id: string
          interior_photos: string[] | null
          is_online: boolean | null
          is_physical: boolean | null
          is_verified: boolean | null
          keywords: string[] | null
          landline_phone: string | null
          landmark: string | null
          logo_url: string | null
          main_category: string | null
          name: string
          opening_hours: Json | null
          payment_methods: Json | null
          phone_numbers: string[] | null
          postal_code: string | null
          presentation_video: string | null
          product_image_urls: string[] | null
          product_video_urls: string[] | null
          rating: number | null
          review_count: number | null
          secondary_email: string | null
          shop_number: number
          shop_status: string | null
          slug: string | null
          social_media: Json | null
          subcategories: string[] | null
          updated_at: string | null
          useful_links: string[] | null
          user_id: string
          view_count: number | null
          warranty_info: string | null
          website: string | null
          whatsapp_number: string | null
          wilaya: string
        }
        Insert: {
          address?: string | null
          after_sales_service?: string | null
          banner_url?: string | null
          brands_distributed?: string[] | null
          catalog_pdf?: string | null
          commune?: string | null
          created_at?: string | null
          delivery_options?: Json | null
          description?: string | null
          email?: string | null
          followers_count?: number
          global_listing_number?: number
          gps_coordinates?: Json | null
          id?: string
          interior_photos?: string[] | null
          is_online?: boolean | null
          is_physical?: boolean | null
          is_verified?: boolean | null
          keywords?: string[] | null
          landline_phone?: string | null
          landmark?: string | null
          logo_url?: string | null
          main_category?: string | null
          name: string
          opening_hours?: Json | null
          payment_methods?: Json | null
          phone_numbers?: string[] | null
          postal_code?: string | null
          presentation_video?: string | null
          product_image_urls?: string[] | null
          product_video_urls?: string[] | null
          rating?: number | null
          review_count?: number | null
          secondary_email?: string | null
          shop_number?: number
          shop_status?: string | null
          slug?: string | null
          social_media?: Json | null
          subcategories?: string[] | null
          updated_at?: string | null
          useful_links?: string[] | null
          user_id: string
          view_count?: number | null
          warranty_info?: string | null
          website?: string | null
          whatsapp_number?: string | null
          wilaya: string
        }
        Update: {
          address?: string | null
          after_sales_service?: string | null
          banner_url?: string | null
          brands_distributed?: string[] | null
          catalog_pdf?: string | null
          commune?: string | null
          created_at?: string | null
          delivery_options?: Json | null
          description?: string | null
          email?: string | null
          followers_count?: number
          global_listing_number?: number
          gps_coordinates?: Json | null
          id?: string
          interior_photos?: string[] | null
          is_online?: boolean | null
          is_physical?: boolean | null
          is_verified?: boolean | null
          keywords?: string[] | null
          landline_phone?: string | null
          landmark?: string | null
          logo_url?: string | null
          main_category?: string | null
          name?: string
          opening_hours?: Json | null
          payment_methods?: Json | null
          phone_numbers?: string[] | null
          postal_code?: string | null
          presentation_video?: string | null
          product_image_urls?: string[] | null
          product_video_urls?: string[] | null
          rating?: number | null
          review_count?: number | null
          secondary_email?: string | null
          shop_number?: number
          shop_status?: string | null
          slug?: string | null
          social_media?: Json | null
          subcategories?: string[] | null
          updated_at?: string | null
          useful_links?: string[] | null
          user_id?: string
          view_count?: number | null
          warranty_info?: string | null
          website?: string | null
          whatsapp_number?: string | null
          wilaya?: string
        }
        Relationships: []
      }
      site_settings: {
        Row: {
          created_at: string
          id: string
          is_active: boolean
          setting_key: string
          setting_value: Json
          updated_at: string
        }
        Insert: {
          created_at?: string
          id?: string
          is_active?: boolean
          setting_key: string
          setting_value?: Json
          updated_at?: string
        }
        Update: {
          created_at?: string
          id?: string
          is_active?: boolean
          setting_key?: string
          setting_value?: Json
          updated_at?: string
        }
        Relationships: []
      }
      travel_details: {
        Row: {
          amenities: string[] | null
          announcement_id: string
          created_at: string
          destination: string | null
          id: string
          services: string[] | null
          stars: number | null
          travel_type: string | null
        }
        Insert: {
          amenities?: string[] | null
          announcement_id: string
          created_at?: string
          destination?: string | null
          id?: string
          services?: string[] | null
          stars?: number | null
          travel_type?: string | null
        }
        Update: {
          amenities?: string[] | null
          announcement_id?: string
          created_at?: string
          destination?: string | null
          id?: string
          services?: string[] | null
          stars?: number | null
          travel_type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "travel_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "travel_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "travel_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      user_drafts: {
        Row: {
          created_at: string
          draft_data: Json
          draft_key: string
          id: string
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          draft_data: Json
          draft_key: string
          id?: string
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          draft_data?: Json
          draft_key?: string
          id?: string
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      user_intelligent_profiles: {
        Row: {
          behavior_patterns: Json | null
          created_at: string
          id: string
          interaction_history: Json | null
          last_activity: string
          predicted_interests: Json | null
          preferences: Json | null
          search_patterns: Json | null
          session_id: string
          updated_at: string
        }
        Insert: {
          behavior_patterns?: Json | null
          created_at?: string
          id?: string
          interaction_history?: Json | null
          last_activity?: string
          predicted_interests?: Json | null
          preferences?: Json | null
          search_patterns?: Json | null
          session_id: string
          updated_at?: string
        }
        Update: {
          behavior_patterns?: Json | null
          created_at?: string
          id?: string
          interaction_history?: Json | null
          last_activity?: string
          predicted_interests?: Json | null
          preferences?: Json | null
          search_patterns?: Json | null
          session_id?: string
          updated_at?: string
        }
        Relationships: []
      }
      user_presence: {
        Row: {
          created_at: string | null
          is_online: boolean | null
          last_seen_at: string | null
          updated_at: string | null
          user_id: string
        }
        Insert: {
          created_at?: string | null
          is_online?: boolean | null
          last_seen_at?: string | null
          updated_at?: string | null
          user_id: string
        }
        Update: {
          created_at?: string | null
          is_online?: boolean | null
          last_seen_at?: string | null
          updated_at?: string | null
          user_id?: string
        }
        Relationships: []
      }
      user_privacy_consents: {
        Row: {
          consent_given: boolean
          consent_type: string
          consent_version: string
          created_at: string
          id: string
          ip_address: unknown
          session_id: string
          updated_at: string
          user_agent: string | null
          user_id: string | null
        }
        Insert: {
          consent_given?: boolean
          consent_type: string
          consent_version?: string
          created_at?: string
          id?: string
          ip_address?: unknown
          session_id: string
          updated_at?: string
          user_agent?: string | null
          user_id?: string | null
        }
        Update: {
          consent_given?: boolean
          consent_type?: string
          consent_version?: string
          created_at?: string
          id?: string
          ip_address?: unknown
          session_id?: string
          updated_at?: string
          user_agent?: string | null
          user_id?: string | null
        }
        Relationships: []
      }
      user_roles: {
        Row: {
          granted_at: string
          granted_by: string | null
          id: string
          is_active: boolean | null
          role: string
          user_id: string
        }
        Insert: {
          granted_at?: string
          granted_by?: string | null
          id?: string
          is_active?: boolean | null
          role: string
          user_id: string
        }
        Update: {
          granted_at?: string
          granted_by?: string | null
          id?: string
          is_active?: boolean | null
          role?: string
          user_id?: string
        }
        Relationships: []
      }
      user_search_patterns: {
        Row: {
          conversion_achieved: boolean | null
          created_at: string
          id: string
          pattern_type: string | null
          search_categories: string[] | null
          search_sequence: string[] | null
          search_timespan: number | null
          session_id: string
        }
        Insert: {
          conversion_achieved?: boolean | null
          created_at?: string
          id?: string
          pattern_type?: string | null
          search_categories?: string[] | null
          search_sequence?: string[] | null
          search_timespan?: number | null
          session_id: string
        }
        Update: {
          conversion_achieved?: boolean | null
          created_at?: string
          id?: string
          pattern_type?: string | null
          search_categories?: string[] | null
          search_sequence?: string[] | null
          search_timespan?: number | null
          session_id?: string
        }
        Relationships: []
      }
      vehicle_details: {
        Row: {
          announcement_id: string | null
          brand: string | null
          created_at: string
          equipment: string[] | null
          fiscal_power: string | null
          fuel_type: string | null
          gearbox: string | null
          grey_card_crossed: boolean | null
          id: string
          mileage: number | null
          model: string | null
          purchase_year: number | null
          registration_date: string | null
          technical_control: boolean | null
          version: string | null
        }
        Insert: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string
          equipment?: string[] | null
          fiscal_power?: string | null
          fuel_type?: string | null
          gearbox?: string | null
          grey_card_crossed?: boolean | null
          id?: string
          mileage?: number | null
          model?: string | null
          purchase_year?: number | null
          registration_date?: string | null
          technical_control?: boolean | null
          version?: string | null
        }
        Update: {
          announcement_id?: string | null
          brand?: string | null
          created_at?: string
          equipment?: string[] | null
          fiscal_power?: string | null
          fuel_type?: string | null
          gearbox?: string | null
          grey_card_crossed?: boolean | null
          id?: string
          mileage?: number | null
          model?: string | null
          purchase_year?: number | null
          registration_date?: string | null
          technical_control?: boolean | null
          version?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "vehicle_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "vehicle_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "vehicle_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      videogame_details: {
        Row: {
          announcement_id: string
          condition: string | null
          created_at: string | null
          game_genre: string | null
          id: string
          platform: string | null
          type: string | null
        }
        Insert: {
          announcement_id: string
          condition?: string | null
          created_at?: string | null
          game_genre?: string | null
          id?: string
          platform?: string | null
          type?: string | null
        }
        Update: {
          announcement_id?: string
          condition?: string | null
          created_at?: string | null
          game_genre?: string | null
          id?: string
          platform?: string | null
          type?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "videogame_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "videogame_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_public"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "videogame_details_announcement_id_fkey"
            columns: ["announcement_id"]
            isOneToOne: false
            referencedRelation: "announcements_safe"
            referencedColumns: ["id"]
          },
        ]
      }
      webhook_logs: {
        Row: {
          created_at: string
          error_message: string | null
          event_type: string
          id: string
          payload: Json
          processed: boolean | null
          stripe_event_id: string | null
          webhook_type: string
        }
        Insert: {
          created_at?: string
          error_message?: string | null
          event_type: string
          id?: string
          payload: Json
          processed?: boolean | null
          stripe_event_id?: string | null
          webhook_type: string
        }
        Update: {
          created_at?: string
          error_message?: string | null
          event_type?: string
          id?: string
          payload?: Json
          processed?: boolean | null
          stripe_event_id?: string | null
          webhook_type?: string
        }
        Relationships: []
      }
    }
    Views: {
      announcements_public: {
        Row: {
          address: string | null
          attributes: Json | null
          brand: string | null
          category_id: string | null
          category_slug: string | null
          color: string | null
          commune: string | null
          condition: string | null
          contact_count: number | null
          created_at: string | null
          currency: string | null
          delivery_areas: string[] | null
          delivery_available: boolean | null
          delivery_fees: number | null
          description: string | null
          expires_at: string | null
          global_announcement_number: number | null
          global_listing_number: number | null
          has_contact_info: boolean | null
          id: string | null
          image_url: string | null
          image_urls: string[] | null
          images: string[] | null
          is_featured: boolean | null
          is_negotiable: boolean | null
          is_urgent: boolean | null
          keywords: string[] | null
          location: string | null
          model: string | null
          phone_number: string | null
          premium_end_at: string | null
          price: number | null
          shop_id: string | null
          shop_logo_url: string | null
          shop_name: string | null
          status: string | null
          subcategory_id: string | null
          title: string | null
          type: string | null
          updated_at: string | null
          urgent_message: string | null
          user_id: string | null
          view_count: number | null
          wilaya: string | null
        }
        Insert: {
          address?: string | null
          attributes?: Json | null
          brand?: string | null
          category_id?: string | null
          category_slug?: string | null
          color?: string | null
          commune?: string | null
          condition?: string | null
          contact_count?: number | null
          created_at?: string | null
          currency?: string | null
          delivery_areas?: string[] | null
          delivery_available?: boolean | null
          delivery_fees?: number | null
          description?: string | null
          expires_at?: string | null
          global_announcement_number?: number | null
          global_listing_number?: number | null
          has_contact_info?: never
          id?: string | null
          image_url?: string | null
          image_urls?: string[] | null
          images?: string[] | null
          is_featured?: boolean | null
          is_negotiable?: boolean | null
          is_urgent?: boolean | null
          keywords?: string[] | null
          location?: never
          model?: string | null
          phone_number?: string | null
          premium_end_at?: string | null
          price?: number | null
          shop_id?: string | null
          shop_logo_url?: string | null
          shop_name?: string | null
          status?: string | null
          subcategory_id?: string | null
          title?: string | null
          type?: string | null
          updated_at?: string | null
          urgent_message?: string | null
          user_id?: string | null
          view_count?: number | null
          wilaya?: string | null
        }
        Update: {
          address?: string | null
          attributes?: Json | null
          brand?: string | null
          category_id?: string | null
          category_slug?: string | null
          color?: string | null
          commune?: string | null
          condition?: string | null
          contact_count?: number | null
          created_at?: string | null
          currency?: string | null
          delivery_areas?: string[] | null
          delivery_available?: boolean | null
          delivery_fees?: number | null
          description?: string | null
          expires_at?: string | null
          global_announcement_number?: number | null
          global_listing_number?: number | null
          has_contact_info?: never
          id?: string | null
          image_url?: string | null
          image_urls?: string[] | null
          images?: string[] | null
          is_featured?: boolean | null
          is_negotiable?: boolean | null
          is_urgent?: boolean | null
          keywords?: string[] | null
          location?: never
          model?: string | null
          phone_number?: string | null
          premium_end_at?: string | null
          price?: number | null
          shop_id?: string | null
          shop_logo_url?: string | null
          shop_name?: string | null
          status?: string | null
          subcategory_id?: string | null
          title?: string | null
          type?: string | null
          updated_at?: string | null
          urgent_message?: string | null
          user_id?: string | null
          view_count?: number | null
          wilaya?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "announcements_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcements_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_announcements_category"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_announcements_category"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      announcements_safe: {
        Row: {
          address: string | null
          attributes: Json | null
          brand: string | null
          category_id: string | null
          category_slug: string | null
          color: string | null
          commune: string | null
          condition: string | null
          contact_count: number | null
          created_at: string | null
          currency: string | null
          delivery_areas: string[] | null
          delivery_available: boolean | null
          delivery_fees: number | null
          description: string | null
          expires_at: string | null
          global_announcement_number: number | null
          global_listing_number: number | null
          has_contact_info: boolean | null
          id: string | null
          image_url: string | null
          image_urls: string[] | null
          images: string[] | null
          is_featured: boolean | null
          is_negotiable: boolean | null
          is_urgent: boolean | null
          keywords: string[] | null
          location: string | null
          model: string | null
          phone_number_masked: string | null
          premium_end_at: string | null
          price: number | null
          shop_id: string | null
          shop_logo_url: string | null
          shop_name: string | null
          status: string | null
          subcategory_id: string | null
          title: string | null
          type: string | null
          updated_at: string | null
          urgent_message: string | null
          user_id: string | null
          view_count: number | null
          wilaya: string | null
        }
        Insert: {
          address?: string | null
          attributes?: Json | null
          brand?: string | null
          category_id?: string | null
          category_slug?: string | null
          color?: string | null
          commune?: string | null
          condition?: string | null
          contact_count?: number | null
          created_at?: string | null
          currency?: string | null
          delivery_areas?: string[] | null
          delivery_available?: boolean | null
          delivery_fees?: number | null
          description?: string | null
          expires_at?: string | null
          global_announcement_number?: number | null
          global_listing_number?: number | null
          has_contact_info?: never
          id?: string | null
          image_url?: string | null
          image_urls?: string[] | null
          images?: string[] | null
          is_featured?: boolean | null
          is_negotiable?: boolean | null
          is_urgent?: boolean | null
          keywords?: string[] | null
          location?: never
          model?: string | null
          phone_number_masked?: never
          premium_end_at?: string | null
          price?: number | null
          shop_id?: string | null
          shop_logo_url?: string | null
          shop_name?: string | null
          status?: string | null
          subcategory_id?: string | null
          title?: string | null
          type?: string | null
          updated_at?: string | null
          urgent_message?: string | null
          user_id?: string | null
          view_count?: number | null
          wilaya?: string | null
        }
        Update: {
          address?: string | null
          attributes?: Json | null
          brand?: string | null
          category_id?: string | null
          category_slug?: string | null
          color?: string | null
          commune?: string | null
          condition?: string | null
          contact_count?: number | null
          created_at?: string | null
          currency?: string | null
          delivery_areas?: string[] | null
          delivery_available?: boolean | null
          delivery_fees?: number | null
          description?: string | null
          expires_at?: string | null
          global_announcement_number?: number | null
          global_listing_number?: number | null
          has_contact_info?: never
          id?: string | null
          image_url?: string | null
          image_urls?: string[] | null
          images?: string[] | null
          is_featured?: boolean | null
          is_negotiable?: boolean | null
          is_urgent?: boolean | null
          keywords?: string[] | null
          location?: never
          model?: string | null
          phone_number_masked?: never
          premium_end_at?: string | null
          price?: number | null
          shop_id?: string | null
          shop_logo_url?: string | null
          shop_name?: string | null
          status?: string | null
          subcategory_id?: string | null
          title?: string | null
          type?: string | null
          updated_at?: string | null
          urgent_message?: string | null
          user_id?: string | null
          view_count?: number | null
          wilaya?: string | null
        }
        Relationships: [
          {
            foreignKeyName: "announcements_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "announcements_category_id_fkey"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_announcements_category"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "fk_announcements_category"
            columns: ["category_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      categories_with_translations: {
        Row: {
          alt_text: string | null
          created_at: string | null
          description: string | null
          icon_name: string | null
          id: string | null
          image_url: string | null
          is_active: boolean | null
          is_featured: boolean | null
          language_code: string | null
          level: number | null
          meta_description_text: string | null
          meta_title: string | null
          name: string | null
          parent_id: string | null
          slug: string | null
          sort_order: number | null
          tags: string[] | null
          translated_description: string | null
          updated_at: string | null
        }
        Relationships: [
          {
            foreignKeyName: "categories_parent_id_fkey"
            columns: ["parent_id"]
            isOneToOne: false
            referencedRelation: "categories"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "categories_parent_id_fkey"
            columns: ["parent_id"]
            isOneToOne: false
            referencedRelation: "categories_with_translations"
            referencedColumns: ["id"]
          },
        ]
      }
      public_search_stats: {
        Row: {
          daily_searches: number | null
          search_date: string | null
          unique_users: number | null
        }
        Relationships: []
      }
    }
    Functions: {
      admin_set_profile_locked: {
        Args: {
          p_locked: boolean
          p_note?: string
          p_profile_id: string
          p_reason?: string
          p_session_id?: string
        }
        Returns: {
          id: string
          profile_locked: boolean
        }[]
      }
      calculate_trending_score: {
        Args: { keyword_id: string }
        Returns: number
      }
      cleanup_old_tracking_data: { Args: never; Returns: undefined }
      create_notification: {
        Args: {
          p_category: string
          p_channels?: string[]
          p_message: string
          p_metadata?: Json
          p_priority?: string
          p_scheduled_at?: string
          p_title: string
          p_type: string
          p_user_id: string
        }
        Returns: string
      }
      enforce_data_retention: { Args: never; Returns: undefined }
      exec_sql: { Args: { sql: string }; Returns: undefined }
      exec_sql_readonly: { Args: { sql_query: string }; Returns: Json }
      generate_shop_slug: { Args: { shop_name: string }; Returns: string }
      get_announcement_with_protected_contact: {
        Args: { announcement_id: string }
        Returns: {
          category_id: string
          condition: string
          contact_count: number
          created_at: string
          description: string
          expires_at: string
          id: string
          image_url: string
          image_urls: string[]
          is_urgent: boolean
          keywords: string[]
          location: string
          phone_number_masked: string
          price: number
          requires_auth_for_contact: boolean
          shop_id: string
          shop_logo_url: string
          shop_name: string
          status: string
          title: string
          type: string
          updated_at: string
          urgent_message: string
          user_id: string
          view_count: number
        }[]
      }
      get_categories_by_language: {
        Args: { lang_code?: string }
        Returns: {
          alt_text: string
          created_at: string
          description: string
          icon_name: string
          id: string
          image_url: string
          is_active: boolean
          is_featured: boolean
          language_code: string
          level: number
          meta_description_text: string
          meta_title: string
          name: string
          parent_id: string
          slug: string
          sort_order: number
          tags: string[]
          translated_description: string
          updated_at: string
        }[]
      }
      get_current_session: { Args: never; Returns: string }
      get_current_user_id: { Args: never; Returns: string }
      get_global_listing_total: { Args: never; Returns: number }
      get_masked_profile_contact: {
        Args: { profile_user_id: string }
        Returns: {
          display_name: string
          location: string
          phone_masked: string
          profession: string
        }[]
      }
      get_public_announcements: {
        Args: {
          p_category_id?: string
          p_limit?: number
          p_location?: string
          p_offset?: number
        }
        Returns: {
          category_id: string
          condition: string
          contact_count: number
          created_at: string
          description: string
          expires_at: string
          id: string
          image_url: string
          image_urls: string[]
          is_urgent: boolean
          keywords: string[]
          location: string
          phone_number_masked: string
          phone_number_visible: boolean
          price: number
          shop_id: string
          shop_logo_url: string
          shop_name: string
          status: string
          title: string
          type: string
          updated_at: string
          urgent_message: string
          view_count: number
        }[]
      }
      get_public_profile_data: {
        Args: { profile_user_id: string }
        Returns: {
          avatar_url: string
          bio: string
          created_at: string
          display_name: string
          id: string
          location: string
          profession: string
          user_id: string
        }[]
      }
      get_public_search_stats: {
        Args: never
        Returns: {
          daily_searches: number
          search_date: string
          unique_users: number
        }[]
      }
      get_safe_profile_data: {
        Args: { profile_user_id: string }
        Returns: {
          avatar_url: string
          bio: string
          created_at: string
          display_name: string
          id: string
          location: string
          profession: string
        }[]
      }
      get_security_audit_for_profile: {
        Args: { p_limit?: number; p_profile_id: string }
        Returns: {
          action_type: string
          created_at: string
          id: string
          metadata: Json
          resource_id: string
          resource_type: string
          session_id: string
          user_id: string
        }[]
      }
      get_user_notification_preferences: {
        Args: { p_user_id: string }
        Returns: Json
      }
      increment_professional_job_offer_view_count: {
        Args: { job_offer_uuid: string }
        Returns: undefined
      }
      increment_shop_view_count: {
        Args: { shop_uuid: string }
        Returns: undefined
      }
      increment_view_count: {
        Args: { announcement_uuid: string }
        Returns: undefined
      }
      log_phone_access: {
        Args: { p_announcement_id: string; p_user_id?: string }
        Returns: undefined
      }
      log_security_event: {
        Args: {
          p_action_type: string
          p_metadata?: Json
          p_resource_id?: string
          p_resource_type: string
          p_session_id: string
          p_user_id: string
        }
        Returns: undefined
      }
      mask_announcement_contacts: {
        Args: {
          announcement_row: Database["public"]["Tables"]["announcements"]["Row"]
          user_is_authenticated?: boolean
        }
        Returns: {
          address: string | null
          animal_age: number | null
          animal_age_unit: string | null
          animal_breed: string | null
          animal_dewormed: boolean | null
          animal_gender: string | null
          animal_pedigree: boolean | null
          animal_species: string | null
          animal_sterilized: boolean | null
          animal_vaccinated: boolean | null
          attributes: Json | null
          availability_date: string | null
          brand: string | null
          cash_discount: number | null
          category_id: string
          category_slug: string | null
          color: string | null
          commune: string | null
          condition: string | null
          contact_count: number | null
          created_at: string
          currency: string | null
          deleted_at: string | null
          delivery_areas: string[] | null
          delivery_available: boolean | null
          delivery_fees: number | null
          delivery_location_name: string | null
          description: string
          detail_photos: string[] | null
          dimensions: string | null
          documentation: string[] | null
          email: string | null
          exchange_condition: string | null
          exchange_offered: string | null
          exchange_possible: boolean | null
          exchange_type: string | null
          exchange_value: number | null
          exchange_wanted: string | null
          expires_at: string | null
          finance_amount: number | null
          finance_currency: string | null
          finance_exchange_rate: number | null
          finance_payment_methods: string[] | null
          finance_service_type: string | null
          global_announcement_number: number
          global_listing_number: number
          has_invoice: boolean | null
          id: string
          image_url: string | null
          image_urls: string[] | null
          images: string[] | null
          included_accessories: string[] | null
          is_featured: boolean | null
          is_negotiable: boolean | null
          is_urgent: boolean | null
          keywords: string[] | null
          latitude: number | null
          location: string | null
          longitude: number | null
          model: string | null
          original_price: number | null
          packaging_info: string | null
          phone_number: string | null
          premium_end_at: string | null
          price: number | null
          product_video: string | null
          purchase_year: number | null
          search_vector: unknown
          selling_reason: string | null
          service_availability: string | null
          service_experience: number | null
          service_location_type: string | null
          service_price_model: string | null
          service_type: string | null
          shop_id: string | null
          shop_logo_url: string | null
          shop_name: string | null
          status: string | null
          subcategory_id: string | null
          title: string
          type: string | null
          updated_at: string
          urgent_message: string | null
          user_id: string
          view_count: number | null
          warranty_duration: string | null
          website: string | null
          weight_info: string | null
          wilaya: string
        }
        SetofOptions: {
          from: "*"
          to: "announcements"
          isOneToOne: true
          isSetofReturn: false
        }
      }
      mask_booking_contacts: {
        Args: {
          booking_row: Database["public"]["Tables"]["bookings"]["Row"]
          requesting_user_id?: string
        }
        Returns: {
          announcement_id: string
          booking_date: string
          booking_reference: string
          cancellation_reason: string | null
          cancelled_at: string | null
          contact_email: string | null
          contact_phone: string | null
          created_at: string
          currency: string | null
          end_time: string
          guest_count: number | null
          id: string
          payment_status: string | null
          special_requests: string | null
          start_time: string
          status: string
          total_amount: number | null
          updated_at: string
          user_id: string
        }
        SetofOptions: {
          from: "*"
          to: "bookings"
          isOneToOne: true
          isSetofReturn: false
        }
      }
      mask_phone_number: { Args: { phone_number: string }; Returns: string }
      normalize_search_query: { Args: { query_text: string }; Returns: string }
      purge_deleted_announcements: { Args: never; Returns: undefined }
      rate_limit_contact_access: {
        Args: { contact_type: string; user_session: string }
        Returns: boolean
      }
      rate_limit_reports: {
        Args: { p_client_session_id: string }
        Returns: boolean
      }
      rate_limit_search_queries: {
        Args: { user_session: string }
        Returns: boolean
      }
      request_contact_access: {
        Args: { announcement_id: string }
        Returns: {
          contact_allowed: boolean
          phone_number: string
        }[]
      }
      sanitize_search_query: { Args: { query_text: string }; Returns: string }
      set_current_session: { Args: { session_id: string }; Returns: undefined }
      validate_password_strength: {
        Args: { password_text: string }
        Returns: boolean
      }
      validate_search_session: {
        Args: { session_id: string }
        Returns: boolean
      }
      validate_user_input: {
        Args: { input_text: string; max_length?: number }
        Returns: boolean
      }
    }
    Enums: {
      announcement_condition:
        | "neuf"
        | "tres_bon_etat"
        | "bon_etat"
        | "acceptable"
        | "usage"
      announcement_status: "active" | "sold" | "deleted" | "expired" | "pending"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      announcement_condition: [
        "neuf",
        "tres_bon_etat",
        "bon_etat",
        "acceptable",
        "usage",
      ],
      announcement_status: ["active", "sold", "deleted", "expired", "pending"],
    },
  },
} as const
