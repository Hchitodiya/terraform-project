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


variable "vpc_id" {
  description = "Existing VPC ID"
  default     = "vpc-0356a66c729697af8"
}

variable "private_subnets" {
  description = "List of existing private subnet IDs"
  type        = list(string)
  default     = ["subnet-05b56e3b0ed7a58a6", "subnet-0dfe20c15d53b733c"]
}

variable "public_subnets" {
  description = "List of existing public subnet IDs"
  type        = list(string)
  default     = ["subnet-0a9461303bd77bc4b", "subnet-0eb9782bf928457a3"]
}

