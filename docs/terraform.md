# Terraform Infrastructure

This directory contains the main Terraform configuration for a project. It serves as the root module that orchestrates the provisioning of infrastructure resources.

## Table of Contents

- [Architecture](#architecture)
- [Modules](#modules)
- [Prerequisites](#prerequisites)
- [Usage](#usage)

## Architecture

The architecture of the infrastructure is defined by the `terraform/` directory:

- `main.tf`: Main configuration.
- `outputs.tf`: Configuration outputs.
- `variables.tf`: Configuration variables.
- `versions.tf`: Configuration versions.
- `providers.tf`: Configuration providers.
- `modules/`: Configuration modules.

## Modules

The infrastructure is composed of the following modules instantiated in `main.tf`:

### Example - Hello World

- **Source**: `./modules/hello-world`
- **Purpose**: Serve as an example of a module.
- **Configuration**:
  - `main.tf`: Main module configuration.
  - `outputs.tf`: Module outputs.
  - `variables.tf`: Module variables.

### ACM

- **Source**: `./modules/acm`
- **Purpose**: ACM module for managing AWS Certificate Manager (ACM) certificates.
- **Configuration**:
  - `main.tf`: Main module configuration.
  - `outputs.tf`: Module outputs.
  - `variables.tf`: Module variables.

## Prerequisites

[Terraform](https://www.terraform.io/downloads.html) installed (version defined in `versions.tf`).

## Usage

1.  **Initialize**: Download providers and modules.

    ```bash
    terraform init
    ```

2.  **Plan**: Preview changes.

    ```bash
    terraform plan
    ```

3.  **Apply**: Create/Update resources.
    ```bash
    terraform apply
    ```
