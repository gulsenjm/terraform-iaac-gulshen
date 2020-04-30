
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
        Name = "private-1"
        Environment = "Dev"
        Department = "IT"
        Team = "Infrastructure"
        Created_by = "Gulshen Jumayeva"
    }
}
