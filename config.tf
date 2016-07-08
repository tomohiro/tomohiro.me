variable "atlas_token" {}

variable "dnsimple_token" {}

variable "dnsimple_email" {}

variable "aws_access_key_id" {}

variable "aws_secret_access_key" {}

variable "aws_region" {}

atlas {
  name = "tomohiro/tomohiro.me"
}

provider "atlas" {
  token = "${var.atlas_token}"
}

provider "dnsimple" {
  token = "${var.dnsimple_token}"
  email = "${var.dnsimple_email}"
}

provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.aws_region}"
}
