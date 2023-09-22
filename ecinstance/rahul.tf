terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "ap-northeast-1"
    access_key = "AKIA2SACZ4LTDR4WR6WI"
    secret_key = "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"
}
resource "aws_instance" "exam" {
    ami = "ami-0ed99df77a82560e6"
    instance_type = "t2.micro"
}
output "public_ip"{
    value = aws_instance.exam.public_ip
}