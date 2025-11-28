provider "aws" {
    region = var.aws_region 
    profile = "DataEngineerPowerUsers-040402472214"
}

resource "aws_s3_bucket" "tfstate_bucket" {
  bucket        = "an-huynh-glue-data-brew"
  force_destroy = true
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "an-terraform-tfstate-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
module "extra_ec2" {
    source        = "./modules/ec2"
    ami_id        = var.ami_id  
    instance_type = var.instance_type      
    subnet_id     = var.subnet_id
    key_name      = var.key_name
    name          = "dev-instance-${terraform.workspace}"
    security_group_id = var.security_group_id
}

