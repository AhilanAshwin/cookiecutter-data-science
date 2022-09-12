#   ----------------------------------------------------------------
#   The desired outputs after `terraform apply`
#   ----------------------------------------------------------------

output "s3_bucket_name" {
  description = "The domain name of the s3 bucket"
  value       = module.s3-bucket.s3_bucket_id
}
