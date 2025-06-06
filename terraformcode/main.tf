

module "resourcegroup" {
  source = "./resourcegroup"
  resource_group_name = var.resource_group_name
  location = var.location
}

module "storageaccount" {
  source = "./storageaccount"
  # depends_on = [ module.resourcegroup ]
  storage_name = var.storage_name
  resource_group_name = var.resource_group_name    #var.resource_group_name
  location = var.location
}

# module "vm" {
#   vnet= data.vnet
# }
# module "sql"{
#   vnet=data.vnet
# }