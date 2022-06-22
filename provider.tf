provider "google"{
  project = var.project_id
  access_token = var.access_token
  region = "us-central1"
}

provider "google-beta"{
  access_token          = var.access_token
}
