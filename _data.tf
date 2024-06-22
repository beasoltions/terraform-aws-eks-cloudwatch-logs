data "aws_iam_policy" "cloudwatch_logs" {
  arn = "arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy"
}

data "utils_deep_merge_yaml" "values" {
  count = var.enabled ? 1 : 0
  input = compact([
    templatefile("${path.module}/templates/values.yaml", {}),
    var.values
  ])
}