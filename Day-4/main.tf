provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "tharun" {
  ami = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  subnet_id = "subnet-05413fd3cf12c4dc0"
}

resource "aws_s3_bucket" "s3_bucket" { 
  bucket = "tharun-terraform-bucket"    
}

resource "aws_dynamodb_table" "terraform_lock" {
  name = "tharun-terraform-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  } 
}
