terraform {
  backend "s3" {
    bucket         = "surjeth-devops-portfolio-tfstate"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}
