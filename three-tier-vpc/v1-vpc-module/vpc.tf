module "vpc_example_complete" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.6.1"

  #basic details
  name = "full-vpc"
  cidr = "10.0.0.0/16"
  #subnets
  azs                 = ["ap-southeast-1a", "ap-southeast-1b"]  
  public_subnets      = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets     = ["10.0.5.0/24", "10.0.6.0/24"]
  database_subnets    = ["10.0.3.0/24", "10.0.4.0/24"]

  create_database_subnet_group = true
  create_database_subnet_route_table = true

  #NAT Gateway
  enable_nat_gateway = true
  single_nat_gateway = true
  enable_dns_hostnames = true
  enable_dns_support = true

  tags = {
    owner       = "thejyot"
    Environment = "dev"
  }
  
}
