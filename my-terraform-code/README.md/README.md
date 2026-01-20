# Adessa Health - Terraform Infrastructure on GCP

Welcome to the Terraform project for Adessa Health. This repository contains the Infrastructure as Code (IaC) used to define and manage resources on the Google Cloud Platform (GCP).

This project serves as a portfolio piece to demonstrate skills in cloud infrastructure management, automation, and security best practices using Terraform.

## Project Structure

The code in this repository is structured based on resources exported from a GCP environment. The directory layout follows this pattern:

```
./projects/<GCP_PROJECT_ID>/<RESOURCE_TYPE>/<RESOURCE_NAME>.tf
```

For example:
*   `./projects/998477617725/SecretManagerSecret/adessa-health-github-oauthtoken-fdf7a9.tf`: Defines a secret in GCP Secret Manager.
*   `./998477617725/998477617725/Project/LoggingLogSink/a-default.tf`: Defines a project-level logging sink.

## Core Concepts Demonstrated

*   **Infrastructure as Code:** All cloud resources are declared declaratively using Terraform's HCL syntax.
*   **Resource Management:** Creation and management of core GCP services like Secret Manager and Cloud Logging.
*   **Parameterization:** Using Terraform variables (`variables.tf`) to abstract away sensitive or environment-specific values like Project IDs, making the code reusable and secure.
*   **Security:** Adherence to the principle of not hardcoding secrets or sensitive identifiers directly in the code.

## How to Use

To apply this Terraform configuration to your own GCP project, you will need to:

1.  **Install Terraform:** Follow the official Terraform installation guide.
2.  **Configure GCP Authentication:** Authenticate your local environment with GCP. The simplest way is to use the gcloud CLI:
    ```bash
    gcloud auth application-default login
    ```
3.  **Create a `terraform.tfvars` file:** Create a file named `terraform.tfvars` in the root directory and provide values for the variables defined in `variables.tf`.
    ```tfvars
    gcp_project_id   = "your-actual-gcp-project-id"
    gcp_project_name = "your-actual-gcp-project-name"
    ```
4.  **Initialize and Apply:** Run the standard Terraform commands.
    ```bash
    terraform init
    terraform apply
    ```

