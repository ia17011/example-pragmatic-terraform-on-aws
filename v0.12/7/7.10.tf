resource "aws_nat_gateway" "example" {
  allocation_id = aws_eip.nat_gateway.id
  subnet_id     = aws_subnet.public.id
  // 依存関係の明示
  // EIPやNATゲートウェイは，暗黙的にインターネットゲートウェイに依存している
  // depends_onを書いておくことで，インターネットゲートウェイ作成後にEIPやNATゲートウェイを作成するよう保証できる
  depends_on    = [aws_internet_gateway.example]
}
