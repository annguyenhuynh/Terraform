terraform {
  backend "s3" {
    bucket = "an-terraform-tfstate"
    key    = "an/terraform.tfstate"
    region = "us-gov-west-1"
  }
}
