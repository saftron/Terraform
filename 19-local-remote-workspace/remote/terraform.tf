terraform {
  backend "s3" {
    bucket = "test-gaj"
    key    = "test-gaj/terraform.tfstate"
    region = "us-east-2"
  }
}

