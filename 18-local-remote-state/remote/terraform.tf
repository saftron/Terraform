terraform {
  backend "s3" {
    bucket = "testleafgaj"
    key    = "testleafgaj/terraform.tfstate"
    region = "us-west-2"
  }
}
