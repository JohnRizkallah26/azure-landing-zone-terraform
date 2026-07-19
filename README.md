# Azure Landing Zone with Terraform

## Overview

This project demonstrates the deployment of a modular Azure Landing Zone using Terraform. The infrastructure provisions networking, security, and compute resources in Microsoft Azure using Infrastructure as Code (IaC).

The project was built as part of my cloud engineering portfolio while preparing for the Microsoft Azure Administrator (AZ-104) certification.

---

# Solution Architecture

The following diagram illustrates the overall Azure Landing Zone architecture deployed by Terraform.

![Architecture Diagram](Snapshots/14-%20Final%20Architecture.png)

---

# Deployment Walkthrough

## Step 1 – Project Structure

The project is organized into reusable Terraform modules, making the infrastructure easier to maintain and scale.

![Project Structure](Snapshots/01-%20Project%20Structure.png)

---

## Step 2 – Resource Group Module

The Resource Group module creates the Azure resource groups that organize the environment.

![Resource Groups Module](Snapshots/02-%20Modules.png)

---

## Step 3 – Networking Module

The networking module provisions the virtual network, address space, and subnets.

![Networking Module](Snapshots/03-%20Modules.png)

---

## Step 4 – Security & Compute Modules

The security module creates the Network Security Groups while the compute module deploys the Ubuntu virtual machine and networking resources.

![Security & Compute Module](Snapshots/04-%20Modules.png)

---

## Step 5 – Terraform Plan

Terraform evaluates the deployment before making any changes.

![Terraform Plan Command](Snapshots/05-%20Terraform%20Plan.png)

Terraform then displays the resources that will be created.

![Terraform Plan Results](Snapshots/06-%20Terraform%20Plan.png)

---

## Step 6 – Infrastructure Deployment

Terraform provisions the Azure infrastructure.

![Terraform Apply](Snapshots/07-%20Terraform%20Apply.png)

Deployment completes successfully.

![Terraform Apply Complete](Snapshots/08-%20Terraform%20Apply%20Complete!.png)

---

## Step 7 – Azure Resource Verification

After deployment, Azure Resource Groups are created to logically organize networking, compute, security, monitoring, and storage resources.

![Resource Groups](Snapshots/09-%20Verification%20of%20resource%20groups.png)

---

## Step 8 – Azure Network Topology

The deployed Azure topology shows the virtual network, subnets, network security groups, network interface, and Ubuntu virtual machine.

![Network Topology](Snapshots/10-%20Network%20Topology.png)

---

## Step 9 – Virtual Network Configuration

The virtual network is segmented into dedicated subnets for web, application, database, and Azure Bastion resources.

![Virtual Network](Snapshots/11-%20Virtual%20Network%20Subnets.png)

---

## Step 10 – Network Security

Network Security Groups provide traffic filtering between Azure resources.

![Network Security Groups](Snapshots/12-%20Network%20Security%20Groups.png)

---

## Step 11 – Ubuntu Virtual Machine

Ubuntu Linux virtual machine deployed through Terraform.

![Ubuntu VM](Snapshots/13-%20Ubuntu%20VM.png)

---

# Technologies Used

- Terraform
- Microsoft Azure
- Azure Virtual Network
- Azure Virtual Machines
- Azure Network Security Groups
- Git
- GitHub

---

# Skills Demonstrated

- Infrastructure as Code (IaC)
- Terraform Modules
- Azure Networking
- Azure Compute
- Network Security
- Infrastructure Automation
- Git Version Control

---

# Future Enhancements

Planned improvements include:

- Azure Bastion Host
- Azure Key Vault
- Azure Storage Account
- Azure Monitor
- Log Analytics Workspace
- Load Balancer
- Virtual Machine Scale Sets
- GitHub Actions CI/CD
