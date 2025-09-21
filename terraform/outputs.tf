output "db_instance_address" {
  description = "O endereço da instância do banco de dados."
  value       = aws_db_instance.default.address
}

output "db_instance_port" {
  description = "A porta da instância do banco de dados."
  value       = aws_db_instance.default.port
}

output "db_credentials_secret_arn" {
  description = "O ARN do segredo no Secrets Manager que contém as credenciais do banco de dados."
  # O master_user_secret é uma lista, então pegamos o primeiro (e único) elemento.
  value       = aws_db_instance.default.master_user_secret[0].secret_arn
  sensitive   = true
}