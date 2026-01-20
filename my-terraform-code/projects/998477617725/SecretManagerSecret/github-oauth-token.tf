resource "google_secret_manager_secret" "github_oauth_token" {
  labels = {
    managed-by-cnrm = "true"
  }

  project   = "998477617725"
  secret_id = "GITHUB_OAUTH_TOKEN"
}

variable "github_oauth_token" {
  description = "GitHub OAuth token for API access."
  type        = string
  sensitive   = true
}

resource "google_secret_manager_secret_version" "github_oauth_token_version" {
  secret      = google_secret_manager_secret.github_oauth_token.id
  secret_data = var.github_oauth_token

  lifecycle {
    prevent_destroy = false
  }
}