terraform {
  backend "s3" {
    bucket = "testgaj"
    key    = "testgaj/terraform.tfstate"
    region = "us-east-2"
  }
}

