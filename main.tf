provider "aws" {
  region = local.region
}

locals {
  name            = "eks-${replace(basename(path.cwd), "_", "-")}"
  cluster_version = "1.21"
  region          = "eu-west-1"

  tags = {
    Name    = local.name
  }
}
