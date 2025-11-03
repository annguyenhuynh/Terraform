provider "aws" {
    region = var.aws_region 
}

module "extra_ec2" {
    source        = "./modules/ec2"
    ami_id        = "ami-0def5678"   
    instance_type = "t4g.micro"       
    subnet_id     = var.subnet_id
    key_name      = var.key_name
    name          = "extra-instance"
    security_group_id = var.security_group_id
}