
# acp-tf-GuardDuty-Masteraccount
This repository  enables guard duty in all regions in the master account and sends invites to member accounts across all regions.

# Module usage:
```hcl
module "guardduty_invite" {
  source               = "git::https://github.com/UKHomeOffice/acp-tf-GuardDuty-Masteraccount?ref=master"
  publishing_frequency = "SIX_HOURS"

  accounts = {
    "AWS account number" = "email"
  }
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| accounts | guard duty member accounts | map | `<map>` | yes|
| invite\_message |Invite message which gets sent across all member accounts | string | `"Guardduty Invite"` | no |
| publishing\_frequency | finding_publishing_frequency | string | `"SIX_HOURS"` | no |
