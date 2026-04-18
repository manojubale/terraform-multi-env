module "ec2" {
  source         = "../../modules/ec2"
  ami_id         = "ami-05d2d839d4f73aafb"
  instance_type  = "m7i-flex.large"
  key_name       = "terraform-key"
  name           = "prod-ec2"
  env            = "prod"
}

module "s3" {
  source       = "../../modules/s3"
  bucket_name  = "my-prod-bucket-18042026"
  env          = "prod"
}

module "dynamodb" {
  source      = "../../modules/dynamodb"
  table_name  = "prod-table"
  env         = "prod"
}
