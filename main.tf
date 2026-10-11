data "newrelic_account" "account_lookup" {
  for_each = var.account_lookup

  account_id = each.value.account_id
  name       = each.value.name
  scope      = each.value.scope
}

