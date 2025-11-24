resource "aws_s3_bucket" "s3_backend" {
  bucket = "an-terraform-tfstate"
}

resource "aws_dynamodb_table" "tf_lock" {
  name         = "an-terraform-tfstate-lock"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
