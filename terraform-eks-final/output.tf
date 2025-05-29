output "eks_cluster_name" {
  value = module.eks.cluster_name
}

output "eks_cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "alb_controller_role_arn" {
  value = module.alb_irsa_role.iam_role_arn
}

