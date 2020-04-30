resource "aws_subnet" "private-1" {
    vpc_id = "${aws_vpc.task3.id}"
    cidr_block = "10.0.4.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1a"

    tags {
        Name = "private-1"
        Environment = "Dev"
        Department = "IT"
        Team = "Infrastructure"
        Created_by = "Gulshen Jumayeva"
    }
}
resource "aws_subnet" "private-2" {
    vpc_id = "${aws_vpc.task3.id}"
    cidr_block = "10.0.5.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1b"

    tags {
        Name = "private-2"
        Environment = "Dev"
        Department = "IT"
        Team = "Infrastructure"
        Created_by = "Gulshen Jumayeva"
    }
}
resource "aws_subnet" "private-3" {
    vpc_id = "${aws_vpc.task3.id}"
    cidr_block = "10.0.6.0/24"
    map_public_ip_on_launch = "false"
    availability_zone = "us-east-1c"

    tags {
        Name = "private-3"
        Environment = "Dev"
        Department = "IT"
        Team = "Infrastructure"
        Created_by = "Gulshen Jumayeva"
    }
}
