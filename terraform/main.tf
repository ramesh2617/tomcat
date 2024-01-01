terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAQEJDXE6BNBFMBY4A"
  secret_key = "Hwfk+I7NVLIt+TdzxleLPvqw3CZDgtg8B76DiSgI"
}

resource "aws_instance" "example" {
  # Placeholder configuration; will be populated during import
}



# Use the imported resource in your configuration
resource "aws_instance" "example" {
  ami           = "ami-03f4878755434977f"
  instance_type = "t2.micro"
  key_name      = "mynew2024key"
  # Add other configuration details based on your existing instance
}
