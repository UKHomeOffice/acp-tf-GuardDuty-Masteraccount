resource "aws_guardduty_detector" "eu_west_1" {
  enable   = true
  provider = "aws.eu-west-1"
}

resource "aws_guardduty_detector" "eu_west_2" {
  enable   = true
  provider = "aws"
}

resource "aws_guardduty_detector" "eu_west_3" {
  enable   = true
  provider = "aws.eu-west-3"
}

resource "aws_guardduty_detector" "sa_east_1" {
  enable   = true
  provider = "aws.sa-east-1"
}

resource "aws_guardduty_detector" "eu_central_1" {
  enable   = true
  provider = "aws.eu-central-1"
}

resource "aws_guardduty_detector" "ap_south_1" {
  enable   = true
  provider = "aws.ap-south-1"
}

resource "aws_guardduty_detector" "north_east_2" {
  enable   = true
  provider = "aws.ap-northeast-2"
}

resource "aws_guardduty_detector" "north_east_1" {
  enable   = true
  provider = "aws.ap-northeast-1"
}

resource "aws_guardduty_detector" "south_east_2" {
  enable   = true
  provider = "aws.ap-southeast-2"
}

resource "aws_guardduty_detector" "south_east_1" {
  enable   = true
  provider = "aws.ap-southeast-1"
}

resource "aws_guardduty_detector" "us_west_2" {
  enable   = true
  provider = "aws.us-west-2"
}

resource "aws_guardduty_detector" "us_east_2" {
  enable   = true
  provider = "aws.us-east-2"
}

resource "aws_guardduty_detector" "us_east_1" {
  enable   = true
  provider = "aws.us-east-1"
}

resource "aws_guardduty_detector" "us_west_1" {
  enable   = true
  provider = "aws.us-west-1"
}
