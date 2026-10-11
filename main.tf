data "cloudflare_load_balancer_pool" "load_balancer_pool_lookup" {
  for_each = var.load_balancer_pool_lookup

  account_id = each.value.account_id
  filter     = each.value.filter
  pool_id    = each.value.pool_id
}

