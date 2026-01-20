variable "clerk_secret_key" {
  type        = string
  description = "Clerk Secret Key"
  sensitive   = true
}

variable "docusign_private_key" {
  type        = string
  description = "DocuSign Private Key"
  sensitive   = true
}

variable "next_public_clerk_publishable_key" {
  type        = string
  description = "Clerk Publishable Key"
  sensitive   = true
}

variable "next_public_google_maps_api_key" {
  type        = string
  description = "Google Maps API Key"
  sensitive   = true
}

variable "next_public_stripe_publishable_key" {
  type        = string
  description = "Stripe Publishable Key"
  sensitive   = true
}

variable "next_public_supabase_anon_key" {
  type        = string
  description = "Supabase Anon Key"
  sensitive   = true
}

variable "stripe_webhook_secret" {
  type        = string
  description = "Stripe Webhook Secret"
  sensitive   = true
}

variable "supabase_service_role_key" {
  type        = string
  description = "Supabase Service Role Key"
  sensitive   = true
}