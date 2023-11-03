### 
terraform {
  cloud {
    organization = "MasonClouds"

    workspaces {
      name = "storage-dev-us-east"
    }
  }
}
