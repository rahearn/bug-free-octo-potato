locals {
  cf_org_name      = "tts-usps-test-at-home"
  cf_space_name    = "sandbox"
  env              = "staging"
  recursive_delete = true
}

module "database" {
  source = "../shared/database"

  cf_user          = var.cf_user
  cf_password      = var.cf_password
  cf_org_name      = local.cf_org_name
  cf_space_name    = local.cf_space_name
  env              = local.env
  recursive_delete = local.recursive_delete
  rds_plan_name    = "micro-psql"
}

module "egress-space" {
  source = "../shared/egress_space"

  cf_user       = var.cf_user
  cf_password   = var.cf_password
  cf_org_name   = local.cf_org_name
  cf_space_name = local.cf_space_name
  # deployers should include any user or service account ID that will deploy the egress proxy
  deployers = [
    "92dd4c66-d68d-4829-8583-30de38d5b200"
  ]
}
