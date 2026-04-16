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
  default     = "arn:aws:iam::533267139926:role/c176450a4557385l14255774t1w533267-LabEksClusterRole-FjMBCsGKpwo7"
}

variable "node_role_arn" {
  description = "ARN of existing IAM role for EKS nodes"
  type        = string
  default     = "arn:aws:iam::533267139926:role/c176450a4557385l14255774t1w533267139-LabEksNodeRole-WKUghUarw3mD"
}