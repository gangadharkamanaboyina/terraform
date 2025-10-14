resource "aws_route53_record" "gangu" {
  zone_id = var.zone_id
  count = length(var.instance_name)
  name    = "${var.instance_name[count.index]}.${var.domain_name}"
  type    = "A"
  ttl     = 20
  records = [aws_instance.terraform[count.index].private_ip]
  allow_overwrite  = true
}