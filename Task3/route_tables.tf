
resource "aws_route_table" "public-1" {
    vpc_id = "${aws_vpc.task3.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.gw.id}"
    }

    tags {
        Name = "public-1"
        Environment = "Dev"
        Department = "IT"
        Team = "Infrastructure"
        Created_by = "Gulshen Jumayeva"
    }
}

resource "aws_route_table" "private" {
    vpc_id = "${aws_vpc.task3.id}"
    route {
        cidr_block = "0.0.0.0/0"
        nat_gateway_id = "${aws_nat_gateway.task3-nat-gw.id}"
    }

    tags {
        Name = "private"
        Environment = "Dev"
        Department = "IT"
        Team = "Infrastructure"
        Created_by = "Gulshen Jumayeva"
    }
}

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