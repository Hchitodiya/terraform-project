module "vpc" {

source             = "terraform-aws-modules/vpc/aws"
version            = "5.1.1"
name               = "eks-vpc"
cidr               = "10.0.0.0/16"
azs                = ["${var.region}a", "${var.region}b"]
public_subnets     = ["10.0.1.0/24","10.0.2.0/24"]
private_subnets    = ["10.0.3.0/24","10.0.4.0/24"]

enable_nat_gateway = true
single_nat_gateway = true

tags = {


"kubernetes.io/cluster/${local.cluster_name}"    = "owned"

"kubernetes.io/role/internal-elb"                = "1"
"kubernetes.io/role/elb"                         = "1"

}

}
