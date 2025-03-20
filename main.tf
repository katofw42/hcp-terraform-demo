provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0c1a7f89451184c8b" # Replace with a valid AMI ID for ap-northeast-1
  instance_type = "t3.micro"

  tags = {
    Name = "example-instance"
  }
}
