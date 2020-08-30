data "aws_iam_policy_document" "ec2_assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      // このIAMロールはEC2にのみ関連付けできる
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}
