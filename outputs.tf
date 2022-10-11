output "private_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.cloudops_server_vpc.id
}

output "public_instance_id" {
  description = "ID of the EC2 instance"
  value       = aws_instance.cloudops_server_public.id
}

output "public_instance_public_ip" {
  description = "Public IP address of the EC2 instance"
  value       = aws_instance.cloudops_server_public.public_ip
}