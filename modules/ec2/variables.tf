variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type        = string
}

variable "instance_type" {
    description = "Type of EC2 instance"
    type        = string  
}

variable "subnet_id" {
    description = "Subnet ID for the EC2 instance"
    type        = string
}

variable "security_group_id" {
    description = "value of security group ID"
    type        = string
}

variable "key_name" {
    description = "Key pair name for SSH access"
    type        = string
}

variable "name" {
  default = "module-instance"
}