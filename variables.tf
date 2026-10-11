variable "load_balancer_pool_lookup" {
  description = <<EOT
Map of load_balancer_pool_lookup, attributes below
Optional:
    - account_id
    - filter
    - pool_id
EOT

  type = map(object({
    account_id = optional(string)
    filter = optional(object({
      monitor = optional(string)
    }))
    pool_id = optional(string)
  }))
}

