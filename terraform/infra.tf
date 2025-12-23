module "vpc" {
  source = "./modules/vpc"

  project_name = var.project_name
  region       = var.aws_region
}

module "eks" {
  source = "./modules/eks"

  project_name     = var.project_name
  cluster_version  = var.cluster_version
  vpc_id           = module.vpc.vpc_id
  private_subnets  = module.vpc.private_subnets
}
