variable "account_lookup" {
  description = <<EOT
Map of account_lookup, attributes below
Optional:
    - account_id
    - name
    - scope
EOT

  type = map(object({
    account_id = optional(number)
    name       = optional(string)
    scope      = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.account_lookup : (
        v.scope == null || (contains([for v in ["global", "in_region"] : lower(v)], lower(v.scope)))
      )
    ])
    error_message = "must be one of: \"global\", \"in_region\""
  }
}

