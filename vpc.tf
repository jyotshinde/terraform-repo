resource "aws_vpc" "demo-vpc"{
    cidr_block = "0.0.0.0/16"
    enable_dns_support = true
    enable_dns_hostnames = true
    tags = {
        Name = "Demo-vpc"
    }
}
