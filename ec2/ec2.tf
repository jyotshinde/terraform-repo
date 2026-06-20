resource "aws_ec2_instance" "ec2-demo" {
    ami           = var.ami_id
    instance_type = var.instance_type
    key_name      = var.key_name
    subnet_id     = var.subnet_id
    security_groups = [var.security_group_id]
}
