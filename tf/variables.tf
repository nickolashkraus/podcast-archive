# -----------------------------------------------------------------------------
# REQUIRED VARIABLES
# -----------------------------------------------------------------------------
variable "BUCKET" {
  type        = list(string)
  description = <<-EOF
  The name of each S3 bucket.
  EOF
}
