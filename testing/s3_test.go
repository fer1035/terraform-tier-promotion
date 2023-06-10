package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/aws"
	"github.com/gruntwork-io/terratest/modules/terraform"
)

func TestAwsS3Dev(t *testing.T) {
	t.Parallel()

	awsRegion := "ap-southeast-1"

	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		TerraformDir: "../tiers/dev",
	})
	defer terraform.Destroy(t, terraformOptions)
	terraform.InitAndApply(t, terraformOptions)
	bucketID := terraform.Output(t, terraformOptions, "dev_id")

	aws.AssertS3BucketExists(t, awsRegion, bucketID)
}

func TestAwsS3Test(t *testing.T) {
	t.Parallel()

	awsRegion := "ap-southeast-1"
	bucketID := "my-testing-bucket-324354613568-test"

	aws.AssertS3BucketExists(t, awsRegion, bucketID)
}

func TestAwsS3Prod(t *testing.T) {
	t.Parallel()

	awsRegion := "ap-southeast-1"
	bucketID := "my-testing-bucket-324354613568-prod"

	aws.AssertS3BucketExists(t, awsRegion, bucketID)
}
