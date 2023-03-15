# resource "aws_route_table" "rt-default" {
#   vpc_id = module.vpc.vpc_id

#   route = []

#   tags = {
#     Name = "RT-AN2-CFN-TEST-DEFAULT"
#   }
# }

# resource "aws_route_table" "rt-2a" {
#   vpc_id = module.vpc.vpc_id

#   route {
#     cidr_block = "10.24.1.0/24"
#   }

#   tags = {
#     Name = "RT-AN2-CFN-TEST-PRV-2A"
#   }
# }

# resource "aws_route_table" "rt-2c" {
#   vpc_id = module.vpc.vpc_id
  
#   route {
#     cidr_block = "10.24.2.0/24"
#   }

#   tags = {
#     Name = "RT-AN2-CFN-TEST-PRV-2C"
#   }
# }