resource "aws_s3_bucket" "bucket1" {
	bucket = "jayaci-first-st-bucket"
}

resource "aws_s3_bucket_acl" "example_bucket_acl" {
bucket = aws_s3_bucket.bucket1.id
acl = "private"
}

provider "aws" {
    access_key=var.accesskey
    secret_key=var.secretKey
  region = "eu-west-1"
}

variable "accesskey"{
    default="AKIAZTIMJ7JHNRVWPZ3Y"

}

variable "secretkey"{

    default="5/s2g7Mlz+W9Ksm1o5ZoEqvUmooF+LVGrYJMd0oM"
}
