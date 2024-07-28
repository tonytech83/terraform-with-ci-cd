# Create a service principal
az ad sp create-for-rbac --name "Azure-Terraform-GitHub-Actions-SP" --role contributor --scopes /subscriptions/<subscription-id> --sdk-auth

# Srtore State file in Azure resource group 
# 1. Create simple Resource group in Azure
# 2. Create storage account (hard disk)
az storage account create --name taskboardstorage --resource-group StorageRG --location northeurope --sku Standard_LRS --kind StorageV2
# 3. Create container (folder)
az storage container create --name taskboard-container --account-name taskboardstorage