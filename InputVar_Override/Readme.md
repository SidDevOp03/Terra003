
# Option-1 (Always provide -var for both plan and apply)
# Review the terraform plan
terraform plan -var="resoure_group_name=demorg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet" 

# Create Resources (optional - We are just learning concept)
terraform apply -var="resoure_group_name=demorg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet" 
```

## Step-03: Generate Terraform Plan and use that using Terraform Apply
```t
# Option-2 (Generate plan file with -var and use that with apply)
# Generate Terraform plan file
terraform plan -var="resoure_group_name=demorg" -var="resoure_group_location=westus" -var="virtual_network_name=demovnet" -var="subnet_name=demosubnet"  -out v1.plan

# Terraform Show
terraform show v1.plan

# Create / Deploy Terraform Resources using Plan file
terraform apply v1.plan 