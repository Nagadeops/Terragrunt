include "root"{
  path = find_in_parent_folders("common.hcl")
}

terraform {
    source="../../../..//modules/app"
    extra_arguments "custom_vars" {
    commands = [
      "init",
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]
    required_var_files = ["${get_parent_terragrunt_dir()}/configuration/${basename(dirname(dirname(get_terragrunt_dir())))}/${basename(dirname(get_terragrunt_dir()))}/${basename(get_terragrunt_dir())}/app.tfvars"]
    
  }
}


dependency "network" {
     config_path = "../network"
}

inputs = {
   app_subnet_id = dependency.network.outputs.private_subnets_id
}
