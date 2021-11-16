variable "project_id" {
  description = "gcp project id to setup the workload identity pool in"
  type        = string
}

variable "workload_identity_pool_id" {
  description = "workload identity pool id e.g. bitbucket or aws or azure"
  type        = string
}

