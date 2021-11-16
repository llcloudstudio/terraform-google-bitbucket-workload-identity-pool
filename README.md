# Creates a basic workload identity pool

This module will create a basic workload identity pool in a gcp project.  
* This is the first piece needed when configuring Bitbucket pipelines via OpenID Connect (OIDC)
* Typically you would have one of these per 3rd party vendor. Example: if you have workload from bitbucket, azure and aws, you would have a separate pool for each vendor.



## Quick start

To use this module: 

1. In your main.tf include the following: 
```
module "identity_pool_for_vendor" {
  source                    = "terraform-google-bitbucket-workload-identity-pool"
  project_id                = "gcp_project_id"
  workload_identity_pool_id = "unique_name"
}
```
1. Run terraform validate and fix any issues that appear.    
1. Run terraform plan and confirm you are ok with what will be deployed.   
1. Run terraform apply to have the resources deployed.


## Notes
1. If you delete a workload identity pool, it will take 30 days before it is permenantly deleted. You cannot re-use the pool name within this time.