resource "aws_vpc" "task3" {
  cidr_block = "10.0.0.0/16"

  tags {
    Name        = "task3"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created_by  = "Gulshen Jumayeva"
  }
}
