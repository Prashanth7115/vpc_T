variable "vpc_cidr" {
  type = string
}


variable "tags" {
  type = map   # required
}
variable "vpc_tags" {
  type = map
  default = {}   # optional
}

variable "azs" {
  type = list
}

variable "public_subnet_cidr" {
  type = list
}
variable "public_subnet_tags" {
  type = map
  default = {} # optional
}
variable "public_subnet_names" {
  type = list
}
variable "igw_tags" {
  type = map
  default = {}  # optional
}
variable "public_route_table_tags" {
  type = map
  default = {} # optional
}
variable "public_route_table_name" {
  type = string
}
variable "private_subnet_cidr" {
  type = list
}
variable "private_subnet_tags" {
  type = map
  default = {} # optional
}
variable "private_subnet_names" {
  type = list
}
variable "Ngw_tags" {
  type = map
  default = {} # optional
}
variable "private_route_table_tags" {
  type = map
  default = {}  # optional
}
variable "private_route_table_name" {
  type = string
}
variable "project" {
  type = string
}
variable "vpc-flowlog-role" {
  type = string
}
variable "vpc-cloudwatch-group" {
  type = string
}

# variable "alb_name" {
#   type = string
# }
# variable "internal" {
#   type = bool  # value should be false
# }
# variable "lb_type" {
#   type = string
# }
# variable "target_group_names" {
#   type    = list(string)
# }
# variable "alb_listener_ports" {
#   type    = list(number)
# }
# variable "nlb_listener_ports" {
#   type = list(number)
# }
# variable "vpc_link_name" {
#   type = string
# }
# variable "vpc_link_description" {
#   type = string
# }
# variable "nlb_name" {
#   type = string
# }
# variable "lb-type" {
#   type = string
# }
# variable "target-group-names" {
#   type = list(string)
# }
# variable "database_subnet_cidr" {
#   type = list
# }
# variable "database_subnet_names" {
#   type = list
# }
# variable "database_subnet_tags" {
#   type = map
#   default = {}
# }
# variable "vpc_endpoint_type" {
#   type = string
# }

