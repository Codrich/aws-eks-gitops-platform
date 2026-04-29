variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "eks-gitops"
}

variable "environment" {
  description = "Environment"
  type        = string
  default     = "dev"
}

variable "cluster_role_arn" {
  description = "ARN of existing IAM role for EKS cluster"
  type        = string
  default     = "arn:aws:iam::376129869231:role/eks-gitops-eks-cluster-role"
}
variable "node_role_arn" {
  description = "ARN of existing IAM role for EKS nodes"
  type        = string
  default     = "arn:aws:iam::376129869231:role/eks-gitops-eks-node-role"
}