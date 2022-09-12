#   ----------------------------------------------------------------
#   The main configuration file for the aws infrastructure
#   ----------------------------------------------------------------

# Create an s3 bucket for data and model store
module "s3-bucket" {
  source        = "terraform-aws-modules/s3-bucket/aws"
  version       = "3.4.0"
  bucket_prefix = "{{ cookiecutter.s3_bucket }}"
  tags          = local.common_tags
}

