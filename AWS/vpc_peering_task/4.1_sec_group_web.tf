resource "aws_security_group" "allow_tls_TASK4_web" {
  name        = "allow_tls2_web"
  description = "Allow TLS inbound traffic"
  vpc_id      = "${aws_vpc.task4_vpc.id}"

  ingress {
    description = "TLS from VPC" #inbound rule HTTPS
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC" #inbound rule SSH
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "TLS from VPC" #inbound rule HTTP
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0             #outbond rule
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = "${var.tags}"
}
