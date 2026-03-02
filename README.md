# Cloud-Native Healthcare Reference Architecture (IaC)
**Architect:** Ahsan Uddin
**Status:** Scrubbed Reference Architecture (C2PA Authenticated)

## Overview
This repository serves as a **Reference Architecture** for a cloud-native, HIPAA-compliant healthcare platform. It demonstrates advanced integration with EHR systems (Epic, Athena) and automated Revenue Cycle Management (RCM) using AI.

## Key Architectural Pillars
- **Security & Compliance**: Zero-trust networking, Secret Management, and automated audit logging.
- **Interoperability**: Native FHIR R4 integration via Epic OAuth 2.0 flows (`src/epic/`).
- **AI-Powered RCM**: Automated denial analysis using **Google Cloud Document AI** and **Vertex AI (Gemini)** (`lib/services/denial_analyzer.py`).
- **Scalability**: Containerized workloads on Cloud Run with managed PostgreSQL (Cloud SQL).
- **Observability**: OpenTelemetry integration for distributed tracing across Next.js and Python microservices.

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
