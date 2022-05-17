# default provider
provider "aws" {
  region = "us-west-1"
}

# provider for east
provider "aws" {
  region = "us-east-1"
  alias  = "east"
}

# provider for west
provider "aws" {
  region = "us-west-1"
  alias  = "west"
}

# east
module "aws1-east" {
  source = "./modules/module1"
  providers = {
    aws = aws.east
  }
  vpc_cidr = var.cidr1
}

# west
module "aws1-west" {
  source = "./modules/module1"
  providers = {
    aws = aws.west
  }
  vpc_cidr = var.cidr2
}
