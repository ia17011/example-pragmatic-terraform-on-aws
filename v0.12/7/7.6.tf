// デフォルトルートの利用はアンチパターンなので，関連付けをしっかり行う
resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}
