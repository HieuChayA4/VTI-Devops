

resource "aws_security_group" "this" {
  name    = var.sg_name
  vpc_id  = var.vpc_id
  ingress = var.sg_ingress
  #[
  #   for name, rule in var.sg_ingress :
  #   {
  #     description = rule.description
  #     from_port   = rule.from_port
  #     to_port     = rule.to_port
  #     protocol    = rule.protocol
  #     cidr_blocks = rule.cidr_blocks
  #   }
  # ]
}