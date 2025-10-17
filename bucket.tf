data "aws_region" "current" {}

data "aws_caller_identity" "current" {}

data "aws_iam_policy_document" "kms_policy" {

  statement {
    sid = "Allow GuardDuty to encrypt findings"
    actions = [
      "kms:GenerateDataKey"
    ]

    resources = ["*"]

    principals {
      type        = "Service"
      identifiers = ["guardduty.amazonaws.com"]
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
}

resource "aws_s3_bucket" "guardduty_bucket" {
  bucket = var.name
}

resource "aws_s3_bucket_acl" "guardduty_bucket_acl" {
  bucket = aws_s3_bucket.guardduty_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "guardduty_bucket_encryption" {
  bucket = aws_s3_bucket.guardduty_bucket.id

  rule {
    bucket_key_enabled = false

    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}

resource "aws_s3_bucket_replication_configuration" "guardduty_bucket_replication" {
  bucket = aws_s3_bucket.guardduty_bucket.id
  role   = aws_iam_role.source_replication.arn

  rule {
    id     = "Replication"
    status = "Enabled"

    destination {
      bucket        = var.replication_destination_bucket_arn
      storage_class = "STANDARD"
    }

    source_selection_criteria {
      sse_kms_encrypted_objects {
        status = "Enabled"
      }
    }
  }
}

resource "aws_s3_bucket_acl" "this" {
  bucket = aws_s3_bucket.guardduty_bucket.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.guardduty_bucket.id

  block_public_acls   = true
  block_public_policy = true
}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.guardduty_bucket.id
  policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "Allow PutObject",
            "Effect": "Allow",
            "Principal": {
                "Service": "guardduty.amazonaws.com"
            },
            "Action": "s3:PutObject",
            "Resource": "${aws_s3_bucket.guardduty_bucket.arn}/*"
        },
        {
            "Sid": "Allow GetBucketLocation",
            "Effect": "Allow",
            "Principal": {
                "Service": "guardduty.amazonaws.com"
            },
            "Action": "s3:GetBucketLocation",
            "Resource": "${aws_s3_bucket.guardduty_bucket.arn}"
        }
    ]
}
EOT
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

// START - S3 replication

resource "aws_iam_role" "source_replication" {
  name               = "${var.name}-s3-replication"
  assume_role_policy = <<EOT
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "",
            "Effect": "Allow",
            "Principal": {
                "Service": "s3.amazonaws.com"
            },
            "Action": "sts:AssumeRole"
        }
    ]
}
EOT
}

resource "aws_iam_policy" "source_replication" {
  name   = "${var.name}-replication-policy"
  policy = <<EOT
{
    "Statement": [
        {
            "Action": [
                "s3:ListBucket",
                "s3:GetReplicationConfiguration"
            ],
            "Effect": "Allow",
            "Resource": "${aws_s3_bucket.guardduty_bucket.arn}",
            "Sid": ""
        },
        {
            "Action": [
                "s3:GetObjectVersionTagging",
                "s3:GetObjectVersionForReplication",
                "s3:GetObjectVersionAcl"
            ],
            "Effect": "Allow",
            "Resource": "${aws_s3_bucket.guardduty_bucket.arn}/*",
            "Sid": ""
        },
        {
            "Action": [
                "s3:ReplicateTags",
                "s3:ReplicateObject",
                "s3:ReplicateDelete"
            ],
            "Effect": "Allow",
            "Resource": "${var.replication_destination_bucket_arn}/*",
            "Sid": ""
        },
        {
            "Action": "kms:Decrypt",
            "Effect": "Allow",
            "Resource": "${aws_kms_key.guardduty_key.arn}",
            "Sid": "KMSDecrypt"
        },
        {
            "Action": [
                "kms:GenerateDataKey",
                "kms:Encrypt"
            ],
            "Effect": "Allow",
            "Resource": "${var.replication_destination_kms_arn}",
            "Sid": "KMSEncryptDestination"
        }
    ],
    "Version": "2012-10-17"
}
EOT
}

resource "aws_iam_role_policy_attachment" "source_replication" {
  role       = aws_iam_role.source_replication.name
  policy_arn = aws_iam_policy.source_replication.arn
}
