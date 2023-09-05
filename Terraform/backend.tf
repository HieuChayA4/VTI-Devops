terraform {
  cloud {
    organization = "hieuchaya"

    workspaces {
      name = "vti-demo-terraform"
    }
  }
  # backend "s3" {
  #   bucket = "vti2032-qhieu-tf-bucket"
  #   key    = "s3://vti2032-qhieu-tf-bucket/tf/terraform.tfstate"
  #   region = var.region
  # }
}
