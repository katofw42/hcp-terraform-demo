# test

provider "aws" {
  region = "us-west-2" # Updated region
}

resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Updated AMI ID
  instance_type = "t3.micro"

  tags = {
    Name = "example-instance"
  }
}
