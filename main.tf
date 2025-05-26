provider "aws" {
 region     = var.aws_region
 access_key = "AKIAZ7SALFO4SYQ2J6H"
 secret_key = "pXaAGbixOcqBXkb3sHi/rzon5lDeDDqc+w4m9Qd"
}
resource "aws_s3_bucket" "my_bucket" {
 bucket = var.bucket_name
 acl    = "private"
}
