resource "aws_subnet" "public-1" {
  vpc_id                  = "${aws_vpc.task3.id}"
  cidr_block              = "10.0.1.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1a"

  tags {
    Name        = "public-1"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created_by  = "Gulshen Jumayeva"
  }
}

resource "aws_subnet" "public-2" {
  vpc_id                  = "${aws_vpc.task3.id}"
  cidr_block              = "10.0.2.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1b"

  tags {
    Name        = "public-2"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created_by  = "Gulshen Jumayeva"
  }
}

resource "aws_subnet" "public-3" {
  vpc_id                  = "${aws_vpc.task3.id}"
  cidr_block              = "10.0.3.0/24"
  map_public_ip_on_launch = "true"
  availability_zone       = "us-east-1c"

  tags {
    Name        = "public-3"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created_by  = "Gulshen Jumayeva"
  }
}
