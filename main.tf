module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.5"
  # insert the 1 required variable here
  gcp_project = "jenkins-x-course-323602"
  cluster_name = "ps-jx-cluster"
}

terraform {
    backend "gcs" {
      bucket = "jx-mykeb-terraform-state-files"
      prefix = "terraform/state"  
    }
}