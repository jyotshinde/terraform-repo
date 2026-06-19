resource "aws_ec2_instance" "ec2-demo" {
    ami           = "ami-0c55b159cbfafe1f0"
    instance_type = "t2.micro"
    user_data = file("${path.module}/app1-install.sh")
    tags = {
        Name = "my-ec2-instance"
    }
}
