output "instance_id" {
  description = "The ID of the EC2 instance"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "The public IP address of the EC2 instance"
  value       = aws_instance.app_server.public_ip
}

output "instance_ami" {
  description = "The AMI used for the EC2 instance"
  value       = aws_instance.app_server.ami
}

output "instance_type" {
  description = "The type of the EC2 instance"
  value       = aws_instance.app_server.instance_type
}
