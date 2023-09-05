variable "vpc_cidr_block" {
  type        = string
  description = "CIDR of VPC"
}

variable "enable_dns_support" {
  type        = bool
  description = "enable/disable DNS support in the VPC"
}