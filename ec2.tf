resource "aws_instance" "example" {
    ami           = "resolve:ssm:/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
    instance_type = "t3.micro"
    subnet_id     = "subnet-02ca7f775f2785f08"
    key_name      = "ProwlerTest"
  
}