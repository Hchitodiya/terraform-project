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
  default     = "vpc-0bd462f56190fd83d"
}

variable "private_subnets" {
  description = "List of existing private subnet IDs"
  type        = list(string)
  default     = ["subnet-07d1d8ccd944f52b9", "subnet-0009be1ce100c2462"]
}

variable "public_subnets" {
  description = "List of existing public subnet IDs"
  type        = list(string)
  default     = ["subnet-0a833493af16fefd4", "subnet-02a4c4eea98945f0e"]
}

