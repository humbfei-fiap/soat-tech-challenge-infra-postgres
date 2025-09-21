# Configuração do backend remoto para armazenar o estado do Terraform.
# Isso é crucial para trabalho em equipe e para executar o Terraform em um ambiente de CI/CD.
#
# ANTES DE EXECUTAR 'terraform init':
# 1. Crie um bucket S3 na sua conta AWS. Ex: "meu-projeto-tfstate-12345"
# 2. Crie uma tabela DynamoDB com uma chave primária chamada "LockID" (do tipo String). Ex: "meu-projeto-tf-lock"
# 3. Substitua os valores de "bucket" e "dynamodb_table" abaixo.

terraform {
  backend "s3" {
    bucket         = "meu-eks-terraform-state"
    key            = "postgres/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "meu-eks-terraform-lock-001"
    encrypt        = true
  }
}