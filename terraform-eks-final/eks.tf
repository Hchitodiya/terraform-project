module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  version         = "19.15.1"

  cluster_name    = local.cluster_name
  cluster_version = "1.31"

  vpc_id     = var.vpc_id
  subnet_ids = var.private_subnets

  enable_irsa = true

  eks_managed_node_group_defaults = {
    ami_type       = "AL2_x86_64"
    instance_types = ["t3.medium"]
    key_name       = var.key_name
  }

  eks_managed_node_groups = {
    private-ng = {
      desired_size   = 2
      max_size       = 3
      min_size       = 2

      instance_types = ["t3.medium"]
      capacity_type  = "SPOT"
    }
  }
}

