terraform {
  backend "s3" {
    bucket         = "an-huynh-glue-data-brew"
    key            = "env/dev/terraform.tfstate"
    region         = "us-gov-west-1"
    dynamodb_table = "an-terraform-tfstate-lock"
    profile        = "DataEngineerPowerUsers-040402472214"
  }
}


