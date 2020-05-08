resource "aws_key_pair" "task3-key" {
  key_name   = "${var.key_name}"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
  tags       = "${var.tags}"
}
