module "rgs" {
source = "../CHILD_MODULE/rg"
rg_law_name = "rg-banking-dev"
law_location = "westeurope"
  
}

module "log_analytics_workspace" {
  depends_on     = [module.rgs]
  source         = "../CHILD_MODULE/log_anal"
  rg_law_name    = "rg-banking-dev"
  law_location   = "westeurope"
  log_name       = "devbanking01"
}
