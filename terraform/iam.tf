resource "aws_iam_service_linked_role" "rds_slr" {
  aws_service_name = "rds.amazonaws.com"
  description      = "Service-Linked Role para o Amazon RDS"
}