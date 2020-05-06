resource "aws_vpc" "jenkins" {
  
  cidr_block = "${var.vpc_cidr}"
  #cidr_block = "10.0.0.0/16"
  tags ="${var.tags}"
}