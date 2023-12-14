# Monades - Terraform Modules Collection
## Introduction
Welcome to the Monades repository, a comprehensive library of reusable Terraform modules. This repository is designed to streamline infrastructure deployments by providing a range of modules for various use cases.

## Module Overview
- **auth0**: Module for Auth0 configurations.
- **azurerm**: Azure Resource Manager modules, including:
  - **keyvault_key**: For Azure Key Vault key management.
  - **synapse_link**: Modules for Azure Synapse Link.
  - **synapse_sql_pool**: The synapse_sql_pool module in the "Monades" repository is designed for comprehensive management of Azure Synapse SQL Pools. It includes configuring the main SQL pool with various options such as SKU name and storage type, implementing extended auditing policies with detailed logging, setting up security alert policies with alert management and email notifications, and enabling vulnerability assessments which include recurring scans and storage configurations. This module provides a robust and flexible approach to managing Azure Synapse SQL Pools with an emphasis on security and customization.
  - **synapse_workspace**: The synapse_workspace module in the "Monades" repository is designed to manage Azure Synapse Workspace resources effectively. It includes the primary Synapse Workspace setup, Azure AD and SQL AD admin configurations, firewall rules, and comprehensive security and auditing policies. The module sets up the workspace with Azure Data Lake Gen2 filesystem integration, configures administrators for both Azure AD and SQL, and establishes security measures such as firewall rules, extended auditing policies, security alert policies, and vulnerability assessments. This suite of resources ensures a secure, well-managed, and fully functional Synapse Workspace environment.

## Getting Started
Clone the repository and follow the individual module's README for setup instructions.

## Usage
Each module contains a README.md with specific usage instructions. Refer to these for detailed guidance on deploying each module. To regenerate the documentation after updating Terraform files, run the following command in the root of the repository:
```
terraform-docs markdown table . --output-file README.md
```
This command will update the README.md file with the latest inputs, outputs, and module descriptions as defined in your Terraform configuration files.

##  Contributing
We warmly welcome contributions to the Monades repository! If you're looking to contribute, here are some guidelines to get started:
- **Fork and Clone**: Fork the repository and clone it to your local machine.
- **Create a Branch**: For each new feature or fix, create a new branch.
- **Code Contributions**: Ensure your code adheres to the existing style and standards. Write clear, commented, and testable code.
- **Document Your Changes**: Update the README or documentation with details of changes to the interface, new variables, and so on.
- **Test Your Changes**: Ensure your code works as expected and does not break existing functionality.
- **Pull Request**: Submit a pull request (PR) with a clear list of what you've done. Include any relevant issue numbers if applicable.
- **Code Review**: Wait for the maintainers to review your PR. Be open to discuss potential modifications.
- **Stay Updated**: Keep your PR updated with the main branch of the repository.

Your contributions play a vital role in the continuous improvement of the project. Thank you for your support!

## Versioning
Version information for each module can be found in their respective versions.tf files.

## License
This project is licensed under MIT License.