variable "project_name"{
    type = string
    default = "expense"
}

variable "common_tags"{
    type = map
    default = {
        Project = "expense"
        Env = "dev"
        Terraform = "true"
    }
}

#public subnet
variable "public_subnet_cidrs"{

    type = list
    default = ["10.0.2.0/24","10.0.3.0/24"]
   
}

#private subnet
variable "private_subnet_cidrs"{

    type = list
    default = ["10.0.4.0/24","10.0.5.0/24"]
   
}

#database subnet
variable "database_subnet_cidrs"{

    type = list
    default = ["10.0.6.0/24","10.0.7.0/24"]
   
}

##Peering
variable "is_peering_required"{
    type = bool
    default = true
}