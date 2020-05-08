resource "aws_internet_gateway" "gw" {
  vpc_id = "${aws_vpc.task3.id}"

  tags {
    Name        = "gw"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created_by  = "Gulshen Jumayeva"
  }
}
