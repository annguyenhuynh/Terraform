# resource "aws_instance" "this" {
#   ami           = var.ami_id
#   instance_type = var.instance_type
#   subnet_id     = var.subnet_id
#   key_name      = var.key_name

#   tags = {
#     Name = var.name
#   }
# }

resource "aws_instance" "this" {
  count         = var.create_instance ? 1 : 0
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name
  vpc_security_group_ids = [var.security_group_id]

  tags = {
    Name = var.name
  }
}