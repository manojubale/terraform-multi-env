terraform {
  backend "s3" {
    bucket         = "my-tf-test1-bucket-bd-17042026"
    key            = "prod/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-db-table"
    encrypt        = true
  }
}
