# Monades - Terraform Modules Collection
## Introduction
Welcome to the Monades repository, a comprehensive library of reusable Terraform modules. This repository is designed to streamline infrastructure deployments by providing a range of modules for various use cases.

## Module Overview
- **auth0**: Module for Auth0 configurations.
- **azurerm**: Azure Resource Manager modules, including:
  - **keyvault_key**: For Azure Key Vault key management.
  - **synapse_link**: The synapse_link module focuses on integrating and linking services within Azure Synapse. It includes resources for setting up an Azure Synapse Integration Runtime, which is essential for data processing tasks, and configuring Synapse Linked Services for connecting to various data sources or services. The integration runtime resource is defined with customizable options like compute type and core count, while the linked service resource manages connections to external services, underpinned by the integration runtime.
  - **synapse_sql_pool**: The synapse_sql_pool module is designed for comprehensive management of Azure Synapse SQL Pools. It includes configuring the main SQL pool with various options such as SKU name and storage type, implementing extended auditing policies with detailed logging, setting up security alert policies with alert management and email notifications, and enabling vulnerability assessments which include recurring scans and storage configurations. 
  - **synapse_workspace**: The synapse_workspace module is designed to manage Azure Synapse Workspace resources effectively. It includes the primary Synapse Workspace setup, Azure AD and SQL AD admin configurations, firewall rules, and comprehensive security and auditing policies. The module sets up the workspace with Azure Data Lake Gen2 filesystem integration, configures administrators for both Azure AD and SQL, and establishes security measures such as firewall rules, extended auditing policies, security alert policies, and vulnerability assessments. 
- **ncloud**: Naver Cloud modules, including:
  - **access_control_group**: Provides an ACG(Access Control Group) resource. Available only in VPC.
  - **access_control_group_rule**: Provides an rule of ACG(Access Control Group) resource. Available only in VPC.
  - **auto_scaling_group**: Manages auto-scaling groups to automatically scale resources. Available in both Classic and VPC environments.
  - **auto_scaling_policy**:  Configures policies for auto-scaling groups that determine when and how to scale. Applies to both environments.
  - **auto_scaling_schedule**: Schedules scaling actions like scaling up or down at specific times. Available in both Classic and VPC environments.
  - **block_storage**: Provides a Block Storage resource. Available in both Classic and VPC environments.
  - **block_storage_snapshot**: Provides a ncloud Block Storage Snapshot resource. Available only in Classic.
  - **cloud_data_streaming_service_cluster**: Deploys and manages clusters for streaming data services, available only in VPC.
  - **cloud_data_streaming_service_config_group**: Manages configuration groups for cloud data streaming services, available only in VPC.
  - **init_script**: Provides an Init Script resource. Available in both Classic and VPC environments.
  - **kubernetes_cluster**: Sets up and manages Kubernetes clusters, available only in VPC.
  - **kubernetes_node_pool**: Manages node pools within Kubernetes clusters, available only in VPC.
  - **launch_configuration**: Defines configurations for launching instances within auto-scaling groups. Available in both Classic and VPC environments.
  - **load_balancer**: Provides load balancing across multiple compute resources. Available in both Classic and VPC environments.
  - **load_balancer_listener**: Manages listeners for load balancers, routing traffic according to rules. Available only in VPC.
  - **load_balancer_ssl_certificate**: Manages SSL certificates for load balancers, Available only in Classic.
  - **load_balancer_target_group**: Manages target groups for routing traffic to registered targets in VPC environments.
  - **login_key**: Provides a Login key resource. Available in both Classic and VPC environments.
  - **mongodb**: Deploys and configures MongoDB instances, available only in VPC.
  - **mssql**: Deploys and manages Microsoft SQL Server instances, available only in VPC.
  - **mysql**:
  - **nas_volume**:
  - **nat_gateway**: Provides Network Address Translation (NAT) services for instances in a private subnet to access the Internet or other services. Available only in VPC.
  - **network_acl**: Manages Network Access Control Lists (ACLs) which provide stateless network traffic filtering. Available only in VPC environments.
  - **network_acl_deny_allow_group**: Manages groups within Network ACLs that specify deny or allow rules. Available only in VPC.
  - **network_acl_rule**: Adds or removes rules in a Network ACL to control traffic in and out of associated subnets. Available only in VPC.
  - **network_interface**: Manages network interfaces (NICs), which are used to communicate within the cloud environment. Available only in VPC.
  - **placement_group**: Provides a Placement Group resource. Available in both Classic and VPC environments.
  - **port_forwarding_rule**: Provides a ncloud port forwarding rule resource. Available only in Classic.
  - **public_ip**: Provides a Public IP instance resource. Available in both Classic and VPC environments.
  - **redis**: TBD
  - **redis_config_group**: TBD
  - **route**: Manages routing tables within a specified route table. Available only in VPC.
  - **route_table**: Manages route tables, which define routing rules for network traffic. 
  - **route_table_association**: Associates subnets with a specified route table. Available only in VPC.
  - **search_engine_service_cluster**: TBD
  - **server**: Provides a Server instance resource. Available in both Classic and VPC environments.
  - **subnet**: Manages subnets within VPC, which partition the network to enhance security and performance. Available only in VPC.
  - **target_group_attachment**: Attaches targets instances to a target group in a load balancer, available only in VPC.
  - **vpc**: Sets up and manages Virtual Private Clouds (VPCs), offering isolated networking within Naver Cloud. Available only in VPC.
  - **vpc_peering**: Manages VPC peering connections, which allow networking connections between two VPCs to route traffic. Available only in VPC.
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