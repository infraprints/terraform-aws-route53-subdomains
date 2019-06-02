resource "aws_route53_zone" "default" {
  name = var.name
}

resource "aws_route53_record" "external" {
  count   = length(var.hosted_zones)
  zone_id = aws_route53_zone.default.zone_id
  name    = var.hosted_zones[count.index]["alias"]
  type    = "NS"
  records = [var.hosted_zones[count.index]["nameservers"]]
}

