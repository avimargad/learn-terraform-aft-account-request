module "sandbox-aft" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "ammargad+aft@amazon.com"
    AccountName               = "sandbox-aft-new"
    ManagedOrganizationalUnit = "Management(ou-vpar-q5ph7h75)"
    SSOUserEmail              = "ammargad+aft@amazon.com"
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

  account_customizations_name = "sandbox"
}
