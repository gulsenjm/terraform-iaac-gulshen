resource "aws_route_table_association" "public-1-a" {
    subnet_id = "${aws_subnet.public-1.id}"
    route_table_id = "${aws_route_table.public-1.id}"
}
resource "aws_route_table_association" "public-2-a" {
    subnet_id = "${aws_subnet.public-2.id}"
    route_table_id = "${aws_route_table.public-1.id}"
}
resource "aws_route_table_association" "public-3-a" {
    subnet_id = "${aws_subnet.public-3.id}"
    route_table_id = "${aws_route_table.public-1.id}"
}

resource "aws_route_table_association" "private-1-a" {
    subnet_id = "${aws_subnet.private-1.id}"
    route_table_id = "${aws_route_table.private.id}"
}
resource "aws_route_table_association" "private-2-a" {
    subnet_id = "${aws_subnet.private-2.id}"
    route_table_id = "${aws_route_table.private.id}"
}
resource "aws_route_table_association" "private-3-a" {
    subnet_id = "${aws_subnet.private-3.id}"
    route_table_id = "${aws_route_table.private.id}"
}