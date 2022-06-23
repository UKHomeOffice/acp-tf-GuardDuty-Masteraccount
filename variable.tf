variable "accounts" {
  description = "List of accounts to invite to be a GuardDuty member. Key'd by account number and Value as account root email address."
  default     = {}
  type        = map(string)
}

variable "invite_message" {
  description = "Message attached to GuardDuty membership invitation."
  default     = "Guardduty Invite"
}

variable "publishing_frequency" {
  description = "finding_publishing_frequency"
  default     = "SIX_HOURS"
}

variable "name" {
  description = "Name used to suffix S3 bucket / Roles"
}

variable "replication_destination_bucket_arn" {
  description = "S3 Destination bucket arn for replication"
}

variable "replication_destination_account_id" {
  description = "S3 Destination account id"
}

variable "replication_enabled" {
  description = "Flag to toggle S3 replication"
  default     = true
}