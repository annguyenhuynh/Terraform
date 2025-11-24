provider "aws" {
    region = var.aws_region 
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

