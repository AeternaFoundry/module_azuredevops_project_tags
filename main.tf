resource "azuredevops_project_tags" "project_tags" {
  for_each = var.project_tags

  project_id = each.value.project_id
  tags       = each.value.tags

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      read   = timeouts.value.read
      update = timeouts.value.update
    }
  }
}

