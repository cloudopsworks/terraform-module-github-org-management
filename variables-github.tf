##
# (c) 2024 - Cloud Ops Works LLC - https://cloudops.works/
#            On GitHub: https://github.com/cloudopsworks
#            Distributed Under Apache v2.0 License
#

variable "variables" {
  description = "Variables for the GitHub Organization"
  type        = any
  default     = []
}

variable "secrets" {
  description = "Secrets for the GitHub Organization"
  type        = any
  default     = []
}