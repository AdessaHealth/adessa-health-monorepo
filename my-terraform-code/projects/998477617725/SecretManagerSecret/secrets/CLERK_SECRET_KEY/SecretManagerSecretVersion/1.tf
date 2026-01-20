resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/CLERK_SECRET_KEY"
  secret_data     = var.clerk_secret_key
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/CLERK_SECRET_KEY/versions/1
