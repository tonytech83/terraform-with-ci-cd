# Create a service principal
az ad sp create-for-rbac --name "Azure-Terraform-GitHub-Actions-SP" --role contributor --scopes /subscriptions/<subscription-id> --sdk-auth