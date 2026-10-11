resource "google_compute_bulk_per_instance_config" "compute_bulk_per_instance_configs" {
  for_each = var.compute_bulk_per_instance_configs

  instance_group_manager = each.value.instance_group_manager
  deletion_policy        = each.value.deletion_policy
  project                = each.value.project
  zone                   = each.value.zone

  dynamic "instances" {
    for_each = each.value.instances != null ? each.value.instances : []
    content {
      name = instances.value.name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
    }
  }
}

