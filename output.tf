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
    eu-west-2 = aws_guardduty_detector.eu_west_2.id
    eu-west-1 = aws_guardduty_detector.eu_west_1.id
    eu-north-1 = aws_guardduty_detector.eu_north_1.id
    us-east-1 = aws_guardduty_detector.us_east_1.id
    us-east-2 = aws_guardduty_detector.us_east_2.id
    us-west-2 = aws_guardduty_detector.us_west_2.id
    us-west-1 = aws_guardduty_detector.us_west_1.id
    ap-southeast-1 = aws_guardduty_detector.ap_southeast_1.id
    ap-southeast-2 = aws_guardduty_detector.ap_southeast_2.id
    ap-northeast-1 = aws_guardduty_detector.ap_northeast_1.id
    ap-northeast-2 = aws_guardduty_detector.ap_northeast_2.id
    ap-northeast-3 = aws_guardduty_detector.ap_northeast_3.id
    ap-south-1 = aws_guardduty_detector.ap_south_1.id
    eu-central-1 = aws_guardduty_detector.eu_central_1.id
    eu-west-3 = aws_guardduty_detector.eu_west_3.id
    sa-east-1 = aws_guardduty_detector.sa_east_1.id
    ca-central-1 = aws_guardduty_detector.ca_central_1.id
   }
  description = "GuardDuty detector ids from each region"
}