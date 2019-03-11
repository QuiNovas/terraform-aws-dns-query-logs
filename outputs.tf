output "log_group_arn" {
  value = "${aws_cloudwatch_log_group.query_log.arn}"
}

output "query_log_id" {
  value = "${aws_route53_query_log.query_log.id}"
}
