output "public_ip" {
  description = "The name of the resource"
  value       = aws_instance.example.public_ip
}