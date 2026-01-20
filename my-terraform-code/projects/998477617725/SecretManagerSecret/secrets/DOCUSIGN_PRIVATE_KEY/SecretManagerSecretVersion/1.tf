resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/DOCUSIGN_PRIVATE_KEY"
  secret_data     = var.docusign_private_key
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/DOCUSIGN_PRIVATE_KEY/versions/1
