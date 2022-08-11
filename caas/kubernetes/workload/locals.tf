locals {
  replica_group_by = join(", ", var.replica_group_by)

  default_tags     = ["type:caas", "provider:kubernetes", "resource:kubernetes-workload"]
}