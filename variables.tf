## Project

variable "project_name" {

  type = string

}

variable "env" {

  type    = string
  default = "dev"

}

variable "common_tags" {

  type = map(any)

}

# VPC
variable "vpc_cidr" {

  type    = string
  default = "10.0.0.0/16"
}

variable "enable_dns_hostnames" {

  type    = bool
  default = true
}

variable "vpc_tags" {

  type    = map(any)
  default = {}

}
#internet gateway
variable "igw_tags" {
  type = map(any)
  default = {

  }
}

#public subnet
variable "public_subnet_cidrs" {

  type = list(any)
  validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "please provide only 2 valid public subnet cidr"
  }


}

#private subnet
variable "private_subnet_cidrs" {

  type = list(any)
  validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "please provide only 2 valid private subnet cidr"
  }


}

#database subnet
variable "database_subnet_cidrs" {

  type = list(any)
  validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "please provide only 2 valid private subnet cidr"
  }


}

variable "database_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

variable "public_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

variable "private_subnet_cidrs_tags" {
  type    = map(any)
  default = {}
}

#nat_gateway_tags
variable "nat_gateway_tags" {
  type    = map(any)
  default = {}
}

#public_route_table_tags
variable "public_route_table_tags" {
  type    = map(any)
  default = {}
}

#private_route_table_tags
variable "private_route_table_tags" {
  type    = map(any)
  default = {}
}

#databse_route_table_tags
variable "database_route_table_tags" {
  type    = map(any)
  default = {}
}

##Peering
variable "is_peering_required" {
  type    = bool
  default = false
}

variable "acceptor_vpc_id" {
  type    = string
  default = ""
}

variable "vpc_peering_tags" {
  type    = map(any)
  default = {}
}

variable "database_subnet_group_tags" {
  type    = map(any)
  default = {}
}
