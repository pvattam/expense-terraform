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

module "rds" {
  source = "./modules/rds"
  subnets = module.vpc.db_subnets
  env = var.env
  rds_allocated_storage = var.rds_allocated_storage
  rds_engine = var.rds_engine
  rds_engine_version = var.rds_engine_version
  rds_instance_class = var.rds_instance_class
  sg_cidrs = var.app_subnet
  tags = var.tags
  vpc_id = module.vpc.vpc_id
}

module "backend" {
  source = "./modules/app"
  app_port = var.backend["app_port"]
  component = "backend"
  env = var.env
  instance_count = var.backend["instance_count"]
  instance_type = var.backend["instance_type"]
  sg_cidrs = var.web_subnet
  subnets = module.vpc.app_subnets
  tags = var.tags
  vpc_id = module.vpc.vpc_id
  bastion_cidrs = var.bastion_cidrs
}