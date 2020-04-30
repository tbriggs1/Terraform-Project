variable "vpc_id" {
  description = "pass the vpc id to db tier"
}
variable "name" {
  default = "db-lizzy"
}
variable "db_ami_id" {
  default = "ami-049b0eb3c48e9b0e3"
}
variable "app_security_group_id" {
  description = "the security group for the app"
}
variable "app_subnet_id" {
  description = "the subnet id for the app"
}
variable "cidr_block" {
  default = "10.0.0.0/16"
}
