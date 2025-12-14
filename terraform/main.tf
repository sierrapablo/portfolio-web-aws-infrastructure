# Example main
# Use this file to define the resources you want to create.

# Example: this module uses default module variables
module "hello_world_module" {
  source = "./modules/hello-world"
}

# Example: this module uses variables defined in terraform variables.tf
module "hello_world_variables" {
  source  = "./modules/hello-world"
  message = var.example # If you set the variables in terraform.tfvars, the value will be used
}

# Example: this module uses variables defined here
module "hello_world_main" {
  source  = "./modules/hello-world"
  message = "Hello from main.tf!"
}
