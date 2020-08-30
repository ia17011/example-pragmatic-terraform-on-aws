resource "aws_route" "public" {
  route_table_id         = aws_route_table.public.id
  gateway_id             = aws_internet_gateway.example.id
  // vpc以外への通信を，インターネットゲートウェイ経由でインターネットへ流すためのデフォルトルートを指定
  destination_cidr_block = "0.0.0.0/0"
}
