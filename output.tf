output "name" {
  description = "workload identity pool name"
  value       = google_iam_workload_identity_pool.A.name
}

output "id" {
  description = "workload identity pool id"
  value       = google_iam_workload_identity_pool.A.workload_identity_pool_id
}