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
