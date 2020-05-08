# public Subnet
resource "aws_subnet" "public-1" {
  vpc_id     = "${aws_vpc.task3.id}"
  cidr_block = "${var.public_cidr1}"

  #availabilty_zone ="${var.region}${var.az1}"
  #map_public_ip_on_lunch = true
  tags = "${var.tags}"
}

resource "aws_subnet" "public-2" {
  vpc_id     = "${aws_vpc.task3.id}"
  cidr_block = "${var.public_cidr2}"

  #availabilty_zone ="${var.region}${var.az2}"
  #map_public_ip_on_lunch = true
  tags = "${var.tags}"
}

resource "aws_subnet" "public-3" {
  vpc_id     = "${aws_vpc.task3.id}"
  cidr_block = "${var.public_cidr3}"

  #availabilty_zone ="${var.region}${var.az3}"
  #map_public_ip_on_lunch = true
  tags = "${var.tags}"
}

# private subnets
resource "aws_subnet" "private-1" {
  vpc_id     = "${aws_vpc.task3.id}"
  cidr_block = "${var.private_cidr1}"

  #availabilty_zone ="${var.region}${var.az1}"
  # map_public_ip_on_lunch = true
  tags = "${var.tags}"
}

resource "aws_subnet" "private-2" {
  vpc_id     = "${aws_vpc.task3.id}"
  cidr_block = "${var.private_cidr2}"

  #availabilty_zone ="${var.region}${var.az2}"
  # map_public_ip_on_lunch = true
  tags = "${var.tags}"
}

resource "aws_subnet" "private-3" {
  vpc_id     = "${aws_vpc.task3.id}"
  cidr_block = "${var.private_cidr3}"

  #availabilty_zone ="${var.region}${var.az3}"
  #map_public_ip_on_lunch = true
  tags = "${var.tags}"
}
