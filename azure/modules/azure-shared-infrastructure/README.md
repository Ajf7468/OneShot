#Remote State Command#
TBA (Local State for now)

#Plan Command#
terraform plan -var-file="../shared.tfvars" -out ./plan

#Destroy Plan#
terraform plan -destroy -var-file="../shared.tfvars" -out ./plan

#Apply Plan#
terraform apply "./plan"

