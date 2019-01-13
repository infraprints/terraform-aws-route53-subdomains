resource "aws_route53_zone" "default" {
  name = "${var.name}"
}

resource "aws_route53_record" "external" {
  count   = "${length(var.hosted_zones)}"
  zone_id = "${aws_route53_zone.default.zone_id}"
  name    = "${lookup(var.hosted_zones[count.index], "alias")}"
  type    = "NS"
  records = ["${lookup(var.hosted_zones[count.index], "nameservers")}"]
}
