provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "5d466eaf3bab7490c411116b37428b715d95d13e"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2024-05-08 16:56:12"
    git_last_modified_by = "19670612+theendofline@users.noreply.github.com"
    git_modifiers        = "19670612+theendofline"
    git_org              = "theendofline"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "540b3ec0-a791-4dc3-af50-e31c7f6189df"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

