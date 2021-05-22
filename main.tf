provider "aws" {
  region     = "ap-southeast-1"		
  access_key = "AKIAXVIBKYT6L4UIQ7EA"
  secret_key = "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"
}

provider "aws" {
  region     = "ap-southeast-2"		
  access_key = "AKIAXVIBKYT6L4UIQ7EA"
  secret_key = "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"
  alias = "apsouth2"
}

resource "aws_instance" "apsoutheast1" {
  ami           = "ami-02f26adf094f51167" 
  instance_type = "t2.micro"
}

resource "aws_instance" "apsoutheast2" {
  ami           = "ami-0186908e2fdeea8f3" 
  instance_type = "t2.micro"
  provider = aws.apsouth2
}
