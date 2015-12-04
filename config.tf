variable "atlas_token" {}
variable "dnsimple_token" {}
variable "dnsimple_email" {}

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
