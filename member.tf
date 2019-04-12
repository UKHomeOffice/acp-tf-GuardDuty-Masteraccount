# The invites send to the member accounts in each region
resource "aws_guardduty_member" "eu_west_3" {
  count              = "${length(var.accounts)}"
  account_id         = "${index(keys(var.accounts), count.index)}"
  detector_id        = "${aws_guardduty_detector.eu_west_3.id}"
  email              = "${lookup(var.accounts, index(keys(var.accounts), count.index))}"
  invite             = true
  invitation_message = "${var.invite_message}"
  provider           = "aws.eu-west-3"
}
