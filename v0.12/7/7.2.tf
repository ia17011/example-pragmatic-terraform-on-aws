// vpcを分割して，サブネットを作る
// パブリックサブネット
resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.example.id
  // vpcは/16, サブネットは/24単位にするとよい
  cidr_block              = "10.0.0.0/24"
  // パブリックIPアドレスを自動割当
  map_public_ip_on_launch = true
  // AZ指定
  availability_zone       = "ap-northeast-1a"
}
