resource "aws_subnet" "private-subnet-1" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = "10.0.1.0/19"
    availability_zone = local.zone1
    tags = {
        Name = "${local.environment}-private-subnet-1"
        kubernetes.io/role/internal-elb = "1"
        kubernetes.io/cluster/"${local.eks-name}" = "owned"
    }
}

resource "aws_subnet" "public-subnet-1" {
    vpc_id = aws_vpc.demo-vpc.id
    cidr_block = "10.0.2.0/19"
    availability_zone = local.zone1
    tags = {
        Name = "${local.environment}-public-subnet-1"
        kubernetes.io/role/elb = "1"
        kubernetes.io/cluster/"${local.eks-name}" = "owned"
    }
}