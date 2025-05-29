variable "region" {
  default = "ap-south-1"
}

variable "key_name" {
  description = "ssh key pair name to access worker nodes"
  type        = string
}

locals {
  cluster_name = "ubber-eks-cluster"
}

