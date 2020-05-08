resource "aws_instance" "web" {
  ami           = "ami-0323c3dd2da7fb37d"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_vpc" "main" output "instance_id" {
  value = "${aws_instance.web.id}"
}

output "instance_arn" {
  value = "${aws_instance.web.arn}"
}

output "instance_iip" {
  value = "${aws_instance.web.public_ip}"
}

output "instance_dn" {
  value = "${aws_instance.web.public_dns}"
}

output "instance_az" {
  value = "${aws_instance.web.availability_zone}"
}

# output "name" {
#     value = "gulshen"
# }


# output "lastname" {
#     value = "jumayeva"
# }


# resource "aws_key_pair" "us-east-1-key2" {
#   key_name   = "gulshens_bastion2"
#   public_key = "${file("~/.ssh/id_rsa.pub")}"
# }


# output "key_name" {
#     value = "${aws_key_pair.us-east-1-key2.key_name}"
# }


# output "actual_key" {
#     value = "${aws_key_pair.us-east-1-key2.public_key}"
# }

