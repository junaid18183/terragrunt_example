locals {
//   aws_region = get_env("AWS_DEFAULT_REGION")
  stack_name = basename(dirname(get_terragrunt_dir()))
  env_name = replace(path_relative_to_include(), "environments/", "")
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