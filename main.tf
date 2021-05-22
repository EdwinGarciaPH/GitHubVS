provider "aws" {
  region     = "ap-southeast-1"		
  access_key = "AKIAXVIBKYT6O2KSD477"
  secret_key = "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"
}

resource "aws_instance" "apsoutheast1" {
  ami           = "ami-02f26adf094f51167" 
  instance_type = "t2.micro"
}
