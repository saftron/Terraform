~~~
terraform init 

cat .terraform.lock.hcl 
terraform plan 
terraform apply 


terraform plan 
terraform plan -out build-plan 
cat build-plan

terraform show build-plan 
terraform plan -destroy -out destroy-plan 
terraform apply build-plan

terraform show 
terraform refresh 
terraform show 
terraform apply 
terraform apply destroy-plan 
terraform plan -destroy -out destroy-plan 
terraform apply destroy-plan 


terraform apply --auto-approve 
