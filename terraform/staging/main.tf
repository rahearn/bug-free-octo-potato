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
