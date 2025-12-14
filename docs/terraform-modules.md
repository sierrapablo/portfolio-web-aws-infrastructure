# Terraform Modules

Modules in Terraform are self-contained packages of Terraform configurations that are managed as a single unit. They allow you to build complex infrastructure by breaking it down into smaller, reusable components.

You can find more information about modules in the [Terraform documentation](https://www.terraform.io/language/modules).

## Usage

1. Create a new module in the `terraform/modules` directory.
2. Add the module to the `terraform/main.tf` file.
3. Add the module to the `terraform/terraform.tfvars` file.

## Example module
There's an example module in the [`terraform/modules/hello_world`](../terraform/modules/hello_world) directory.