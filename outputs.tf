output "vpc_id_1" {
  value = module.aws1.vpc_id
  description = "Vpc id 1"
}

output "vpc_id_2" {
  value = module.aws2.vpc_id
  description = "Vpc id 2"
}
