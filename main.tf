module "vpc" {
  source = "./modules/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  env = var.env
  tags = var.tags
  public_subnet = var.public_subnet
  web_subnet = var.web_subnet
  app_subnet = var.app_subnet
  db_subnet = var.db_subnet
  azs = var.azs
  account_id = var.account_id
  default_vpc_id = var.default_vpc_id
  default_route_table_id = var.default_route_table_id
  default_vpc_cidr = var.default_vpc_cidr
}