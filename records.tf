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
  name    = "www.tomohiro.me"
  type    = "A"
  ttl     = "300"
  records = ["103.203.90.2"]
}

resource "aws_route53_record" "keybase" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "_keybase.tomohiro.me"
  type    = "TXT"
  ttl     = "300"
  records = ["keybase-site-verification=Poyjvel7Sxt5__4im0nOGQyhurCNpumUXF5YEt_OkwQ"]
}

resource "aws_route53_record" "znc" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "znc.tomohiro.me"
  type    = "A"
  ttl     = "300"
  records = ["128.199.91.91"]
}
