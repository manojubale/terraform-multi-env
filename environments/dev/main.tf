module "ec2" {
  source        = "../../modules/ec2"
  ami_id        = "ami-0e12ffc2dd465f6e4"
  instance_type = "t3.micro"
  key_name      = "terraform-key"
  name          = "dev-ec2"
  env           = "dev"
}

module "s3" {
  source      = "../../modules/s3"
  bucket_name = "my-dev-bucket-18042026"
  env         = "dev"
}

module "dynamodb" {
  source     = "../../modules/dynamodb"
  table_name = "dev-table"
  env        = "dev"
}
