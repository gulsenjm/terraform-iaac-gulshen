provider "aws" {
  region  = "us-east-1"
  version = "2.59"
}

// create key 

resource "aws_key_pair" "us-east-1-key-output" {
  key_name   = "gulshens_bastion_output"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

// create instance

resource "aws_instance" "web-output" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"
}

// create sec group

// create route53

// outputs everything

output "key_pair" {
  value = "${aws_key_pair.us-east-1-key-output.key_name}"
}

output "instance_id" {
  value = "${aws_instance.web-output.id}"
}

output "instance_arn" {
  value = "${aws_instance.web-output.arn}"
}

output "my_message" {
  value = "Please login and change passwd"
}
