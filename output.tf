output "subnet_info"{
    value = module.vpc.subnet_info
}

output "vpc_id"{
    value = module.vpc.vpc_id
}

output "database_subnet_group_id"{
  value = module.vpc.database_subnet_group_id
}

