resource "aws_s3_bucket" "alb_log" {
  bucket = "alb-log-pragmatic-terraform-on-aws"

  // 180日経過したファイルを自動的に削除し，無限にファイルが増えないようにする
  lifecycle_rule {
    enabled = true

    expiration {
      days = "180"
    }
  }
}
