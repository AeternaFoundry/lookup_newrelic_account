output "account_lookup_id" {
  description = "Map of id values across all account_lookup, keyed the same as var.account_lookup"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.id }
}
output "account_lookup_account_id" {
  description = "Map of account_id values across all account_lookup, keyed the same as var.account_lookup"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.account_id }
}
output "account_lookup_name" {
  description = "Map of name values across all account_lookup, keyed the same as var.account_lookup"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.name }
}
output "account_lookup_region" {
  description = "Map of region values across all account_lookup, keyed the same as var.account_lookup"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.region }
}
output "account_lookup_scope" {
  description = "Map of scope values across all account_lookup, keyed the same as var.account_lookup"
  value       = { for k, v in data.newrelic_account.account_lookup : k => v.scope }
}

