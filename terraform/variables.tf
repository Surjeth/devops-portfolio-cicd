variable "github_repo" {
  description = "GitHub repository in the form owner/repo"
  type        = string
  default     = "Surjeth/devops-portfolio-cicd"
}

variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
