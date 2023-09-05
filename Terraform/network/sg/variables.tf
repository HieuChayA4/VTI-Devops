variable "vpc_id" {
  type        = string
  description = "VPC's ID"
}

variable "sg_name" {
  type = string
}

variable "sg_ingress" {
  type = set(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
    ipv6_cidr_blocks = any
prefix_list_ids = any
security_groups = any
self = bool
  }))
}

