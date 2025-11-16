output "public_ip" {
  value       = aws_instance.this[0].public_ip
  description = "Public IP of the EC2 instance"
}
