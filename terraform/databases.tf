# Configuração do Provider PostgreSQL
# Ele se conecta ao RDS recém-criado para gerenciar bancos de dados lógicos.
provider "postgresql" {
  host            = aws_db_instance.default.address
  port            = 5432
  database        = "postgres"
  username        = aws_db_instance.default.username
  password        = aws_db_instance.default.password # Nota: Em produção, usar Data Sources para buscar senha segura
  superuser       = false
  sslmode         = "require"
  connect_timeout = 15
}

# Criação dos Bancos de Dados Lógicos
resource "postgresql_database" "databases" {
  for_each = var.create_databases ? var.db_names : []

  name              = each.key
  owner             = "postgresadmin"
  connection_limit  = -1
  allow_connections = true
}
