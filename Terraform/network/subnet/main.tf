resource "aws_subnet" "main" {
  vpc_id     = var.vpc_id
  cidr_block = var.public_subnets
  tags = {
    name = var.subnet_name
  }
}
