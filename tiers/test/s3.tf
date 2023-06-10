#tfsec:ignore:aws-s3-block-public-acls
#tfsec:ignore:aws-s3-block-public-policy
#tfsec:ignore:aws-s3-enable-bucket-encryption
#tfsec:ignore:aws-s3-encryption-customer-key
#tfsec:ignore:aws-s3-ignore-public-acls
#tfsec:ignore:aws-s3-no-public-buckets
#tfsec:ignore:aws-s3-enable-bucket-logging
#tfsec:ignore:aws-s3-enable-versioning
#tfsec:ignore:aws-s3-specify-public-access-block
resource "aws_s3_bucket" "test" {
  #checkov:skip=CKV2_AWS_6:Public access disabled by default.
  #checkov:skip=CKV_AWS_144:Test bucket does not need replication.
  #checkov:skip=CKV_AWS_21:Test bucket does not need versioning.
  #checkov:skip=CKV_AWS_145:Test bucket does not need encryption.
  #checkov:skip=CKV_AWS_18:Test bucket does not need access logging.
  bucket = "my-testing-bucket-1035-test"
}

output "test" {
  value = aws_s3_bucket.test
}

output "test_id" {
  value = aws_s3_bucket.test.id
}
