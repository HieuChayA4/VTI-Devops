variable "az" {
  default = "ap-southeast-1b"
  type    = string
}

variable "associate_public_ip_address" {
  default = false
  type    = bool
}

variable "instance_type" {
  default = "t2.micro"
  type    = string

}

variable "default_tags" {
  default = {
    "Owner" = "Hieu"
  }
  type = map(string)
}