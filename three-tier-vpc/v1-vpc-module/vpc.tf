module "vpc_example_complete" {
  source  = "terraform-aws-modules/vpc/aws//examples/complete"
  version = "6.6.1"

  name = "full-vpc"
  cidr = "10.0.0.0/16"
}
