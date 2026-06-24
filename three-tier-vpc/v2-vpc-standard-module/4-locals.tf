locals {
  region = var.aws-region
  env = var.env
  owner = var.owner
  name = "${var.owner}-${var.env}"
}