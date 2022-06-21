output "bucket_arn" {
  value       = aws_s3_bucket.guardduty_bucket.arn
  description = "ARN of bucket where GuardDuty events go"
}

output "bucket_name" {
  value       = aws_s3_bucket.guardduty_bucket.id
  description = "Name of bucket where GuardDuty events go"
}

output "bucket_kms_arn" {
  value       = aws_kms_key.guardduty_key.arn
  description = "KMS key used to decrypt GuardDuty events in the S3 bucket"
}