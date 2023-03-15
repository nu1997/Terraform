module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "3.8.2"

  bucket = "s3-bucket-cfn-test-jiwoopark"
  acl    = "private"

  versioning = {
    enabled = false
  }

}