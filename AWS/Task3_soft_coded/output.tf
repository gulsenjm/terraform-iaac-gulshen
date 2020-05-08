output "key_pair" {
  value = "${aws_key_pair.task3-key.key_name}"
}

output "instance" {
  value = [
    "${aws_instance.task3.id}",
    "${aws_instance.task3.key_name}",
    "${aws_instance.task3.public_dns}",
  ]
}

output "sec_group" {
  value = [
    "${aws_security_group.task3.name}",
    "${aws_security_group.task3.vpc_id}",
    "${aws_security_group.task3.egress}",
  ]
}

output "vpc_cidr_block " {
  value = "${aws_vpc.task3.cidr_block}"
}

output "public_subnet " {
  value = [
    "${aws_subnet.public-1.id}   ${aws_subnet.public-1.vpc_id}   ${aws_subnet.public-1.cidr_block}",
    "${aws_subnet.public-2.id}   ${aws_subnet.public-2.vpc_id}   ${aws_subnet.public-2.cidr_block}",
    "${aws_subnet.public-3.id}   ${aws_subnet.public-3.vpc_id}   ${aws_subnet.public-3.cidr_block}",
  ]
}

output "private_subnet " {
  value = [
    "${aws_subnet.private-1.id}   ${aws_subnet.private-1.vpc_id}   ${aws_subnet.private-1.cidr_block}",
    "${aws_subnet.private-2.id}   ${aws_subnet.private-2.vpc_id}   ${aws_subnet.private-2.cidr_block}",
    "${aws_subnet.private-3.id}   ${aws_subnet.private-3.vpc_id}   ${aws_subnet.private-3.cidr_block}",
  ]
}

output "aws_internet_gw_id " {
  value = "${aws_internet_gateway.gw.id}"
}

output "aws_IG_route_table_id " {
  value = [
    "${aws_route_table.public-1.id}",
    "${aws_route_table.private.id}",
  ]
}

output "allocation_ip " {
  value = "${aws_eip.task3-nat-gw.id}"
}

output "aws_route_table_association_public " {
  value = [
    "${aws_route_table_association.public-1-a.id}",
    "${aws_route_table_association.public-2-a.id}",
    "${aws_route_table_association.public-3-a.id}",
  ]
}

output "aws_route_table_association_private" {
  value = [
    "${aws_route_table_association.private-1-a.id}",
    "${aws_route_table_association.private-2-a.id}",
    "${aws_route_table_association.private-3-a.id}",
  ]
}
