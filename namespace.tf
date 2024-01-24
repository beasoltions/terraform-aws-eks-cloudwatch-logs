data "kubernetes_all_namespaces" "allns" {}

resource "kubernetes_namespace" "cloudwatch_logs" {
  count = (contains(data.kubernetes_all_namespaces.allns.namespaces, var.namespace)) ? 0 : 1
  metadata {
    name = var.namespace
  }
}
