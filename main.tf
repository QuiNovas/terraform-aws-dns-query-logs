resource "aws_route53_query_log" "query_log" {
  cloudwatch_log_group_arn = aws_cloudwatch_log_group.query_log.arn
  depends_on               = [aws_cloudwatch_log_resource_policy.route53_query_logging_policy]
  zone_id                  = data.aws_route53_zone.main.zone_id
}

