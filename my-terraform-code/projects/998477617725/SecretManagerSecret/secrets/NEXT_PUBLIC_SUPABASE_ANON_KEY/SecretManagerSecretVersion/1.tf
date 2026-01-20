resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/NEXT_PUBLIC_SUPABASE_ANON_KEY"
  secret_data     = var.next_public_supabase_anon_key
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/NEXT_PUBLIC_SUPABASE_ANON_KEY/versions/1
