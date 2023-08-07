data "terraform_remote_state" "project03_SG" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.remote_state_sg
    region = var.remote_state_region
  }
}

data "terraform_remote_state" "project03_VPC" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.remote_state_vpc
    region = var.remote_state_region
  }
}

data "terraform_remote_state" "project03_AMI" {
  backend = "s3"
  config = {
    bucket = var.remote_state_bucket
    key    = var.remote_state_ami
    region = var.remote_state_region
  }
}

