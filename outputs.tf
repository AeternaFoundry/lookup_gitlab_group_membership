output "group_membership_lookup_id" {
  description = "Map of id values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no id are omitted"
  value       = { for k, v in data.gitlab_group_membership.group_membership_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "group_membership_lookup_access_level" {
  description = "Map of access_level values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no access_level are omitted"
  value       = { for k, v in data.gitlab_group_membership.group_membership_lookup : k => v.access_level if v.access_level != null && length(v.access_level) > 0 }
}
output "group_membership_lookup_full_path" {
  description = "Map of full_path values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no full_path are omitted"
  value       = { for k, v in data.gitlab_group_membership.group_membership_lookup : k => v.full_path if v.full_path != null && length(v.full_path) > 0 }
}
output "group_membership_lookup_group_id" {
  description = "Map of group_id values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no group_id are omitted"
  value       = { for k, v in data.gitlab_group_membership.group_membership_lookup : k => v.group_id if v.group_id != null }
}
output "group_membership_lookup_inherited" {
  description = "Map of inherited values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no inherited are omitted"
  value       = { for k, v in data.gitlab_group_membership.group_membership_lookup : k => v.inherited if v.inherited != null }
}
output "group_membership_lookup_members" {
  description = "Map of members values across all group_membership_lookup, keyed the same as var.group_membership_lookup except keys with no members are omitted"
  value       = { for k, v in data.gitlab_group_membership.group_membership_lookup : k => v.members if v.members != null && length(v.members) > 0 }
}

