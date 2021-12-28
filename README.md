# terraform-vault-consul-secrets-engine
Enable Consul secrets engine

## Example usage

```terraform
module "consul_secrets_engine" {
  source = "AdrienneCohea/consul-secrets-engine/vault"

  ca_cert = file("/path/to/ca.pem")
  address = "https://127.0.0.1:8501"
  token   = "<Consul management token>"

  roles = {
    "nomad-server" = ["nomad-server"]
    "nomad-client" = ["nomad-client"]
  }
}

```
