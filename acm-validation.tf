resource "aws_acm_certificate_validation" "general" {
  certificate_arn = var.certificate_arn
  validation_record_fqdns = var.validation_record_fqdns #[for record in aws_route53_record.example : record.fqdn]
}