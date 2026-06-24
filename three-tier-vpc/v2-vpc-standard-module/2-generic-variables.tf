variable "aws-region" {
    description = "The AWS region to deploy resources in"
    type        = string
    default     = "ap-southeast-1"
}

variable "env" {
    description = "The environment to deploy resources in"
    type        = string
    default     = "dev"
}