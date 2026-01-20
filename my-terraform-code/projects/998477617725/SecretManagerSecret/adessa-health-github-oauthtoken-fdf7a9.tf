resource "google_secret_manager_secret" "adessa_health_github_oauthtoken_fdf7a9" {
  labels = {
    managed-by-cnrm = "true"
  }

  project = var.gcp_project_id

  replication {
    user_managed {
      replicas {
        location = "us-central1"
      }
    }
  }

  secret_id = "Adessa-Health-github-oauthtoken-fdf7a9"
}
# terraform import google_secret_manager_secret.adessa_health_github_oauthtoken_fdf7a9 projects/${var.gcp_project_id}/secrets/Adessa-Health-github-oauthtoken-fdf7a9
