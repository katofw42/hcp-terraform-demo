provider "aws" {
  region = "us-west-2"
}

data "aws_ssm_parameter" "amazon_linux_2023_ami" {
  name = "/aws/service/ami-amazon-linux-latest/al2023-ami-kernel-default-x86_64"
}

resource "aws_instance" "amazon_linux_2023" {
  ami           = data.aws_ssm_parameter.amazon_linux_2023_ami.value
  instance_type = "t3.small"

#   tags = {
#    Name = "frontend-server"
#  }
}
