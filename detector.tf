resource "aws_guardduty_detector" "eu_west_1" {
  enable                       = true
  provider                     = aws.eu-west-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "eu_west_1" {
  provider        = aws.eu-west-1
  detector_id     = aws_guardduty_detector.eu_west_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "eu_west_2" {
  enable                       = true
  provider                     = aws
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "eu_west_2" {
  provider        = aws.eu-west-2
  detector_id     = aws_guardduty_detector.eu_west_2.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "eu_west_3" {
  enable                       = true
  provider                     = aws.eu-west-3
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "eu_west_3" {
  provider        = aws.eu-west-3
  detector_id     = aws_guardduty_detector.eu_west_3.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "sa_east_1" {
  enable                       = true
  provider                     = aws.sa-east-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "sa_east_1" {
  provider        = aws.sa-east-1
  detector_id     = aws_guardduty_detector.sa_east_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "eu_central_1" {
  enable                       = true
  provider                     = aws.eu-central-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "eu_central_1" {
  provider        = aws.eu-central-1
  detector_id     = aws_guardduty_detector.eu_central_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "ap_south_1" {
  enable                       = true
  provider                     = aws.ap-south-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "ap_south_1" {
  provider        = aws.ap-south-1
  detector_id     = aws_guardduty_detector.ap_south_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}


resource "aws_guardduty_detector" "ap_northeast_2" {
  enable                       = true
  provider                     = aws.ap-northeast-2
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "ap_northeast_2" {
  provider        = aws.ap-northeast-2
  detector_id     = aws_guardduty_detector.ap_northeast_2.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "ap_northeast_1" {
  enable                       = true
  provider                     = aws.ap-northeast-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "ap_northeast_1" {
  provider        = aws.ap-northeast-1
  detector_id     = aws_guardduty_detector.ap_northeast_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "ap_southeast_2" {
  enable                       = true
  provider                     = aws.ap-southeast-2
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "ap_southeast_2" {
  provider        = aws.ap-southeast-2
  detector_id     = aws_guardduty_detector.ap_southeast_2.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "ap_southeast_1" {
  enable                       = true
  provider                     = aws.ap-southeast-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "ap_southeast_1" {
  provider        = aws.ap-southeast-1
  detector_id     = aws_guardduty_detector.ap_southeast_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "us_west_2" {
  enable                       = true
  provider                     = aws.us-west-2
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "us_west_2" {
  provider        = aws.us-west-2
  detector_id     = aws_guardduty_detector.us_west_2.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "us_east_2" {
  enable                       = true
  provider                     = aws.us-east-2
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "us_east_2" {
  provider        = aws.us-east-2
  detector_id     = aws_guardduty_detector.us_east_2.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "us_east_1" {
  enable                       = true
  provider                     = aws.us-east-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "us_east_1" {
  provider        = aws.us-east-1
  detector_id     = aws_guardduty_detector.us_east_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "us_west_1" {
  enable                       = true
  provider                     = aws.us-west-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "us_west_1" {
  provider        = aws.us-west-1
  detector_id     = aws_guardduty_detector.us_west_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}

resource "aws_guardduty_detector" "ca_central_1" {
  enable                       = true
  provider                     = aws.ca-central-1
  finding_publishing_frequency = var.publishing_frequency
}

resource "aws_guardduty_publishing_destination" "ca_central_1" {
  provider        = aws.ca-central-1
  detector_id     = aws_guardduty_detector.ca_central_1.id
  destination_arn = aws_s3_bucket.guardduty_bucket.arn
  kms_key_arn     = aws_kms_key.guardduty_key.arn

  depends_on = [
    aws_s3_bucket_policy.bucket_policy,
  ]
}
