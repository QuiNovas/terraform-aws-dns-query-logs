resource "aws_route53_query_log" "query_log" {
  depends_on = ["aws_cloudwatch_log_resource_policy.route53_query_logging_policy"]

  cloudwatch_log_group_arn = "${aws_cloudwatch_log_group.query_log.arn}"
  zone_id                  = "${var.hosted_zone_id}"
}
