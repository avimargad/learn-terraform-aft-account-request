module "sandbox-aft-new-2" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ammargad+aft+3@amazon.com"
    AccountName               = "sandbox-aft-new-3"
    ManagedOrganizationalUnit = "Management(ou-vpar-q5ph7h75)"
    SSOUserEmail              = "ammargad+aft+3@amazon.com"
    SSOUserFirstName          = "Sandbox"
    SSOUserLastName           = "AFT"
  }

  account_tags = {
    "Learn Tutorial" = "AFT"
  }

  change_management_parameters = {
    change_requested_by = "HashiCorp Learn"
    change_reason       = "Learn AWS Control Tower Account Factory for Terraform"
  }

  custom_fields = {
    group = "non-prod"
  }

  account_customizations_name = "sandbox-new"
}
