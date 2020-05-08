resource "aws_instance" "task3" {
  ami             = "ami-0323c3dd2da7fb37d"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.task3-key.key_name}"
  security_groups = ["${aws_security_group.task3.name}"]
  user_data       = "${file("user_data.sh")}"
  tags            = "${var.tags}"
}
