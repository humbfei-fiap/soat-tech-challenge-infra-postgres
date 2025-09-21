terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Força o uso de uma versão recente do provedor AWS
    }
  }

  required_version = ">= 1.3.0" # Define uma versão mínima para o próprio Terraform
}