resource "aws_eip" "task3-nat-gw" {
  vpc  = true
  tags = "${var.tags}"
}

resource "aws_nat_gateway" "task3-nat" {
  allocation_id = "${aws_eip.task3-nat-gw.id}"
  subnet_id     = "${aws_subnet.public-1.id}"
  tags          = "${var.tags}"
}
