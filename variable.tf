variable "accounts" {
  description = ""
  default     = {}
}

variable "invite_message" {
  description = ""
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

variable "replication_enabled" {
  description = "Flag to toggle S3 replication"
  default     = true
}