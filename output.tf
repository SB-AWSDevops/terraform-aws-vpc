output "subnet_info" {
  value = {
    "private_subnets" : local.private_subnet_info
    "Private Subnets" : local.private_subnet_info
    "Database Subnet" : local.database_subnet_info
    "Total Subnets created  " : local.private_subnet_count + local.public_subnet_count + local.database_subnet_count
  }
}

output "vpc_id" {
  value = aws_vpc.main.id
}

output "database_subnet_group_id" {
  value = aws_db_subnet_group.default.id
}
