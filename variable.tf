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
