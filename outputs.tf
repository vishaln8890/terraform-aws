output "ec2_instance_id" {
  description = "EC2 Instance ID"
  value       = module.ec2_instance.instance_id
}

output "ec2_public_ip" {
  description = "EC2 Public IP"
  value       = module.ec2_instance.public_ip
}

output "ec2_private_ip" {
  description = "EC2 Private IP"
  value       = module.ec2_instance.private_ip
}
