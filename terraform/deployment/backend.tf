terraform {
  backend "s3" {
    region         = "eu-central-1"
    bucket         = "terraform-eks-dev"
    key            = "terraform.tfstate"
    encrypt        = "true"
    dynamodb_table = "terraform-state-lock"
  }
}

resource "aws_rds_cluster" "default" {
  cluster_identifier      = "database_cluster"
  engine                  = "aurora-mysql"
  engine_version          = "5.7.mysql_aurora.2.03.2"
  availability_zones      = ["eu-central-1a", "eu-central-1b", "eu-central-1c"]
  database_name           = "mydb"
  master_username         = "foo"
  master_password         = "bar"
  backup_retention_period = 5
  preferred_backup_window = "07:00-09:00"
}
