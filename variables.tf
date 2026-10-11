variable "group_membership_lookup" {
  description = <<EOT
Map of group_membership_lookup, attributes below
Optional:
    - access_level
    - full_path
    - group_id
    - inherited
EOT

  type = map(object({
    access_level = optional(string)
    full_path    = optional(string)
    group_id     = optional(number)
    inherited    = optional(bool)
  }))
}

