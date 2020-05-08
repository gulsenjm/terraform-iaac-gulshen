resource "aws_route_table" "public-1" {
  vpc_id = "${aws_vpc.task3.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags = "${var.tags}"
}

# Route Table association
resource "aws_route_table_association" "public-1-a" {
  subnet_id      = "${aws_subnet.public-1.id}"
  route_table_id = "${aws_route_table.public-1.id}"
}

resource "aws_route_table_association" "public-2-a" {
  subnet_id      = "${aws_subnet.public-2.id}"
  route_table_id = "${aws_route_table.public-1.id}"
}

resource "aws_route_table_association" "public-3-a" {
  subnet_id      = "${aws_subnet.public-3.id}"
  route_table_id = "${aws_route_table.public-1.id}"
}
