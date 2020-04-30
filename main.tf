provider "aws" {
  region = "eu-west-1"
}

# create a vpc
resource "aws_vpc" "app" {
  cidr_block = "${var.cidr_block}"

  tags = {
    Name = "${var.name}"
  }
}

# internet gateway
resource "aws_internet_gateway" "app" {
  vpc_id = "${aws_vpc.app.id}"

  tags = {
    Name = "${var.name}"
  }
}

# APP
# create a subnet
module "app" {
  source      = "./app_tier"
  vpc_id      = "${aws_vpc.app.id}"
  db_instance = "${module.db.db_instance}"
  name        = "${var.name}"
  ig_id       = "${aws_internet_gateway.app.id}"
}
# DB
# create a subnet
module "db" {
  source                = "./db_tier"
  vpc_id                = "${aws_vpc.app.id}"
  app_security_group_id = "${module.app.security_group_id}"
  app_subnet_id         = "${module.app.subnet_id}"
  name                  = "${var.name}"
}
