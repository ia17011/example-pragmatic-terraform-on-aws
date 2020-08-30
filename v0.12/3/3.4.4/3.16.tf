resource "aws_instance" "example" {
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "t3.micro"
  // テンプレート変数に埋め込んだ結果を取得する
  user_data     = data.template_file.httpd_user_data.rendered
}
