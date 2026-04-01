# Healthcare Compliance Accelerator
**Architect:** Ahsan Uddin
**Status:** Production-Hardened Reference Architecture (C2PA Authenticated)

## Overview
The **Healthcare Compliance Accelerator** is a cloud-native, HIPAA-compliant framework designed to eliminate technical doubt in high-stakes healthcare environments. It provides a pre-configured engine for advanced EHR integration (Epic, Athena) and automated Revenue Cycle Management (RCM) using Agentic AI.

## Key Strategic Pillars
- **"Eliminating Doubt" in Compliance**: Zero-trust networking and automated audit trails baked into the IaC.
- **Interoperability Accelerator**: Native FHIR R4 integration via Epic OAuth 2.0 flows.
- **Agentic RCM**: Automated denial analysis using **Google Cloud Document AI** and **Vertex AI (Gemini)**.

## Repository Structure
```text
.
├── infrastructure/          # Terraform (IaC)
│   ├── modules/             # Reusable resource modules
│   │   ├── security/        # Secret Manager, KMS, IAM
│   │   ├── logging/         # Log Sinks, Monitoring
│   │   └── networking/      # VPC, Load Balancing
│   ├── main.tf              # Root configuration
│   ├── variables.tf         # Parameterized inputs
│   └── backend.tf           # Remote state configuration
├── src/                     # Core Business Logic
│   ├── epic/                # EHR Interoperability (FHIR)
│   └── waystar/             # RCM Integrations
├── lib/                     # Shared Services
│   └── services/            # AI & Domain Logic (Denial Analyzer)
├── docs/                    # Architecture & API Specs
│   ├── architecture.md      # System design overview
│   └── openapi.yaml         # FHIR-compliant API specification
└── .pre-commit-config.yaml  # Security & linting hooks
```

## Core Concepts Demonstrated
1. **Parameterization**: No hardcoded Project IDs or secrets. Everything is driven by variables.
2. **Modular Design**: Resources are grouped by function, not by arbitrary IDs.
3. **Security First**: Integrated TruffleHog and Checkov for static analysis.
