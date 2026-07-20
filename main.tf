module "resource_groups" {

  source = "./modules/resource_groups"

  resource_groups = var.resource_groups
}

module "networking" {

  source = "./modules/networking"

  resource_group_name = module.resource_groups.resource_groups["rg-network"].name

  location = module.resource_groups.resource_groups["rg-network"].location

  vnet_name = "vnet-landingzone"

  address_space = ["10.0.0.0/16"]

  subnets = {

    subnet-web = {
      address_prefix = "10.0.1.0/24"
    }

    subnet-app = {
      address_prefix = "10.0.2.0/24"
    }

    subnet-db = {
      address_prefix = "10.0.3.0/24"
    }

    AzureBastionSubnet = {
      address_prefix = "10.0.4.0/26"
    }

  }
}

module "security" {

  source = "./modules/security"

  resource_group_name = module.resource_groups.resource_groups["rg-network"].name

  location = module.resource_groups.resource_groups["rg-network"].location

  network_security_groups = {

    web-nsg = {}

    app-nsg = {}

    db-nsg = {}

  }
  subnet_associations = {

    web = {
      subnet_id = module.networking.subnets["subnet-web"].id
      nsg_name  = "web-nsg"
    }

    app = {
      subnet_id = module.networking.subnets["subnet-app"].id
      nsg_name  = "app-nsg"
    }

    db = {
      subnet_id = module.networking.subnets["subnet-db"].id
      nsg_name  = "db-nsg"
    }

  }
}

module "compute" {

  source = "./modules/compute"

  resource_group_name = module.resource_groups.resource_groups["rg-compute"].name

  location = module.resource_groups.resource_groups["rg-compute"].location

  vm_name = "ubuntu-web-01"

  vm_size = var.vm_size

  subnet_id = module.networking.subnets["subnet-web"].id

  admin_username = var.vm_admin_username

  admin_password = var.vm_admin_password

}

module "route_tables" {

  source = "./modules/route_tables"

  resource_group_name = module.resource_groups.resource_groups["rg-network"].name

  location = module.resource_groups.resource_groups["rg-network"].location

  route_tables = {
    rt-web        = {}
    rt-app        = {}
    rt-db         = {}
    rt-management = {}
  }

  subnet_associations = {

    web = {
      subnet_id        = module.networking.subnets["subnet-web"].id
      route_table_name = "rt-web"
    }

    app = {
      subnet_id        = module.networking.subnets["subnet-app"].id
      route_table_name = "rt-app"
    }

    db = {
      subnet_id        = module.networking.subnets["subnet-db"].id
      route_table_name = "rt-db"
    }

  }

  tags = {}

}






