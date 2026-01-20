variable "fpar_db_password" {
  description = "The password for the FPAR database."
  type        = string
  sensitive   = true
}

resource "google_secret_manager_secret_version" "1" {
  deletion_policy = "DELETE"
  enabled         = true
  secret          = "projects/998477617725/secrets/fpar_db_password"
  secret_data     = var.fpar_db_password
}
# terraform import google_secret_manager_secret_version.1 projects/998477617725/secrets/fpar_db_password/versions/1
