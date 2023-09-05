variable "az" {
  default = "ap-southeast-1b"
  type    = string
}

variable "region" {
  default = "ap-northeast-1"
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
  type    = string
  default = "Qhieu_terraform_keypair"
}

variable "public_key" {
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCNP1i5YVV6/L7adC5vIBzgRME3FraAmaIRJgLKufC2n9ieR6XQrNQFdekc7r1mvR7lalkUK9iLqkn+658qrCh/U57xoP7imKiVv+0domDYk4avhDv7pxqeIyq2DAw4LvUf2NEdnvYR5Gp7iW6lj8Gk+tc1BZvfP3Mz8dwQy+cLWc7nVeSAA2kY6Cpux0MtwA1V+64vQJdIAJQMD//UXmbn0bW3vdO2YGgY2lSMR245n2L/F6YMj3aYpE6z/9MFC/RIimtiLmVpRuOlqOZPbQUjzPFYwd5Kqh9TlGcBLhwP9vzPoleElPl3v+kA3jSt+HstHX8lDQNVH+xGp58UDYkx rsa-key-20230824"
  description = "SSH Public Key"
}

variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
  type    = string
}

variable "enable_dns_support" {
  default     = true
  type        = bool
  description = "CIDR of VPC"
}


variable "subnet" {
  default = {
    "subnet1" = {
      name = "vti-qhieu-tf-subnet1"
      cidr = "10.2.0.0/24"
    }
    "subnet2" = {
      name = "vti-qhieu-tf-subnet2"
      cidr = "10.4.0.0/24"
    }
    "subnet3" = {
      name = "vti-qhieu-tf-subnet3"
      cidr = "10.6.0.0/24"
    }
  }
  type        = any
  description = "CIDR of subnets"
}

variable "sg" {
  default = {
    "sg1" = {
      name = "vti-qhieu-tf-sg1"

      ingress = [{
        description      = "Allow SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = []
        prefix_list_ids  = []
        security_groups  = []
        self             = true
      }]
    }
    "sg2" = {
      name = "vti-qhieu-tf-sg2"
      ingress = [{
        description      = "Allow SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = []
        prefix_list_ids  = []
        security_groups  = []
        self             = true
      }]
    }
    "sg3" = {
      name = "vti-qhieu-tf-sg3"
      ingress = [{
        description      = "Allow SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = []
        prefix_list_ids  = []
        security_groups  = []
        self             = true
      }]

    }
  }
  type = any
}

