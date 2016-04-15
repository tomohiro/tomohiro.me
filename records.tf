resource "dnsimple_record" "naked" {
    domain = "tomohiro.me"
    name   = "tomohiro.me"
    value  = "103.203.90.2"
    type   = "A"
    ttl    = 600
}

resource "dnsimple_record" "kloudsecwvrgwwvdrp" {
    domain = "kloudsecwvrgwwvdrp.tomohiro.me"
    name   = "kloudsecwvrgwwvdrp"
    value  = "103.203.90.2"
    type   = "A"
    ttl    = 600
}
