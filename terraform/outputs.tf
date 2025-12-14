# Example outputs

# Output from module variables
output "hello_world_module" {
  value = module.hello_world_module.message
}

# Output from terraform variables
output "hello_world_variables" {
  value = module.hello_world_variables.message
}

# Output from main.tf variables
output "hello_world_main" {
  value = module.hello_world_main.message
}
