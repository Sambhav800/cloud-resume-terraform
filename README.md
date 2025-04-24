# Cloud Resume Terraform Configuration

This repository contains the Infrastructure as Code (IaC) implementation for the [Cloud Resume Challenge](https://github.com/Sambhav800/cloud-resume) using Terraform.

## Overview

This Terraform configuration manages the cloud infrastructure components required for the Cloud Resume project. The implementation follows infrastructure as code best practices to ensure reproducibility, version control, and automated provisioning.

## Resources Managed

The following resources are defined and managed through this Terraform configuration:

- **Service Accounts**: Dedicated service accounts with least-privilege permissions
- **IAM Roles and Bindings**: Proper access controls for cloud resources
- **Cloud Storage**: Buckets for function deployments and assets
- **Firebase Configuration**: Database rules and settings

## Architecture

This IaC implementation supports the serverless architecture of the main project:

Frontend (GitHub Pages) → Cloud Functions API → Firebase Realtime Database

All infrastructure components are defined as code, enabling consistent environments and deployment automation.

## Usage

### Prerequisites

- Terraform >= 1.0
- Google Cloud SDK
- Firebase CLI
- Appropriate GCP/Firebase permissions

### Initialization

```bash
# Initialize Terraform
terraform init

# Preview changes
terraform plan

# Apply changes
terraform apply
