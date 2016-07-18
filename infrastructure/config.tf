variable "atlas_token" {}

variable "aws_access_key_id" {}

variable "aws_secret_access_key" {}

variable "aws_region" {}

atlas {
  name = "tomohiro/tomohiro.me"
}

provider "atlas" {
  token = "${var.atlas_token}"
}

provider "aws" {
  access_key = "${var.aws_access_key_id}"
  secret_key = "${var.aws_secret_access_key}"
  region     = "${var.aws_region}"
}
