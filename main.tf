resource "vault_consul_secret_backend" "endpoint" {
  path        = var.path
  ca_cert     = var.ca_cert
  description = var.description
  address     = var.address
  token       = var.token
}

resource "vault_consul_secret_backend_role" "roles" {
  for_each = var.roles
  name     = each.key
  policies = each.value
  backend  = vault_consul_secret_backend.endpoint.path
}
