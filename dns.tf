# https://www.terraform.io/docs/providers/aws/r/route53_record.html

resource "aws_route53_zone" "main" {
  name = "tomohiro.me"
}

resource "aws_route53_record" "naked" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "tomohiro.me"
  type    = "A"

  alias {
    name    = "${aws_cloudfront_distribution.web.domain_name}"
    zone_id = "${aws_cloudfront_distribution.web.hosted_zone_id}"

    evaluate_target_health = true
  }
}

resource "aws_route53_record" "www" {
  zone_id = "${aws_route53_zone.main.zone_id}"
  name    = "www"
  type    = "A"

  alias {
    name    = "${aws_cloudfront_distribution.web.domain_name}"
    zone_id = "${aws_cloudfront_distribution.web.hosted_zone_id}"

    evaluate_target_health = true
  }
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
  name    = "znc"
  type    = "A"
  ttl     = "300"
  records = ["128.199.91.91"]
}
