resource "aws_instance" "this" {
  ami                         = "ami-091a58610910a87a9"
  instance_type               = var.instance_type
  availability_zone           = var.az
  associate_public_ip_address = var.associate_public_ip_address
  subnet_id                   = "subnet-0987e4da014f80b75"
  security_groups             = ["sg-0b85f388c1731fb0e"]
  tags                        = var.default_tags
}