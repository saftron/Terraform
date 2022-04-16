provider "aws" {
  version = "4.10.0"
  region  = var.region
}

variable "region" {
   default = "us-west-1"


}

data "aws_ami" "myami" { 
  most_recent = true 
  owners = ["amazon"]
  
 filter { 
  name = "name"
  values = ["amzn2-ami-hvm*"]
  }

}

data "aws_regions" "current" {
  all_regions = true
  filter {
    name = "endpoint"
    values = ["*us-west-*"]


    }
}


resource "aws_instance" "east_frontend" {
  #ami               = "ami-0dd0ccab7e2801812"
  ami               =  data.aws_ami.myami.id
  instance_type     = "t2.micro"
  count             = 2
  tags = { 
    Name = "My-Test-Instance-${count.index}"
  }
}

output "ami_details" { 
 value = data.aws_ami.myami
}

output "current" {
  value = data.aws_regions.current
}
