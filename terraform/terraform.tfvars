# Exemplo de arquivo de variáveis.
# Copie este arquivo para terraform.tfvars e preencha com seus valores.
# O arquivo terraform.tfvars NÃO deve ser enviado para o controle de versão (git).

# ID da VPC onde o banco de dados e a aplicação estão.
vpc_id = "vpc-053941999ce1ffcff"

# Lista de IDs de sub-redes PRIVADAS onde o banco de dados será colocado.
private_subnet_ids = ["subnet-05e37ce1e25a158da", "subnet-0485c37eb1e73f581"]

# ID do Security Group da sua aplicação. O banco de dados permitirá conexões de entrada a partir deste grupo na porta 5432.
app_security_group_id = "sg-05a37080356f77db9"
