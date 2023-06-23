module "gke_cluster" {
  source         = "git@github.com:Sergo03/tf-google-gke-cluster.git"
  GOOGLE_REGION  = var.GOOGLE_REGION
  GOOGLE_PROJECT = var.GOOGLE_PROJECT
  GKE_NUM_NODES  = 2
}

terraform {
  backend "gcs" {
    bucket = "gke_cluster_tf_state"
    prefix = "terraform/state"
  }
}