output "compute_bulk_per_instance_configs_id" {
  description = "Map of id values across all compute_bulk_per_instance_configs, keyed the same as var.compute_bulk_per_instance_configs except keys with no id are omitted"
  value       = { for k, v in google_compute_bulk_per_instance_config.compute_bulk_per_instance_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_bulk_per_instance_configs_deletion_policy" {
  description = "Map of deletion_policy values across all compute_bulk_per_instance_configs, keyed the same as var.compute_bulk_per_instance_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_bulk_per_instance_config.compute_bulk_per_instance_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_bulk_per_instance_configs_instance_group_manager" {
  description = "Map of instance_group_manager values across all compute_bulk_per_instance_configs, keyed the same as var.compute_bulk_per_instance_configs except keys with no instance_group_manager are omitted"
  value       = { for k, v in google_compute_bulk_per_instance_config.compute_bulk_per_instance_configs : k => v.instance_group_manager if v.instance_group_manager != null && length(v.instance_group_manager) > 0 }
}
output "compute_bulk_per_instance_configs_instances" {
  description = "Map of instances values across all compute_bulk_per_instance_configs, keyed the same as var.compute_bulk_per_instance_configs except keys with no instances are omitted"
  value       = { for k, v in google_compute_bulk_per_instance_config.compute_bulk_per_instance_configs : k => v.instances if v.instances != null && length(v.instances) > 0 }
}
output "compute_bulk_per_instance_configs_project" {
  description = "Map of project values across all compute_bulk_per_instance_configs, keyed the same as var.compute_bulk_per_instance_configs except keys with no project are omitted"
  value       = { for k, v in google_compute_bulk_per_instance_config.compute_bulk_per_instance_configs : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_bulk_per_instance_configs_zone" {
  description = "Map of zone values across all compute_bulk_per_instance_configs, keyed the same as var.compute_bulk_per_instance_configs except keys with no zone are omitted"
  value       = { for k, v in google_compute_bulk_per_instance_config.compute_bulk_per_instance_configs : k => v.zone if v.zone != null && length(v.zone) > 0 }
}

