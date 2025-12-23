variable "project_name" {
  type = string
}

variable "cluster_version" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "private_subnets" {
  type = list(string)
}
variable "create_cloudwatch_log_group" {
  description = "Whether to create CloudWatch log group for EKS"
  type        = bool
  default     = true
}

variable "create_kms_key" {
  description = "Whether to create KMS key for EKS secrets encryption"
  type        = bool
  default     = true
}
variable "cluster_encryption_config" {
  description = "EKS envelope encryption configuration"
  type        = any
  default     = {}
}

