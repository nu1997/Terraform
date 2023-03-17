module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  name = "VPC-AN2-CFN-TEST-JIWOOPARK"
  cidr = "10.24.0.0/16"

  azs = ["ap-northeast-2a", "ap-northeast-2c"]
  
  private_subnets = ["10.24.1.0/24", "10.24.2.0/24"]
  private_subnet_names = ["SBN-AN2-CFN-TEST-PRV-2A", "SBN-AN2-CFN-TEST-PRV-2C"]

  manage_default_route_table = true
  default_route_table_name = "RT-AN2-CFN-TEST-DEFAULT"

  private_route_table_tags = {
    "subnet-role" = "private"
  }

  ##### NAT gateway ##########
  enable_nat_gateway = false
  enable_vpn_gateway = false

  ##### VPC tags ##########
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}