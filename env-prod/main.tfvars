vpc_cidr_block = "10.20.0.0/16"
env = "prod"
tags = {
  company = "XYZ Co"
  bu_unit = "Finance"
  project_name = "expense"
}

public_subnet = ["10.20.0.0/24","10.20.1.0/24"]
web_subnet = ["10.20.2.0/24","10.20.3.0/24"]
app_subnet = ["10.20.4.0/24","10.20.5.0/24"]
db_subnet = ["10.20.6.0/24","10.20.7.0/24"]

#Availability zones
azs = ["us-east-1a", "us-east-1b"]

account_id = "072976934238"
default_vpc_id = "vpc-0e510849fd95dcedf"
default_route_table_id = "rtb-07434411c4ca3252b"
default_vpc_cidr = "172.31.0.0/16"

rds_allocated_storage = 20
rds_engine = "mysql"
rds_engine_version = "5.7.44"
rds_instance_class = "db.t3.small"

backend = {
  app_port = 8080
  instance_count = 2
  instance_type = "t3.small"
}

frontend = {
  app_port = 80
  instance_count = 2
  instance_type = "t3.small"
}

bastion_cidrs = ["172.31.38.203/32"]

public_alb = {
  internal = false
  lb_port = 80
  type = "public"
  component = "frontend"
  enable_https = true
  ingress = {
    http = { port = 80 }
    https = { port = 443 }
  }

}

backend-alb = {
  internal = true
  lb_port = 80
  type = "backend"
  component = "backend"
  enable_https = false
  ingress = {
    http = { port = 80 }
  }
}

route53_zone_id = "Z017218723D63YD2W9JSZ"
kms = "arn:aws:kms:us-east-1:072976934238:key/079f5721-2a3d-4e97-b0da-900b8fde1369"
certificate_arn = "arn:aws:acm:us-east-1:072976934238:certificate/ab3e1f5e-0b58-45f5-b14e-37aec2c793c2"