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

variable "key_pair" {
  type  = string
  value = "Qhieu_terraform_keypair"
}

variable "public_key" {
  type        = string
  value       = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCNP1i5YVV6/L7adC5vIBzgRME3FraAmaIRJgLKufC2n9ieR6XQrNQFdekc7r1mvR7lalkUK9iLqkn+658qrCh/U57xoP7imKiVv+0domDYk4avhDv7pxqeIyq2DAw4LvUf2NEdnvYR5Gp7iW6lj8Gk+tc1BZvfP3Mz8dwQy+cLWc7nVeSAA2kY6Cpux0MtwA1V+64vQJdIAJQMD//UXmbn0bW3vdO2YGgY2lSMR245n2L/F6YMj3aYpE6z/9MFC/RIimtiLmVpRuOlqOZPbQUjzPFYwd5Kqh9TlGcBLhwP9vzPoleElPl3v+kA3jSt+HstHX8lDQNVH+xGp58UDYkx rsa-key-20230824"
  description = "SSH Public Key"
}