resource "aws_route_table" "private" {
  vpc_id = "${aws_vpc.jenkins.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.gw.id}"
  }

  tags ="${var.tags}"
}

# Route Table association
resource "aws_route_table_association" "private-1-a" {
  subnet_id      = "${aws_subnet.private-1.id}"
  route_table_id = "${aws_route_table.private.id}"

 
}

resource "aws_route_table_association" "private-2-a" {
  subnet_id      = "${aws_subnet.private-2.id}"
  route_table_id = "${aws_route_table.private.id}"

  
}

resource "aws_route_table_association" "private-3-a" {
  subnet_id      = "${aws_subnet.private-3.id}"
  route_table_id = "${aws_route_table.private.id}"


}