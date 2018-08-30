output "evicted_keys_id" {
  description = "id for monitor evicted_keys"
  value       = "${datadog_monitor.evicted_keys.*.id}"
}

output "expirations_id" {
  description = "id for monitor expirations"
  value       = "${datadog_monitor.expirations.*.id}"
}

output "blocked_clients_id" {
  description = "id for monitor blocked_clients"
  value       = "${datadog_monitor.blocked_clients.*.id}"
}

output "keyspace_full_id" {
  description = "id for monitor keyspace_full"
  value       = "${datadog_monitor.keyspace_full.*.id}"
}

output "memory_used_id" {
  description = "id for monitor memory_used"
  value       = "${datadog_monitor.memory_used.*.id}"
}

output "memory_frag_id" {
  description = "id for monitor memory_frag"
  value       = "${datadog_monitor.memory_frag.*.id}"
}

output "rejected_connections_id" {
  description = "id for monitor rejected_connections"
  value       = "${datadog_monitor.rejected_connections.*.id}"
}

output "latency_id" {
  description = "id for monitor latency"
  value       = "${datadog_monitor.latency.*.id}"
}

output "hitrate_id" {
  description = "id for monitor hitrate"
  value       = "${datadog_monitor.hitrate.*.id}"
}

output "not_responding_id" {
  description = "id for monitor not_responding"
  value       = "${datadog_monitor.not_responding.*.id}"
}