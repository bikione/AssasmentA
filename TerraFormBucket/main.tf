provider "google" {
    credentials = "${file("bucketproject-347003-crendentials.json")}"
}

resource "google_storage_bucket" "buckets" {
  
  force_destroy = true
  uniform_bucket_level_access = false
  count = 2
  name = "bucket${count.index}"
  project = var.project_id
  storage_class = var.storage_class
  location = var.bucket_location
  versioning { 
      enabled = false
  }  
  labels = {
      created_through = "iac"
      location = "us"
      name = var.bucket_name
  }
}
resource "google_storage_bucket_iam_binding" "viewers" {
    count = 2
    bucket = "bucket${count.index}"
    role = "roles/storage.objectViewer" 
    members = [
      "user:john.doe@example.com",
    ]
  }
  resource "google_storage_bucket_iam_binding" "admins" {
    count = 2
    bucket = "bucket${count.index}"
    role = "roles/storage.objectAdmin" 
    members = [
      "user:john.doe@example.com",
    ]
  }
