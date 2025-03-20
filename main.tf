# test

provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0aab355e0bfa1fbb1" # Amazon Linux 2023 AMI ID for ap-northeast-1
  instance_type = "t3.micro"

  tags = {
    Name = "example-instance"
  }
}
