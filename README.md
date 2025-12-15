# IaC Repository for www.sierrapablo.dev web

Template for IaC with Terraform

[![Latest Release](https://img.shields.io/github/v/release/sierrapablo/portfolio-web-aws-infrastructure?logo=github&style=flat-square)](https://github.com/sierrapablo/portfolio-web-aws-infrastructure/releases)
[![Stars](https://img.shields.io/github/stars/sierrapablo/portfolio-web-aws-infrastructure?logo=github&style=flat-square)](https://github.com/sierrapablo/portfolio-web-aws-infrastructure/stargazers)
[![Terraform Validate](https://github.com/sierrapablo/portfolio-web-aws-infrastructure/actions/workflows/validate.yaml/badge.svg)](https://github.com/sierrapablo/portfolio-web-aws-infrastructure/actions/workflows/validate.yaml)
[![Format Code](https://github.com/sierrapablo/portfolio-web-aws-infrastructure/actions/workflows/format.yaml/badge.svg)](https://github.com/sierrapablo/portfolio-web-aws-infrastructure/actions/workflows/format.yaml)

> **🚧 Active Development**: This project is currently under active construction. Features, modules, and architecture are evolving and are subject to change.

## Overview

This repository contains the Infrastructure as Code (IaC) for the www.sierrapablo.dev web.

## Repository Structure

The project is organized into several key directories, each with its own specific documentation:

| Directory                | Description                                                                                 | Documentation                                     |
| ------------------------ | ------------------------------------------------------------------------------------------- | ------------------------------------------------- |
| **`terraform/`**         | The core infrastructure definition, including the `main` configuration and provider setups. | [View Documentation](./docs/terraform.md)         |
| **`terraform/modules/`** | Reusable, self-contained Terraform modules.                                                 | [View Documentation](./docs/terraform-modules.md) |
| **`ci/`**                | Jenkins pipelines managing the release lifecycle and versioning (Gitflow).                  | [View Documentation](./docs/ci.md)                |
| **`.github/workflows/`** | GitHub Actions workflows for continuous integration (Format, Validate) and GitHub Releases. | [View Documentation](./docs/github-workflows.md)  |

### Features

- **Modular Architecture**: Leveraging Terraform modules to create reusable components.
- **Automated Quality Checks**:
  - **Validation**: Terraform syntax and configuration validation on every Pull Request.
  - **Formatting**: Automatic formatting of Terraform code (`terraform fmt`) to ensure style consistency.
- **Release Automation**:
  - **Gitflow Strategy**: Automated version bumping, tagging, and changelog generation using Jenkins and GitHub Actions.

### Getting Started

To get started, initialize a repository based on this template.

## Credits

**Pablo Sierra** - _Initial work & Maintenance_ - [sierrapablo](https://github.com/sierrapablo)

## License

This project is licensed under the **MIT License** - see the [LICENSE](./LICENSE) file for details.
