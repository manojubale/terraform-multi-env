terraform {
  backend "s3" {
    bucket         = "my-tf-test1-bucket-bd-17042026"
    key            = "stg/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "my-db-table"
    encrypt        = true
  }
}
