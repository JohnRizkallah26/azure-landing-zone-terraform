# Azure Landing Zone with Terraform

## Overview

This project demonstrates the deployment of a modular Azure Landing Zone using Terraform. The environment provisions core Azure infrastructure including networking, security, compute, and resource organization following Infrastructure as Code (IaC) best practices.

The project was built as part of my cloud engineering portfolio while preparing for the Microsoft Azure Administrator (AZ-104) certification.

---

## Architecture

(Add topology screenshot here)

---

## Features

- Modular Terraform architecture
- Multiple Resource Groups
- Virtual Network
- Segmented Subnets
- Network Security Groups
- NSG Associations
- Ubuntu Linux Virtual Machine
- Parameterized variables
- Reusable modules
- Infrastructure as Code

---

## Technologies

- Terraform
- Microsoft Azure
- Azure Virtual Network
- Azure Network Security Groups
- Azure Virtual Machines
- Git
- GitHub

---

## Project Structure

```text
modules/
├── compute/
├── networking/
├── resource_groups/
└── security/
```

---

## Deployment

```bash
terraform init
terraform plan
terraform apply
```

---

## Skills Demonstrated

- Infrastructure as Code (IaC)
- Azure Networking
- Terraform Modules
- Terraform Variables
- Resource Dependencies
- Azure Compute
- Network Security
- Version Control with Git

---
