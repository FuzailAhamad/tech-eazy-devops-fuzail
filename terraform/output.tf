output "instance_public_ip" {
  description = "Public IP of the instance"
  value       = aws_instance.app_server.public_ip
}
