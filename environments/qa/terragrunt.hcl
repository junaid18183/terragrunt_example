include {
  path = find_in_parent_folders()
}

terraform {
  source = "../../src"
}

inputs = {
  env_name = "qa"
}