provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment = var.stage
      Owner       = var.owner
    }
  }
}
