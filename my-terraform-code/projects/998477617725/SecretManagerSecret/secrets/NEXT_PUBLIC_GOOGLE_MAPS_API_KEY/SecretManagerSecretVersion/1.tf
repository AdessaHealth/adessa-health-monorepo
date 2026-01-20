resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/NEXT_PUBLIC_GOOGLE_MAPS_API_KEY"
  secret_data     = var.next_public_google_maps_api_key
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/NEXT_PUBLIC_GOOGLE_MAPS_API_KEY/versions/1
