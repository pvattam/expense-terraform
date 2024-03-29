variable "vpc_cidr_block" {}
variable "env" {}
variable "tags" {}
variable "public_subnet" {}
variable "web_subnet" {}
variable "app_subnet" {}
variable "db_subnet" {}
variable "azs" {}
variable "account_id" {}
variable "default_vpc_id" {}
variable "default_route_table_id" {}
variable "default_vpc_cidr" {}
variable "rds_allocated_storage" {}
variable "rds_engine" {}
variable "rds_engine_version" {}
variable "rds_instance_class" {}
variable "backend" {}
variable "bastion_cidrs" {}
variable "frontend" {}
variable "public_alb" {}
variable "backend-alb" {}
variable "route53_zone_id" {}
variable "kms" {}
variable "certificate_arn" {}
variable "prometheus_cidrs" {}