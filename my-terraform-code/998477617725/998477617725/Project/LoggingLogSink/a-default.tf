resource "google_logging_project_sink" "a_default" {
  destination            = "logging.googleapis.com/projects/${var.gcp_project_name}/locations/global/buckets/_Default"
  filter                 = "NOT LOG_ID(\"cloudaudit.googleapis.com/activity\") AND NOT LOG_ID(\"externalaudit.googleapis.com/activity\") AND NOT LOG_ID(\"cloudaudit.googleapis.com/system_event\") AND NOT LOG_ID(\"externalaudit.googleapis.com/system_event\") AND NOT LOG_ID(\"cloudaudit.googleapis.com/access_transparency\") AND NOT LOG_ID(\"externalaudit.googleapis.com/access_transparency\")"
  name                   = "_Default"
  project                = var.gcp_project_id
  unique_writer_identity = true
}
# terraform import google_logging_project_sink.a_default ${var.gcp_project_id}###_Default
