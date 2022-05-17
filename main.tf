module "aws1" {
  source = "./modules/module1"
  region = var.region1
  vpc_cidr = var.cidr1
}

module "aws2" {
  source = "./modules/module1"
  region = var.region2
  vpc_cidr = var.cidr2
}
