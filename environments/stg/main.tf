module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0e12ffc2dd465f6e4"
  instance_type = "t3.micro"
  key_name      = "terraform-key"
  name          = "stg-ec2"
  env           = "stg"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "my-stg-bucket-18042026"
  env         = "stg"
}

module "dynamodb" {
  source     = "../../modules/dynamodb"
  table_name = "stg-table"
  env        = "stg"
}
