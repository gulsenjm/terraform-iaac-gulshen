resource "aws_eip" "jenkins-nat-gw" {
  vpc      = true
  tags = "${var.tags}"
}

resource "aws_nat_gateway" "jenkins-nat" {
  allocation_id = "${aws_eip.jenkins-nat-gw.id}"
  subnet_id     = "${aws_subnet.public-1.id}"
  tags = "${var.tags}"
}