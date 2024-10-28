module "vpc" {
  source = "./modules/vpc"

  for_each = var.vpcs

  vpc_name       = each.value.vpc_name
  cidr_block     = each.value.vpc_cidr_block
  public_subnets = each.value.public_subnets
  private_subnets = each.value.private_subnets
  azs            = var.availability_zones
  create_nat_gateway = each.value.create_nat_gateway
}
