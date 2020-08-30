resource "aws_s3_bucket" "private" {
  // 全世界で一意
  bucket = "private-pragmatic-terraform-on-aws"

  // オブジェクトを変更・削除しても，いつでも前のバージョンに復元できる => 有益
  versioning {
    enabled = true
  }
  
  // 暗号化
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
