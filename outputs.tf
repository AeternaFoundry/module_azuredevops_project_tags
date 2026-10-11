output "project_tags_id" {
  description = "Map of id values across all project_tags, keyed the same as var.project_tags except keys with no id are omitted"
  value       = { for k, v in azuredevops_project_tags.project_tags : k => v.id if v.id != null && length(v.id) > 0 }
}
output "project_tags_project_id" {
  description = "Map of project_id values across all project_tags, keyed the same as var.project_tags except keys with no project_id are omitted"
  value       = { for k, v in azuredevops_project_tags.project_tags : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "project_tags_tags" {
  description = "Map of tags values across all project_tags, keyed the same as var.project_tags except keys with no tags are omitted"
  value       = { for k, v in azuredevops_project_tags.project_tags : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

