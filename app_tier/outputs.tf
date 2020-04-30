output security_group_id {
  description = "the id of the app security group"
  value       = "${aws_security_group.app.id}"
}

output subnet_id {
  description = "the id of the subnet"
  value       = "${aws_subnet.app.id}"
}
