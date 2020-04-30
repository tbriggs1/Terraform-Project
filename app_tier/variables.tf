variable "vpc_id" {
  description = "pass the vpc id to app tier"
}
variable "name" {
  default = "app-lizzy"
}
variable "app_ami_id" {
  default = "ami-09f0478228932d57d"
}
variable "db_instance" {
  description = "this is the db instance"
}
variable "ig_id" {
  default = "this is the internet gateway"
}
