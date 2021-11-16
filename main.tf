
# Import our existing project that was created for this
data "google_project" "A" {
  project_id = var.project_id
}

# Create workload identity pool - 1 per 3rd party vendor
resource "google_iam_workload_identity_pool" "A" {
  # Need role "IAM Workload Identity Pool Admin". Owner is not sufficient.
  provider                  = google-beta
  project                   = data.google_project.A.project_id
  workload_identity_pool_id = var.workload_identity_pool_id
  display_name              = var.workload_identity_pool_id
  description               = "Authentication Mechanism for ${var.workload_identity_pool_id} Workloads"
  disabled                  = false
}


