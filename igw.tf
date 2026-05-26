resource "aws_internet_gateway" "Demo-igw" {
    vpc_id = aws_vpc.demo-vpc.id
    tags = {
        Name = "${local.environment}-igw"
    }
}