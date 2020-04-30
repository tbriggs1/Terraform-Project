output db_instance {
  description = "this is the db aws instance"
  value       = "${aws_instance.db.id}"
}
