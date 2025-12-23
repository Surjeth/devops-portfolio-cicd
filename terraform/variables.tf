variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name prefix"
  type        = string
  default     = "devops-portfolio"
}

variable "github_repo" {
  description = "GitHub repository in org/repo format"
  type        = string
  default     = "Surjeth/devops-portfolio-cicd"
}

variable "cluster_version" {
  description = "EKS Kubernetes version"
  type        = string
  default     = "1.29"
}

