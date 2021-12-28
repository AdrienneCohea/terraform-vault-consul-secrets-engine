variable "address" {
  type        = string
  description = "Consul cluster endpoint"
}

variable "ca_cert" {
  type        = string
  default     = null
  description = "TLS certificate authority PEM encoded"
}
variable "token" {
  type        = string
  description = "Consul management ACL token"
}
variable "path" {
  type        = string
  default     = "consul"
  description = "Path for the Consul secrets engine endpoint"
}

variable "description" {
  type        = string
  default     = "Generates Consul ACL tokens"
  description = "Description of this instance of the secrets engine"
}

variable "roles" {
  type        = map(list(string))
  description = "A map of Vault roles to create and the associated ACL policies for each role"
}
