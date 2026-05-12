##
# (c) 2021-2026
#     Cloud Ops Works LLC - https://cloudops.works/
#     Find us on:
#       GitHub: https://github.com/cloudopsworks
#       WebSite: https://cloudops.works
#     Distributed Under Apache v2.0 License
#

# List of GitHub Actions organization-level variables.
# Each object accepts:
#   name:       (Required) Variable name — must be unique within the organization.
#   value:      (Required) Plaintext variable value.
#   visibility: (Optional) Which repositories can access this variable.
#               Valid values: "private" | "selected" | "all". Default: "private".
variable "variables" {
  description = "List of GitHub Actions organization-level variables to create. Each entry requires name and value; visibility defaults to 'private'."
  type        = any
  default     = []
}

# List of GitHub Actions organization-level secrets.
# Values are encrypted client-side via libsodium before upload to the GitHub API.
# Each object accepts:
#   name:       (Required) Secret name — must be unique within the organization.
#   value:      (Required) Plaintext secret value; encrypted via libsodium before upload.
#   visibility: (Optional) Which repositories can access this secret.
#               Valid values: "private" | "selected" | "all". Default: "private".
variable "secrets" {
  description = "List of GitHub Actions organization-level secrets to create. Values are encrypted client-side via libsodium. Each entry requires name and value; visibility defaults to 'private'."
  type        = any
  default     = []
}
