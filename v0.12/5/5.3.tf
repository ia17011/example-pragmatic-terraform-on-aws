resource "aws_iam_policy" "example" {
  name   = "example"
  // ここはjsonを指定するのか
  policy = data.aws_iam_policy_document.allow_describe_regions.json
}
