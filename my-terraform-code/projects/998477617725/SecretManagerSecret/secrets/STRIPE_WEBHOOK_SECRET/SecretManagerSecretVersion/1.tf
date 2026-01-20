resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/STRIPE_WEBHOOK_SECRET"
  secret_data     = var.stripe_webhook_secret
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/STRIPE_WEBHOOK_SECRET/versions/1
