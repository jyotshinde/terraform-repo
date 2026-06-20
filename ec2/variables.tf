#aws region

variable "aws_region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "ap-southeast-1"
}

variable "CIDR_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "0.0.0.0/16"
}

variable "instance_type" {
  description = "The type of instance to use for the EC2 instance"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of the key pair to use for the EC2 instance"
  type        = string
  default     = "my-key-pair"
}

variable "subnet_id" {
  description = "The ID of the subnet to deploy the EC2 instance in"
  type        = string
  default     = ""
}

variable "vpc_id" {
  description = "If not provided, the default VPC will be used"
  type        = string
}
