aws_region     = "us-east-1"
aws_access_key = "AKIA4IM3HLXMRLOF6T5B"
aws_secret_key = "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"


vpcs = {
  vpc1 = {
    vpc_name        = "Rabiesevin-prod-vpc"
    vpc_cidr_block  = "10.0.0.0/16"
    public_subnets  = ["10.1.0.0/20"]
    private_subnets = ["10.2.0.0/20", "10.3.0.0/20"]
    create_nat_gateway = true  # Set to false if you don't want to create a NAT Gateway
  },
#  vpc2 = {
#    vpc_name        = "my-vpc-2"
#    vpc_cidr_block  = "10.1.0.0/16"
#    public_subnets  = ["10.1.1.0/24"] #"10.1.2.0/24"
#   private_subnets = ["10.1.101.0/24", "10.1.102.0/24"]
#   create_nat_gateway = true  # No NAT Gateway for this VPC
#  }
}

availability_zones = ["us-east-1a", "us-east-1b"]
