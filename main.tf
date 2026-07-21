##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

data "github_actions_organization_public_key" "public_key" {}

data "sodium_encrypted_item" "org" {
  for_each          = { for secret in var.secrets : secret.name => secret }
  public_key_base64 = data.github_actions_organization_public_key.public_key.key
  content_base64    = base64encode(each.value.value)
}

data "sodium_encrypted_item" "dependabot" {
  for_each          = { for secret in var.dependabot_secrets : secret.name => secret }
  public_key_base64 = data.github_actions_organization_public_key.public_key.key
  content_base64    = base64encode(each.value.value)
}

resource "github_actions_organization_secret" "org" {
  for_each        = { for secret in var.secrets : secret.name => secret }
  secret_name     = each.value.name
  visibility      = try(each.value.visibility, "private")
  value_encrypted = data.sodium_encrypted_item.org[each.key].encrypted_value_base64
}

resource "github_actions_organization_variable" "org" {
  for_each      = { for var in var.variables : var.name => var }
  variable_name = each.value.name
  value         = each.value.value
  visibility    = try(each.value.visibility, "private")
}

resource "github_dependabot_organization_secret" "org" {
  for_each        = { for secret in var.dependabot_secrets : secret.name => secret }
  secret_name     = each.value.name
  visibility      = try(each.value.visibility, "private")
  value_encrypted = data.sodium_encrypted_item.dependabot[each.key].encrypted_value_base64
}