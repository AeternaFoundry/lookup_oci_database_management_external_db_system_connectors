variable "database_management_external_db_system_connectors_lookup" {
  description = <<EOT
Map of database_management_external_db_system_connectors_lookup, attributes below
Optional:
    - compartment_id
    - display_name
    - external_db_system_id
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id        = optional(string)
    display_name          = optional(string)
    external_db_system_id = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

