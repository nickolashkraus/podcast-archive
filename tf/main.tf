# -----------------------------------------------------------------------------
# DEPLOY S3 BUCKETS
# This Terraform module deploys S3 buckets that host a public RSS file, MP3
# files, and other assets.
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# REQUIRE A SPECIFIC TERRAFORM VERSION OR HIGHER
# This module has been updated with 0.12 syntax, which means it is no longer
# compatible with any versions below 0.12.
# -----------------------------------------------------------------------------
terraform {
  required_version = ">=0.15"
}

provider "aws" {
  region = "us-east-1"
}

# -----------------------------------------------------------------------------
# S3 BUCKETS
# These S3 buckets contain a public RSS file, MP3 files, and other assets.
# The bucket name must contain only lowercase letters, numbers, periods (.),
# and dashes (-) (i.e. it must be a valid DNS name).
# -----------------------------------------------------------------------------
resource "aws_s3_bucket" "s3" {
  count  = length(var.BUCKETS)
  bucket = var.BUCKETS[count.index]
  acl    = "public-read"

  logging {
    target_bucket = "${var.BUCKETS[count.index]}-logging"
    target_prefix = "s3/"
  }
}

# -----------------------------------------------------------------------------
# S3 BUCKETS (LOGGING)
# These S3 buckets contain access logs for the S3 buckets defined above.
# The bucket name must contain only lowercase letters, numbers, periods (.),
# and dashes (-) (i.e. it must be a valid DNS name).
# -----------------------------------------------------------------------------
resource "aws_s3_bucket" "s3_logging" {
  count  = length(var.BUCKETS)
  bucket = "${var.BUCKETS[count.index]}-logging"
  acl    = "log-delivery-write"
}
