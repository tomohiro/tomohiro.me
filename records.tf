resource "dnsimple_record" "alias" {
    domain = "tomohiro.me"
    name   = "@"
    value  = "tomohiro.github.io"
    type   = "ALIAS"
    ttl    = 600
}
