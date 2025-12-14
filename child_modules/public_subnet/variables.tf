variable "vpc_id" {
  type = string
}

variable "igw_id" {
  type = string
}

variable "subnet_cidr" {
  type = string
}

variable "az" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
