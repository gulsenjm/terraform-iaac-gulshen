resource "aws_eip" "task3-nat" {
vpc      = true
    
    tags {
      Name = "task3-nat"
      Environment = "Dev"
      Department = "IT"
      Team = "Infrastructure"
      Created_by = "Gulshen Jumayeva"
  }
}
resource "aws_nat_gateway" "task3-nat-gw" {
allocation_id = "${aws_eip.task3-nat.id}"
subnet_id = "${aws_subnet.public-1.id}"
depends_on = ["aws_internet_gateway.gw"]
}
