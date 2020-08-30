resource "aws_vpc" "example" {
  cidr_block           = "10.0.0.0/16"
  // DNSサーバによる名前解決を有効化
  enable_dns_support   = true
  // VPC内のリソースにパブリックDNSホスト名を自動的に割り当てるためのenable_dns_hostnamesをtrueにする
  enable_dns_hostnames = true

  tags = {
    Name = "example"
  }
}
