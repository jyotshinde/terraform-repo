variable "vpc-name" {
    description = "The name of the VPC"
    type        = string
    default     = "my-standard-vpc"
}

variable "vpc-cidr" {
    description = "The CIDR block for the VPC"
    type        = string
    default     = "10.0.0.0/16"
}

variable "public-subnet-cidrs" {
    description = "The CIDR blocks for the public subnets"
    type        = list(string)
    default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private-subnet-cidrs" {
    description = "The CIDR blocks for the private subnets"
    type        = list(string)
    default     = ["10.0.3.0/24", "10.0.4.0/24"]    
}

variable "database-subnet-cidrs" {
    description = "The CIDR blocks for the database subnets"
    type        = list(string)
    default     = ["10.0.5.0/24", "10.0.6.0/24"]
}

variable "availability-zones" {
    description = "The availability zones for the subnets"
    type        = list(string)
    default     = ["ap-southeast-1a", "ap-southeast-1b"]
}   

variable "nat-gateway-enabled" {
    description = "Whether to enable NAT Gateway for private subnets"
    type        = bool
    default     = true
}
