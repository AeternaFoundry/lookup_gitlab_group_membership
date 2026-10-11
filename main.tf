data "gitlab_group_membership" "group_membership_lookup" {
  for_each = var.group_membership_lookup

  access_level = each.value.access_level
  full_path    = each.value.full_path
  group_id     = each.value.group_id
  inherited    = each.value.inherited
}

