terraform {
  cloud {
    organization = "hieuchaya"

    workspaces {
      name = "vti-demo-terraform"
    }
  }
}