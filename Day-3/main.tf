provider "aws" {
  region = "us-east-1"
}

module "ec2_instance" {
  source = "/Users/tharun/Terraform/Terraform-Z-H/Day-3/modules"
  ami_value = "ami-063d43db0594b521b"
  instance_type_value = "t2.micro"
  subnet_id_value = "subnet-05413fd3cf12c4dc0"
  key_name_value = "Linux_course"
}

