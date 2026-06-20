resource "aws_instance" "ec2-demo" {
    ami           = data.aws_ami.latest_amazon_linux.id
    instance_type = var.instance_type
    user_data    = file("${path.module}/app1-install.sh")
    key_name      = var.key_name
    vpc_security_group_ids = [aws_security_group.demo-sg.id]  
}

