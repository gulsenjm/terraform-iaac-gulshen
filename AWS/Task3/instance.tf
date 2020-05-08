resource "aws_instance" "web" {
  ami               = "ami-0323c3dd2da7fb37d"
  instance_type     = "t2.micro"
  key_name          = "${aws_key_pair.task3-key.key_name}"
  availability_zone = "us-east-1a"
  security_groups   = ["${aws_security_group.task3.name}"]
  user_data         = "${file("script.ssh")}"

  tags = {
    Name        = "Task3"
    Environment = "Dev"
    Department  = "IT"
    Team        = "Infrastructure"
    Created_by  = "Gulshen Jumayeva"
  }
}
