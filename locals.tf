locals {
  DNS_NAME = "mongodb-${var.ENV}.${data.terraform_remote_state.vpc.outputs.HOSTEDZONE_PRIVATE_ZONE}"
  USERNAME         = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCUMENTDB_MASTER_USERNAME"]
  PASSWORD         = jsondecode(data.aws_secretsmanager_secret_version.secrets.secret_string)["DOCUMENTDB_MASTER_PASSWORD"]
}