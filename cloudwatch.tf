resource "aws_cloudwatch_log_resource_policy" "route53_query_logging_policy" {
  policy_document = "${data.aws_iam_policy_document.route53_query_logs.json}"
  policy_name     = "route53-query-logging-policy"
}

resource "aws_cloudwatch_log_group" "query_log" {
  name              = "/aws/route53/${var.domain_name}"
  retention_in_days = "${var.log_retention_duration}"
}
