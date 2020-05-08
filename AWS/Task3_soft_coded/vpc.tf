resource "aws_vpc" "task3" {
  cidr_block = "${var.vpc_cidr}"

  #cidr_block = "10.0.0.0/16"
  tags = "${var.tags}"
}
