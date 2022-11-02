terraform {
 backend "s3" {
   bucket         = "terraform-up-and-running-state-2023"
   key            = "state/terraform.tfstate"
   region         = "us-east-1"
   encrypt        = true
   kms_key_id     = "alias/terraform-bucket-key"
   dynamodb_table = "terraform-up-and-running-locks"
 }
}
