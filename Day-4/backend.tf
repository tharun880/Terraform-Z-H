terraform {
  backend "s3" {
    bucket = "tharun-terraform-bucket"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "tharun-terraform-table"
  }
}
