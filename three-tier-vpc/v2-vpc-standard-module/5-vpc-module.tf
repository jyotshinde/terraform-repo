# VPC BASIC DETAILS

module "standard-vpc"{
    source = "terraform-aws-modules/vpc/aws"
    version = "~>6.0"

    #VPC BASIC DETAILS
    name = "${local.name}-${var.vpc-name}"
    cidr = var.vpc-cidr
    azs = var.availability-zones
    #CIDER BLOCKS FOR SUBNETS
    public_subnets = var.public-subnet-cidrs
    private_subnets = var.private-subnet-cidrs
    database_subnets = var.database-subnet-cidrs
    create_database_subnet_group = var.vpc-create-db-subnet-group
    create_database_subnet_route_table = var.vpc-create-database-route-table

    #NAT GATEWAY CONFIGURATION
    enable_nat_gateway = var.nat-gateway-enabled
    single_nat_gateway = var.single-nat-gateway

    #DNS CONFIGURATION
    enable_dns_hostnames = true
    enable_dns_support = true

}
