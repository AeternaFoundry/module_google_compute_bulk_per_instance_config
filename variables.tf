variable "compute_bulk_per_instance_configs" {
  description = <<EOT
Map of compute_bulk_per_instance_configs, attributes below
Required:
    - instance_group_manager
Optional:
    - deletion_policy
    - project
    - zone
    - instances (block):
        - name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
EOT

  type = map(object({
    instance_group_manager = string
    deletion_policy        = optional(string)
    project                = optional(string)
    zone                   = optional(string)
    instances = optional(list(object({
      name = string
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
    }))
  }))
}

