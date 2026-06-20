output "public_ip" {
    description = "The public IP address of the EC2 instance"
    value       = aws_instance.ec2-demo.public_ip 
}
output "public_dns" {
    description = "The public DNS name of the EC2 instance"
    value       = aws_instance.ec2-demo.public_dns
}
