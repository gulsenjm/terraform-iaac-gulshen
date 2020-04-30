output "Internet_gateway" {
  value       = "${aws_internet_gateway.gw.id}"
}

output "Instance" {
  value       = "${aws_instance.web.id}"
}

output "Key_pair" {
  value       = "${aws_key_pair.task3-key.key_name}"
}

output "Nat_gateway" {
  value       = "${aws_nat_gateway.task3-nat-gw.id}"
}

output "Private_subnet1" {
  value       = "${aws_subnet.private-1.id}"
}

output "Private_subnet2" {
  value       = "${aws_subnet.private-2.id}"
}

output "Private_subnet3" {
  value       = "${aws_subnet.private-3.id}"
}


output "Public_subnet1" {
  value       = "${aws_subnet.public-1.id}"
}

output "Public_subnet2" {
  value       = "${aws_subnet.public-2.id}"
}

output "Public_subnet3" {
  value       = "${aws_subnet.public-3.id}"
}


output "Public_Route_tables" {
  value       = "${aws_route_table.public-1.id}"
}

output "Private_Route_tables" {
  value       = "${aws_route_table.private.id}"
}

output "Route_53" {
  value       = "${aws_route53_record.www.id}"
}

output "Security_groups" {
  value       = "${aws_security_group.task3.id}"
}

output "Vpc" {
  value       = "${aws_vpc.task3.cidr_block}"
}