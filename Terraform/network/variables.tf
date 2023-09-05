variable "vpc_id" {
  type        = string
  description = "VPC's ID"
}
variable "public_subnets" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "sg_name" {
  type = string
}

variable "sg_ingress" {
  type = map(string)
}

