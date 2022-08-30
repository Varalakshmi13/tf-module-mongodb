locals {
  DNS_NAME         = aws_docdb_cluster.docdb.endpoint
  USERNAME         = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCUMENTDB_MASTER_USERNAME"]
  PASSWORD         = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCUMENTDB_MASTER_PASSWORD"]
}