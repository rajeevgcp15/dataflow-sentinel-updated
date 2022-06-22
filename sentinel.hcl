mock "tfplan/v2" {
  module {
    source = "mock-tfplan-v2.sentinel"
  }
}
module "tfplan-functions" {
    source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

