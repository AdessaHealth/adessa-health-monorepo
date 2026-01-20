resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/SUPABASE_SERVICE_ROLE_KEY"
  secret_data     = var.supabase_service_role_key
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/SUPABASE_SERVICE_ROLE_KEY/versions/1
