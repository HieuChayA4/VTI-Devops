resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnets
  tags = {
    name = var.subnet_name
  }
}

resource "aws_security_group" "this" {
  name    = var.sg_name
  vpc_id  = var.vpc_id
  ingress = var.sg_ingress
}