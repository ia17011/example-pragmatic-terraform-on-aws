data "aws_iam_policy_document" "allow_describe_regions" {
  // これはjsonで指定される
  statement {
    effect    = "Allow"
    actions   = ["ec2:DescribeRegions"] # リージョン一覧を取得する
    resources = ["*"]
  }
}
