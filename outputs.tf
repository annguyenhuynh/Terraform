output "public_ip" {
  value = module.extra_ec2.public_ip
  description = "Public IP of the EC2 instance in this workspace"
}