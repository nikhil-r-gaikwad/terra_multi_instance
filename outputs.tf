output "instance_ids" {
  value       = aws_instance.web[*].id
  description = "The IDs of the newly created EC2 instances"
}

output "instance_private_ips" {
  value       = aws_instance.web[*].private_ip
  description = "The private IPs assigned within your existing VPC subnet"
}
output "vpc_security_group_ids" {
  value       = [var.existing_security_group_id]
  description = "The IDs of the existing security groups in your VPC"
}
output "instance_public_ips" {
  value       = aws_instance.web[*].public_ip
  description = "The public IPs assigned to the EC2 instances"
}