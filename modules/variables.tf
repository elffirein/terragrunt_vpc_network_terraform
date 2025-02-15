variable "eks_cluster_name" {
  description = "Name of the EKS Cluster"
  type        = string
  default = "EKS-Cluster"
}

variable "cluster_role" {
  description = "Name of EKS Cluster role to be used"
  type        = string
  default = "EKSClusterRole"
}

variable "node_group_name" {
  description = "Assign name for the Node Group"
  type        = string
  default = "EKS-ng"
}

variable "nodegroup_keypair" {
  description = "Node group SSH keypair name"
  type        = string
  default = "EKS-Key"
}

variable "node_role_name" {
  description = "Role name for Node Group in eks cluster"
  type        = string
  default = "EKSNodeRole"
}

variable "region_name" {
  description = "Region name to launch VPC network"
  type        = string
  default = "us-east-1"
}

variable "vpc_cidr_block" {
  description = "VPC network CIDR"
  type        = string
  default = "10.0.0.0/16"
}

variable "environment" {
  description = "Environment name for deployment"
  type        = string
  default = "Development"
}

variable "public_subnets" {
  description = "Provider public subnets CIDR values"
  type        = list(string)
  default = [ "10.0.0.0/24", "10.0.1.0/24" ]
}

variable "private_subnets" {
  description = "Provide private subnets CIDR values"
  type        = list(string)
  default = [ "10.0.100.0/24", "10.0.101.0/24" ]
}
