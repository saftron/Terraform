module "frontend" { 
  source = "./ec2"
  amione = "ami-0e4035ae3f70c400f"
}



module "backend" { 
  source = "./ec2"
  ec2_count = 2 
  amione = "ami-0947d2ba12ee1ff75"

}
