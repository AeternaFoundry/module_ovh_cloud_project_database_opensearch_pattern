variable "cloud_project_database_opensearch_patterns" {
  description = <<EOT
Map of cloud_project_database_opensearch_patterns, attributes below
Required:
    - cluster_id
    - pattern
    - service_name
Optional:
    - max_index_count
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    cluster_id      = string
    pattern         = string
    service_name    = string
    max_index_count = optional(number)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

