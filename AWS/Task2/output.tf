output "instance_id" {
  value = "${aws_instance.web.id}"
}

output "instance_key_name" {
  value = "${aws_key_pair.us-east-1-key.key_name}"
}

output "instance_ip" {
  value = "${aws_instance.web.public_ip}"
}

output "instance_arn" {
  value = "${aws_instance.web.arn}"
}

output "instance_dn" {
  value = "${aws_instance.web.public_dns}"
}

output "my_message" {
  value = "Login to wordpress and reset passwd"
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

