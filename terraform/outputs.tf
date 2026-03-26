output "bucket_name" {
  description = "S3 bucket created"
  value       = aws_s3_bucket.example.bucket
}
