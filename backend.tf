terraform {
    backend "s3" {
    bucket         = "shakee-terraform-backend"   # Replace with your S3 bucket name
    key            = "terraform/state/shakee-bookinventory.tfstate" # Path to the Terraform state file in the bucket
    region         = "ap-southeast-1"          # Replace with your AWS region
    dynamodb_table = "sha-bookinventory"    # DynamoDB table name for state locking
    encrypt        = true                   # Enable state encryption
  }
}
