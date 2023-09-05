resource "aws_vpc" "this_vpc" {
  cidr_block         = var.vpc_cidr_block
  enable_dns_support = var.enable_dns_support
  tags = {
    name = "vti-qhieu-tf-vpc"
  }
}