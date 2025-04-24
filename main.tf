terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "cloud-resume-sambhav"
  region  = "us-central1"
}

provider "google-beta" {
  project = "cloud-resume-sambhav"
  region  = "us-central1"
}

# Cloud Functions service account
resource "google_service_account" "cloud_functions" {
  account_id   = "cloud-resume-functions"
  display_name = "Cloud Resume Functions Service Account"
  description  = "Service account for Cloud Resume challenge functions"
}

# IAM role binding for Firebase access
resource "google_project_iam_member" "firebase_admin" {
  project = "cloud-resume-sambhav"
  role    = "roles/firebase.admin"
  member  = "serviceAccount:${google_service_account.cloud_functions.email}"
}

# Cloud Storage bucket for functions source code
resource "google_storage_bucket" "function_source" {
  name     = "cloud-resume-function-source"
  location = "US"
  uniform_bucket_level_access = true
}