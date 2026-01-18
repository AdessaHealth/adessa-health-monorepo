terraform {
  backend "gcs" {
    bucket  = "adessa-health-tfstate" # Use a consistent name
    prefix  = "terraform/state"
  }
}