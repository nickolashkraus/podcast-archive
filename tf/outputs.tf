# -----------------------------------------------------------------------------
# OUTPUTS
# -----------------------------------------------------------------------------
output "bucket_domain_names" {
  value       = aws_s3_bucket.s3.*.bucket_domain_name
  description = <<-EOF
  The public domain name of each S3 bucket. Format: <bucket>.s3.amazonaws.com
  EOF
}
