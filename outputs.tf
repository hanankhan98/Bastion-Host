output "bastion_public_ip" {
  description = "Public IP of the Bastion host"
  value       = aws_instance.bastion.public_ip
}

output "private_server_private_ip" {
  value = aws_instance.private.private_ip
}

output "vpc_id" {
  value = aws_vpc.main.id
}
