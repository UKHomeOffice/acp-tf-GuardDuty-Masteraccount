data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    sid = "Allow PutObject"
    actions = [
      "s3:PutObject"
    ]

    resources = [
      "${aws_s3_bucket.guardduty_bucket.arn}/*"
    ]

    principals {
      type        = "Service"
      identifiers = ["guardduty.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"

      values = [
        data.aws_caller_identity.current.account_id
      ]
    }
  }

  statement {
    sid = "Allow GetBucketLocation"
    actions = [
      "s3:GetBucketLocation"
    ]

    resources = [
      aws_s3_bucket.guardduty_bucket.arn
    ]

    principals {
      type        = "Service"
      identifiers = ["guardduty.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"

      values = [
        data.aws_caller_identity.current.account_id
      ]
    }
  }
}


data "aws_iam_policy_document" "kms_policy" {

  statement {
    sid = "Allow GuardDuty to encrypt findings"
    actions = [
      "kms:GenerateDataKey"
    ]

    resources = [
      "arn:aws:kms:${data.aws_region.current.name}:${data.aws_caller_identity.current.account_id}:key/*"
    ]

    principals {
      type        = "Service"
      identifiers = ["guardduty.amazonaws.com"]
    }

    condition {
      test     = "StringEquals"
      variable = "aws:SourceAccount"

      values = [
        data.aws_caller_identity.current.account_id
      ]
    }
  }
  statement {
    sid    = "IAMPermissions"
    effect = "Allow"

    resources = ["*"]

    actions = [
      "kms:*",
    ]

    principals {
      type = "AWS"

      identifiers = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root",
      ]
    }
  }

  statement {
    sid    = "KeyAdministratorsPermissions"
    effect = "Allow"

    resources = ["*"]

    actions = [
      "kms:Create*",
      "kms:Describe*",
      "kms:Enable*",
      "kms:List*",
      "kms:Put*",
      "kms:Update*",
      "kms:Revoke*",
      "kms:Disable*",
      "kms:Get*",
      "kms:Delete*",
      "kms:ScheduleKeyDeletion",
      "kms:CancelKeyDeletion",
    ]

    principals {
      type = "AWS"

      identifiers = [
        "arn:aws:iam::${data.aws_caller_identity.current.account_id}:root",
      ]
    }
  }
}

resource "aws_s3_bucket" "guardduty_bucket" {
  bucket        = "acp-guardduty-aggregation-ops-prod-eu-west-2"
  force_destroy = true
}

resource "aws_s3_bucket_acl" "bucket_acl" {
  bucket = aws_s3_bucket.guardduty_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.guardduty_bucket.id
  policy = data.aws_iam_policy_document.bucket_policy.json
}

resource "aws_kms_key" "guardduty_key" {
  description         = "GuardDuty key for publishing events"
  enable_key_rotation = true
  policy              = data.aws_iam_policy_document.kms_policy.json
}

resource "aws_s3_bucket_versioning" "this" {
  bucket = aws_s3_bucket.guardduty_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_kms_alias" "guardduty_key_alias" {
  name          = "alias/guardduty-event-publisher"
  target_key_id = aws_kms_key.guardduty_key.key_id
}

# resource "aws_guardduty_publishing_destination" "test" {
#   detector_id     = aws_guardduty_detector.test_gd.id
#   destination_arn = aws_s3_bucket.gd_bucket.arn
#   kms_key_arn     = aws_kms_key.gd_key.arn

#   depends_on = [
#     aws_s3_bucket_policy.gd_bucket_policy,
#   ]
# }