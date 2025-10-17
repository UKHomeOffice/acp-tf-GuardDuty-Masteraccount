
# acp-tf-GuardDuty-Masteraccount
This repository  enables guard duty in all regions in the master account and sends invites to member accounts across all regions.

# Module usage:
```hcl
module "guardduty_invite" {
  source                             = "git::https://github.com/UKHomeOffice/acp-tf-GuardDuty-Masteraccount?ref=master"
  publishing_frequency               = "SIX_HOURS"
  name                               = "guardduty-aggregation"
  replication_destination_bucket_arn = "arn:aws:s3:::BUCKET-NAME"
  
  accounts = {
    "AWS account number" = "email"
  }

  providers = {
    aws.eu-west-1      = aws.eu-west-1,
    aws.eu-west-2      = aws.eu-west-2,
    aws.eu-west-3      = aws.eu-west-3,
    aws.eu-central-1   = aws.eu-central-1,
    aws.eu-north-1     = aws.eu-north-1,
    aws.us-east-1      = aws.us-east-1,
    aws.us-east-2      = aws.us-east-2,
    aws.us-west-2      = aws.us-west-2,
    aws.us-west-1      = aws.us-west-1,
    aws.ap-southeast-1 = aws.ap-southeast-1,
    aws.ap-southeast-2 = aws.ap-southeast-2,
    aws.ap-northeast-1 = aws.ap-northeast-1,
    aws.ap-northeast-2 = aws.ap-northeast-2,
    aws.ap-northeast-3 = aws.ap-northeast-3,
    aws.ap-south-1     = aws.ap-south-1,
    aws.sa-east-1      = aws.sa-east-1,
    aws.ca-central-1   = aws.ca-central-1
  }
}

```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.3 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.70 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.75.1 |
| <a name="provider_aws.ap-northeast-1"></a> [aws.ap-northeast-1](#provider\_aws.ap-northeast-1) | 3.75.1 |
| <a name="provider_aws.ap-northeast-2"></a> [aws.ap-northeast-2](#provider\_aws.ap-northeast-2) | 3.75.1 |
| <a name="provider_aws.ap-northeast-3"></a> [aws.ap-northeast-3](#provider\_aws.ap-northeast-3) | 3.75.1 |
| <a name="provider_aws.ap-south-1"></a> [aws.ap-south-1](#provider\_aws.ap-south-1) | 3.75.1 |
| <a name="provider_aws.ap-southeast-1"></a> [aws.ap-southeast-1](#provider\_aws.ap-southeast-1) | 3.75.1 |
| <a name="provider_aws.ap-southeast-2"></a> [aws.ap-southeast-2](#provider\_aws.ap-southeast-2) | 3.75.1 |
| <a name="provider_aws.ca-central-1"></a> [aws.ca-central-1](#provider\_aws.ca-central-1) | 3.75.1 |
| <a name="provider_aws.eu-central-1"></a> [aws.eu-central-1](#provider\_aws.eu-central-1) | 3.75.1 |
| <a name="provider_aws.eu-north-1"></a> [aws.eu-north-1](#provider\_aws.eu-north-1) | 3.75.1 |
| <a name="provider_aws.eu-west-1"></a> [aws.eu-west-1](#provider\_aws.eu-west-1) | 3.75.1 |
| <a name="provider_aws.eu-west-2"></a> [aws.eu-west-2](#provider\_aws.eu-west-2) | 3.75.1 |
| <a name="provider_aws.eu-west-3"></a> [aws.eu-west-3](#provider\_aws.eu-west-3) | 3.75.1 |
| <a name="provider_aws.sa-east-1"></a> [aws.sa-east-1](#provider\_aws.sa-east-1) | 3.75.1 |
| <a name="provider_aws.us-east-1"></a> [aws.us-east-1](#provider\_aws.us-east-1) | 3.75.1 |
| <a name="provider_aws.us-east-2"></a> [aws.us-east-2](#provider\_aws.us-east-2) | 3.75.1 |
| <a name="provider_aws.us-west-1"></a> [aws.us-west-1](#provider\_aws.us-west-1) | 3.75.1 |
| <a name="provider_aws.us-west-2"></a> [aws.us-west-2](#provider\_aws.us-west-2) | 3.75.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_guardduty_detector.ap_northeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_northeast_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_south_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_southeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ap_southeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.ca_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_north_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.eu_west_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.sa_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_east_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_detector.us_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_detector) | resource |
| [aws_guardduty_member.ap_northeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.ap_northeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.ap_northeast_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.ap_south_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.ap_southeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.ap_southeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.ca_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.eu_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.eu_north_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.eu_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.eu_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.eu_west_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.sa_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.us_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.us_east_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.us_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_member.us_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_member) | resource |
| [aws_guardduty_publishing_destination.ap_northeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.ap_northeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.ap_northeast_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.ap_south_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.ap_southeast_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.ap_southeast_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.ca_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.eu_central_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.eu_north_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.eu_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.eu_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.eu_west_3](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.sa_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.us_east_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.us_east_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.us_west_1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_guardduty_publishing_destination.us_west_2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/guardduty_publishing_destination) | resource |
| [aws_iam_policy.source_replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.source_replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.source_replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_kms_alias.guardduty_key_alias](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_alias) | resource |
| [aws_kms_key.guardduty_key](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/kms_key) | resource |
| [aws_s3_bucket.guardduty_bucket](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket) | resource |
| [aws_s3_bucket_acl.guardduty_bucket_acl](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_acl.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl) | resource |
| [aws_s3_bucket_policy.bucket_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_policy) | resource |
| [aws_s3_bucket_public_access_block.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block) | resource |
| [aws_s3_bucket_replication_configuration.guardduty_bucket_replication](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_replication_configuration) | resource |
| [aws_s3_bucket_server_side_encryption_configuration.guardduty_bucket_encryption](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_server_side_encryption_configuration) | resource |
| [aws_s3_bucket_versioning.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_versioning) | resource |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy_document.kms_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_region.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_accounts"></a> [accounts](#input\_accounts) | List of accounts to invite to be a GuardDuty member. Key'd by account number and Value as account root email address. | `map(string)` | `{}` | no |
| <a name="input_invite_message"></a> [invite\_message](#input\_invite\_message) | Message attached to GuardDuty membership invitation. | `string` | `"Guardduty Invite"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name used to suffix S3 bucket / Roles | `any` | n/a | yes |
| <a name="input_publishing_frequency"></a> [publishing\_frequency](#input\_publishing\_frequency) | finding\_publishing\_frequency | `string` | `"SIX_HOURS"` | no |
| <a name="input_replication_destination_account_id"></a> [replication\_destination\_account\_id](#input\_replication\_destination\_account\_id) | S3 Destination account id | `any` | n/a | yes |
| <a name="input_replication_destination_bucket_arn"></a> [replication\_destination\_bucket\_arn](#input\_replication\_destination\_bucket\_arn) | S3 Destination bucket arn for replication | `any` | n/a | yes |
| <a name="input_replication_destination_kms_arn"></a> [replication\_destination\_kms\_arn](#input\_replication\_destination\_kms\_arn) | Destination bucket KMS key arn used to encrypt replicated objects | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bucket_arn"></a> [bucket\_arn](#output\_bucket\_arn) | ARN of bucket where GuardDuty events go |
| <a name="output_bucket_kms_arn"></a> [bucket\_kms\_arn](#output\_bucket\_kms\_arn) | KMS key used to decrypt GuardDuty events in the S3 bucket |
| <a name="output_bucket_name"></a> [bucket\_name](#output\_bucket\_name) | Name of bucket where GuardDuty events go |
| <a name="output_detector_ids"></a> [detector\_ids](#output\_detector\_ids) | GuardDuty detector ids from each region |
<!-- END_TF_DOCS -->