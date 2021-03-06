resource "google_dataflow_job" "big_data_job" {
  name         = var.df-name
  project      = var.project_id
  kms_key_name = google_kms_crypto_key.example-key.id
  service_account_email = "composer-test-sa2@modular-scout-345114.iam.gserviceaccount.com"
  ip_configuration = null # "WORKER_IP_PUBLIC" # "WORKER_IP_PRIVATE"
  template_gcs_path = "gs://my-bucket-df/templates/template_file/latest_Word_Count"
  temp_gcs_location = "gs://my-bucket-df/tmp_dir"
  
  labels = {

  }
}

resource "google_kms_key_ring" "keyring" {
  name     = "keyring-dataflow"
  location = "us-central1"
}

resource "google_kms_crypto_key" "example-key" {
  name            = "crypto-key-dataflow"
  key_ring        = google_kms_key_ring.keyring.id
  rotation_period = "100000s"

  lifecycle {
    prevent_destroy = true
  }
}

