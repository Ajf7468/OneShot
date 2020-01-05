 **Examples below are for the 'General Hospital' Tenant in the 'US' region, the 'QA' environment, in instance 'A'**


## Remote State Command ##  
./init_backend.sh -t generalhospital -e qa -r us -i a

## Plan Command##  
terraform plan -var-file="../tfvars/generalhospital-us-qa-a.tfvars" -out ./plan

## Destroy Plan##  
terraform plan -destroy -var-file="../tfvars/generalhospital-us-qa-a.tfvars" -out ./plan

## Apply Plan##  
terraform apply "./plan"

