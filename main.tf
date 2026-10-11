resource "ovh_cloud_project_database_opensearch_pattern" "cloud_project_database_opensearch_patterns" {
  for_each = var.cloud_project_database_opensearch_patterns

  cluster_id      = each.value.cluster_id
  pattern         = each.value.pattern
  service_name    = each.value.service_name
  max_index_count = each.value.max_index_count

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

