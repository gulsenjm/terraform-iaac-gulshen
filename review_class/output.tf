output "Public IP" {
  value       = "${aws_instance.review_class_web.*.public_ip}"
}

output "Public DNS" {
  value       = "${aws_instance.review_class_web.*.public_dns}"
}

output "ID" {
  value       = "${aws_instance.review_class_web.*.id}"
}
