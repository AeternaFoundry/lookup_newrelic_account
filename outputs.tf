output "account_lookup_id" {
  description = "Map of id values across all account_lookup, keyed the same as var.account_lookup except keys with no id are omitted"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "account_lookup_account_id" {
  description = "Map of account_id values across all account_lookup, keyed the same as var.account_lookup except keys with no account_id are omitted"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.account_id if v.account_id != null }
}
output "account_lookup_name" {
  description = "Map of name values across all account_lookup, keyed the same as var.account_lookup except keys with no name are omitted"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "account_lookup_region" {
  description = "Map of region values across all account_lookup, keyed the same as var.account_lookup except keys with no region are omitted"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.region if v.region != null && length(v.region) > 0 }
}
output "account_lookup_scope" {
  description = "Map of scope values across all account_lookup, keyed the same as var.account_lookup except keys with no scope are omitted"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.scope if v.scope != null && length(v.scope) > 0 }
}

