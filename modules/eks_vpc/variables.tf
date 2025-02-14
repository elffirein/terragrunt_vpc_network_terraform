variable "region_name" {
  type    = string
  default = "us-east-1"
}

variable "environment" {
  type    = string
  default = "Development"
}

variable "vpc_cidr_block" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets" {
  type    = list(string)
  default = ["10.0.0.0/24", "10.0.1.0/24"]
}

variable "private_subnets" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "public_azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

variable "private_azs" {
  type    = list(string)
  default = ["us-east-1a", "us-east-1b"]
}

