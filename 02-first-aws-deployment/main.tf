provider "aws" { 
 # access_key = "XXXXX"
 # secret_key = "YYYYY"
 region = "us-west-2"
}


resource "aws_instance" "web" {
  ami = "ami-09dd2e08d601bff67"
  instance_type = "t2.micro"
  
  tags = { 
    Name = "Terraform-EC2"
  }

}
