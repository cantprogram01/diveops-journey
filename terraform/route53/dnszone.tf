resource "aws_route53_zone" "zone-sample" {
    name = "custodio.com"
}

resource "aws_route53_record" "sample-record" {
    zone_id = aws_route53_zone.zone-sample.zone_id
    name = "arwin.custodio.com"
    type = "A"
    ttl = 300
    records = ["${aws_eip.test-eip.public_ip}"]

  
}

output "custodio-servers" {
    value = aws_route53_zone.zone-sample.name_servers
}