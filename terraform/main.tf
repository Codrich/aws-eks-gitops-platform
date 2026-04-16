provider "aws" {
  region = var.aws_region
}

terraform {
  required_version = ">= 1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

module "network" {
  source       = "./modules/network"
  project_name = var.project_name
  environment  = var.environment
}

module "eks" {
  source             = "./modules/eks"
  project_name       = var.project_name
  environment        = var.environment
  public_subnet_ids  = module.network.public_subnet_ids
  private_subnet_ids = module.network.private_subnet_ids
  cluster_role_arn   = var.cluster_role_arn
  node_role_arn      = var.node_role_arn
}