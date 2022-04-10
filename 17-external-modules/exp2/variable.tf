variable "region" { 
  default = "us-east-2"
}

variable "key_name" { 
  default = "jenkins"
}

variable "sg_id" { 
  default = "sg-00d60db77cf13e360"
}

variable "subnet_id" { 
  default = "subnet-aad148c1"
}

variable "ami" { 
  type = map
  default = { 
  "us-east-1" = "ami-0947d2ba12ee1ff75"
  "us-east-2" = "ami-0dd0ccab7e2801812"
  "us-west-1" = "ami-0e4035ae3f70c400f"
  "ap-south-1" = "ami-0e306788ff2473ccb"
  }
}

