variable "aws_region" {
    description = "The AWS region to deploy resources in."
    default     = "us-gov-west-1" 
}

# Define an input variable for EC2 intance
variable "instance_type" {
    description = "The type of EC2 instance to use."
    type        = string
    default     = "t2.micro"
}

# Define an input variable for the AMI ID
variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance."
    type        = string
}

# Create an EC2 instance using input variables
resource "aws_instance" "example_instance" {
    ami             = var.ami_id
    instance_type   = var.instance_type
    tags = {
        Name = "ExampleInstance"
    }
}

variable "subnet_id" {
    description = "The subnet ID to launch the EC2 instance in."
}
  
# Define an output variable to expose public IP address of the EC2 instance
output "public_id" {
    description = "value of the public IP address of the EC2 instance."
    value = aws_instance.example_instance.public_ip
}

variable "aws_region" {
    description = "The AWS region to deploy resources in."
    default     = "us-gov-west-1"
}