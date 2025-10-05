# Exemplo de arquivo de variáveis.
# Copie este arquivo para terraform.tfvars e preencha com seus valores.
# O arquivo terraform.tfvars NÃO deve ser enviado para o controle de versão (git).

# ID da VPC onde o banco de dados e a aplicação estão.
vpc_id = "vpc-8ce247f1"

# Lista de IDs de sub-redes PRIVADAS onde o banco de dados será colocado.
private_subnet_ids = ["subnet-c3f47da5", "subnet-8a652684"]

# ID do Security Group da sua aplicação. O banco de dados permitirá conexões de entrada a partir deste grupo na porta 5432.
app_security_group_id = "sg-07ad9c59f20817a81"

# Nome do banco de dados a ser criado na instância RDS.
db_name = "fastdb"
