locals {
  aws_region  = get_env("AWS_DEFAULT_REGION", "us-east-1")
  stack_name  = get_env("STACK_NAME", basename(dirname(get_terragrunt_dir())))
  environment = replace(path_relative_to_include(), "environments/", "")
  common_vars = read_terragrunt_config(find_in_parent_folders("common.hcl", "common.hcl"), { inputs = {} })
  env_vars    = read_terragrunt_config(find_in_parent_folders("env.hcl", "env.hcl"), { inputs = {} })
}

// remote_state {
//   backend = "s3"
//   generate = {
//     path      = "backend.tf"
//     if_exists = "overwrite_terragrunt"
//   }
//   config = {
//     bucket = "${local.stack_name}-${local.aws_region}-${get_aws_account_id()}-tfstate"
//     key    = "infra/terraform.tfstate"
//     region = local.aws_region
//     encrypt = true
//   }
// }



terraform {
  extra_arguments "common_vars" {
    commands = get_terraform_commands_that_need_vars()
  }
}

inputs = merge(
  local.common_vars.inputs,
  local.env_vars.inputs,
  {
    environment = local.environment
    aws_region  = local.aws_region
    stack_name  = local.stack_name
  }
)