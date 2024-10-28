variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
}

variable "aws_access_key" {
  description = "AWS Access Key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS Secret Key"
  type        = string
  sensitive   = true
}

variable "vpcs" {
  description = "Map of VPC configurations"
  type        = map(object({
    vpc_name        = string
    vpc_cidr_block  = string
    public_subnets  = list(string)
    private_subnets = list(string)
    create_nat_gateway = bool
  }))
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}
