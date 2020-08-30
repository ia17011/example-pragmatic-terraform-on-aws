resource "aws_instance" "example" {
  // amazon Linux
  ami           = "ami-0f9ae750e8274075b"
  instance_type = "t3.micro"

  tags = {
      Name = "example"
  }
}
