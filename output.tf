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


output "detector_ids" {
  value = {
    eu-west-2 = aws_guardduty_detector.eu-west-2.id
    eu-west-1 = aws_guardduty_detector.eu-west-1.id
    eu-north-1 = aws_guardduty_detector.eu-north-1.id
    us-east-1 = aws_guardduty_detector.us-east-1.id
    us-east-2 = aws_guardduty_detector.us-east-2.id
    us-west-2 = aws_guardduty_detector.us-west-2.id
    us-west-1 = aws_guardduty_detector.us-west-1.id
    ap-southeast-1 = aws_guardduty_detector.ap-southeast-1.id
    ap-southeast-2 = aws_guardduty_detector.ap-southeast-2.id
    ap-northeast-1 = aws_guardduty_detector.ap-northeast-1.id
    ap-northeast-2 = aws_guardduty_detector.ap-northeast-2.id
    ap-northeast-3 = aws_guardduty_detector.ap-northeast-3.id
    ap-south-1 = aws_guardduty_detector.ap-south-1.id
    eu-central-1 = aws_guardduty_detector.eu-central-1.id
    eu-west-3 = aws_guardduty_detector.eu-west-3.id
    sa-east-1 = aws_guardduty_detector.sa-east-1.id
    ca-central-1 = aws_guardduty_detector.ca-central-1.id
   }
  description = "GuardDuty detector ids from each region"
}