provider "aws" {
  region  = "us-east-2"
  version = "2.59"
}

terraform {
  required_version = "~> 0.11.14"
}

resource "aws_key_pair" "gulshen" {
  key_name   = "gulshens_bastion"
  public_key = "${file("~/.ssh/id_rsa.pub")}"
}

resource "aws_security_group" "review_class" {
  name        = "review_class"
  description = "review_class"

  ingress {
    description = "review_class"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "review_class"
    from_port   = 53
    to_port     = 53
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "review_class"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "review_class"
    from_port   = 23
    to_port     = 23
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "review_class"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "review_class_web" {
  count           = 3                                           # it will create 3 same instances
  ami             = "ami-0f7919c33c90f5b58"
  instance_type   = "t2.micro"
  key_name        = "${aws_key_pair.gulshen.key_name}"
  security_groups = ["${aws_security_group.review_class.name}"]
  user_data       = "${file("wordpress.sh")}"
}

resource "aws_route53_record" "www" {
  zone_id = "Z049827916KCYTT0YP07G"
  name    = "www.real.indianagulu.com"
  type    = "A"
  ttl     = "5"

  records = [
    "${aws_instance.review_class_web.*.public_ip}",
  ]
}

#order can change it doesn't matter, it will work

