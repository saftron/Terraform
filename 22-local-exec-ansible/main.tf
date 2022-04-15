resource "aws_instance" "frontend" { 
  #ami = data.aws_ami.myami.id
  ami = "ami-05803413c51f242b7"
  instance_type = lookup(var.instance_type, terraform.workspace) 
  #count =  lookup(var.instance_count, terraform.workspace)
  key_name = var.key_name
  vpc_security_group_ids = [var.sg_id]
  tags = { 
    Name = local.default_name
  }


}


resource "null_resource" "ansible" { 
 provisioner "local-exec" { 
   command = <<EOF
    > ansible-ci.ini; 
    echo "[ansible-ci]"|tee -a ansible-ci.ini; 
    export ANSIBLE_HOST_KEY_CHECKING=False;
    echo "${aws_instance.frontend.public_ip}"|tee -a ansible-ci.ini;
    ansible-playbook --key-file=${var.pvt_key} -i ansible-ci.ini -u ubuntu ./ansible-code/webserver.yaml
   EOF 

 }
 triggers = {
  always_run = timestamp()
 }

depends_on = [aws_instance.frontend]

}
