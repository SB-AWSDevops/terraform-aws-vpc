locals {

  resource_name    = "${var.project_name}-${var.env}"
  avail_zone_names = slice(data.aws_availability_zones.avail_zones.names, 0, 2)
}

locals {

  private_subnet_info = [
    for subnet in aws_subnet.private :
    {
      id   = subnet.id
      name = subnet.tags["Name"]
    }
    if regexall("private", subnet.tags["Name"]) != null
  ]

  public_subnet_info = [

    for subnet in aws_subnet.public :
    {
      id   = subnet.id
      name = subnet.tags["Name"]
    }
    if regexall("public", subnet.tags["Name"]) != null
  ]

  database_subnet_info = [
    for subnet in aws_subnet.database :
    {

      id   = subnet.id
      name = subnet.tags["Name"]
    }
    if regexall("database", subnet.tags["Name"]) != null
  ]

  private_subnet_count  = length(local.private_subnet_info)
  public_subnet_count   = length(local.public_subnet_info)
  database_subnet_count = length(local.database_subnet_info)

}