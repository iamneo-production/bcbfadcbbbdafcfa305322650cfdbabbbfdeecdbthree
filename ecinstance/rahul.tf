terraform {
  required_providers {
      aws = {
          source = "hashicorp/aws"
        }
    }
}
provider "aws" {
    region = "ap-southeast-1"
    access_key = "AKIA2SACZ4LTKUVFUEID"
    secret_key = "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"
}
resource "aws_instance" "rahulsingh" {
    ami = "ami-0ed99df77a82560e6"
    instance_type = "t2.micro"
}
output "public_ip"{
    value = aws_instance.rahulsingh.public_ip
}