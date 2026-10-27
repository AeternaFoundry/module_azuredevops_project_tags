output "project_tags_id" {
  description = "Map of id values across all project_tags, keyed the same as var.project_tags"
  value       = { for k, v in azuredevops_project_tags.project_tags : k => v.id }
}
output "project_tags_project_id" {
  description = "Map of project_id values across all project_tags, keyed the same as var.project_tags"
  value       = { for k, v in azuredevops_project_tags.project_tags : k => v.project_id }
}
output "project_tags_tags" {
  description = "Map of tags values across all project_tags, keyed the same as var.project_tags"
  value       = { for k, v in azuredevops_project_tags.project_tags : k => v.tags }
}

