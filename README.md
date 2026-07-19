# Azure Landing Zone with Terraform

## Overview

This project demonstrates the deployment of a modular Azure Landing Zone in Microsoft Azure using **Terraform Infrastructure as Code (IaC)**.

The environment was built using reusable Terraform modules that provision Azure networking, security, compute resources, and supporting infrastructure following Azure best practices.

## Technologies

- Microsoft Azure
- Terraform
- Infrastructure as Code (IaC)
- Azure Virtual Network
- Azure Network Security Groups
- Ubuntu Linux Virtual Machine
- Git & GitHub

---

# Solution Architecture

The following diagram illustrates the overall architecture deployed by Terraform.

![Architecture Diagram](Snapshots/15-%20Final%20Architecture.png)

---

# Deployment Walkthrough

## Step 1 – Project Structure

The project is organized into reusable Terraform modules, making the infrastructure easy to maintain, extend, and reuse.

![Project Structure](Snapshots/01-%20Project%20Structure.png)

---

## Step 2 – Terraform Configuration

The root `main.tf` file orchestrates the deployment by calling reusable modules responsible for Resource Groups, Networking, Security, and Compute.

![Terraform Configuration](Snapshots/02-%20Main.tf%20file.png)

---

## Step 3 – Resource Group Module

The Resource Group module provisions the Azure Resource Groups used throughout the Landing Zone.

![Resource Group Module](Snapshots/03-Resource%20group%20module.png)

---

## Step 4 – Networking Module

The Networking module provisions:

- Virtual Network
- Address Space
- Web Subnet
- Application Subnet
- Database Subnet
- Azure Bastion Subnet

![Networking Module](Snapshots/04-Networking%20module.png)

---

## Step 5 – Security Module

The Security module creates Azure Network Security Groups (NSGs) and associates them with the appropriate subnets while defining inbound security rules.

![Security Module](Snapshots/05-%20Security%20module.png)

---

## Step 6 – Compute Module

The Compute module deploys the Ubuntu Linux Virtual Machine together with its Network Interface.

![Compute Module](Snapshots/06-%20Compute%20module.png)

---

## Step 7 – Terraform Plan

Terraform generates an execution plan before deployment, allowing infrastructure changes to be reviewed before any Azure resources are created.

![Terraform Plan](Snapshots/07-%20Terraform%20Plan.png)

---

## Step 8 – Terraform Apply

The deployment is initiated using Terraform Apply after reviewing the execution plan.

![Terraform Apply](Snapshots/08-%20Terraform%20Apply.png)

Terraform provisions all Azure resources successfully.

![Terraform Apply Complete](Snapshots/09-%20Terraform%20Apply%20Complete!.png)

---

## Step 9 – Azure Resource Groups

Terraform automatically provisions dedicated Resource Groups to logically separate infrastructure components.

- rg-network
- rg-compute
- rg-storage
- rg-security
- rg-monitoring
- rg-backup

![Azure Resource Groups](Snapshots/10-%20Verification%20of%20resource%20groups.png)

---

## Step 10 – Virtual Network Topology

The deployed Azure topology shows the relationships between the Virtual Network, Network Interface, Ubuntu Virtual Machine, and Network Security Groups.

![Network Topology](Snapshots/11-%20Network%20Topology.png)

---

## Step 11 - Virtual Network Configuration

The Virtual Network contains dedicated subnets for each infrastructure tier.

| Subnet | Address Space |
|---------|---------------|
| Web | 10.0.1.0/24 |
| Application | 10.0.2.0/24 |
| Database | 10.0.3.0/24 |
| Azure Bastion | 10.0.4.0/26 |

![Virtual Network](Snapshots/14-Virtual%20Network%20Subnets.png)

---

## Step 12 - Network Security Groups

Each subnet is protected using dedicated Azure Network Security Groups.

- web-nsg
- app-nsg
- db-nsg

![Network Security Groups](Snapshots/12-%20Network%20Security%20Groups.png)

---

## Step 13 - Ubuntu Virtual Machine

Terraform deploys an Ubuntu Linux virtual machine inside the Web subnet.

The VM is configured with:

- Ubuntu 24.04 LTS
- Azure Network Interface
- Private Networking
- Managed by Terraform

![Ubuntu VM](Snapshots/13-%20Ubuntu%20VM.png)

---

# Skills Demonstrated

- Terraform Infrastructure as Code
- Azure Landing Zone Design
- Modular Terraform Architecture
- Azure Resource Groups
- Azure Virtual Networking
- Azure Network Security
- Azure Compute
- Infrastructure Automation
- Git Version Control
- Cloud Architecture

---

# Lessons Learned

During this project I gained hands-on experience with:

- Designing reusable Terraform modules
- Building Azure networking from scratch
- Deploying Linux virtual machines with Terraform
- Managing Infrastructure as Code workflows
- Validating infrastructure deployments
- Organizing cloud resources using Azure Resource Groups

---

# Future Improvements

Planned enhancements include:

- Azure Bastion deployment
- Azure Monitor
- Log Analytics Workspace
- Azure Key Vault
- Azure Storage Accounts
- Azure Backup
- GitHub Actions CI/CD Pipeline
- Virtual Machine Scale Sets
- Azure Load Balancer
