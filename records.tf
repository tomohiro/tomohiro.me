resource "aws_route53_zone" "main" {
  name = "tomohiro.me"
}

resource "aws_route53_record" "naked" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "tomohiro.me"
  type    = "A"
  ttl     = "300"
  records = ["103.203.90.2"]
}

resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "www"
  type    = "A"
  ttl     = "300"
  records = ["103.203.90.2"]
}

resource "dnsimple_record" "naked" {
  domain = "tomohiro.me"
  name   = "@"
  value  = "103.203.90.2"
  type   = "A"
  ttl    = 600
}

resource "dnsimple_record" "www" {
  domain = "tomohiro.me"
  name   = "www"
  value  = "103.203.90.2"
  type   = "A"
  ttl    = 600
}
