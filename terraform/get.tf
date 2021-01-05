provider "vault" {
  # It is strongly recommended to configure this provider through the
  # environment variables described above, so that each user can have
  # separate credentials set in the environment.
  #
  # This will default to using $VAULT_ADDR
  # But can be set explicitly
  # address = "https://vault.example.net:8200"
  address = "https://vault.dmilangcp.xyz"
  token = "s.2pRYEJNNnnVCdqiCPZ1d10RQ"
}

data "vault_generic_secret" "vault_data" {
  path = "secret/dev/project/mainproject"
}

output vault_out {
  value       = data.vault_generic_secret.vault_data.data_json
  sensitive   = false
  description = "description"
  depends_on  = []
}
