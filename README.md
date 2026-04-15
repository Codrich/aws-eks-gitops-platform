
# AWS EKS GitOps Platform

Production-style Kubernetes platform on AWS EKS built with Terraform, Helm, ArgoCD, and GitHub Actions.

## Levels
- Level 1: Core platform (EKS + Flask + Helm + CI/CD)
- Level 2: Delivery and operations (ArgoCD + Ingress + HPA)
- Level 3: Observability and security (Prometheus + Grafana + RBAC)

## Tech Stack
- AWS EKS, ECR, VPC, IAM
- Terraform (modular)
- Helm
- GitHub Actions (OIDC)
- Python Flask