provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "b523cd2f-7692-41c1-a884-4e12f08cbb83"
    git_commit           = "407c65e430913542e439a6a034a9b2fe783ffdf8"
    git_file             = "code/s3.tf"
    git_last_modified_at = "2024-05-08 16:34:21"
    git_last_modified_by = "19670612+theendofline@users.noreply.github.com"
    git_modifiers        = "19670612+theendofline"
    git_org              = "theendofline"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

