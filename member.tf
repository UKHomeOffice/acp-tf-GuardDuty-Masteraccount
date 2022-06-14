# The invites send to the member accounts in each region
resource "aws_guardduty_member" "eu_west_3" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.eu_west_3.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.eu-west-3
}

resource "aws_guardduty_member" "eu_west_2" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.eu_west_2.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.eu-west-2
}

resource "aws_guardduty_member" "eu_west_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.eu_west_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.eu-west-1
}


resource "aws_guardduty_member" "eu_north_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.eu_north_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.eu-north-1
}

resource "aws_guardduty_member" "us_west_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.us_west_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.us-west-1
}

resource "aws_guardduty_member" "us_west_2" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.us_west_2.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.us-west-2
}

resource "aws_guardduty_member" "us_east_2" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.us_east_2.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.us-east-2
}

resource "aws_guardduty_member" "us_east_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.us_east_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.us-east-1
}

resource "aws_guardduty_member" "sa_east_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.sa_east_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.sa-east-1
}

resource "aws_guardduty_member" "eu_central_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.eu_central_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.eu-central-1
}

resource "aws_guardduty_member" "ap_southeast_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ap_southeast_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ap-southeast-1
}

resource "aws_guardduty_member" "ap_southeast_2" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ap_southeast_2.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ap-southeast-2
}

resource "aws_guardduty_member" "ap_northeast_3" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ap_northeast_3.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ap-northeast-3
}

resource "aws_guardduty_member" "ap_northeast_2" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ap_northeast_2.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ap-northeast-2
}

resource "aws_guardduty_member" "ap_northeast_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ap_northeast_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ap-northeast-1
}

resource "aws_guardduty_member" "ap_south_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ap_south_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ap-south-1
}

resource "aws_guardduty_member" "ca_central_1" {
  for_each           = var.accounts
  account_id         = each.key
  detector_id        = aws_guardduty_detector.ca_central_1.id
  email              = each.value
  invite             = true
  invitation_message = var.invite_message
  provider           = aws.ca-central-1
}

