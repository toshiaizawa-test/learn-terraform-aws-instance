resource "google_storage_bucket" "static-site" {
  name          = "gcs2.toshiaizawa.com"
  location      = "ASIA"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  cors {
    origin          = ["http://gcs2.toshiaizawa.com"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}
