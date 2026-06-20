resource "aws_ami" "ami" {
    name                = "my-ami"
    description         = "An AMI for my EC2 instance"
    virtualization_type = "hvm"
    root_device_name   = "/dev/sda1"
    ebs_block_device {
        device_name           = "/dev/sda1"
        volume_size           = 8
        volume_type           = "gp2"
        delete_on_termination = true
}
filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
}
owners = ["amazon"]
}   
