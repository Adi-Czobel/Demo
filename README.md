# Demo

[![CI](https://github.com/Adi-Czobel/Demo/actions/workflows/ci.yml/badge.svg?branch=main)](https://github.com/Adi-Czobel/Demo/actions/workflows/ci.yml)
[![Policy Checks](https://github.com/Adi-Czobel/Demo/actions/workflows/policy.yml/badge.svg?branch=main)](https://github.com/Adi-Czobel/Demo/actions/workflows/policy.yml)
[![Release](https://github.com/Adi-Czobel/Demo/actions/workflows/release.yml/badge.svg)](https://github.com/Adi-Czobel/Demo/actions/workflows/release.yml)
[![Security Checks](https://github.com/Adi-Czobel/Demo/actions/workflows/security.yml/badge.svg?branch=main)](https://github.com/Adi-Czobel/Demo/actions/workflows/security.yml)
[![Dependabot Badge](https://github.com/Adi-Czobel/Demo/actions/workflows/dependabot-badge.yml/badge.svg?branch=main)](https://github.com/Adi-Czobel/Demo/actions/workflows/dependabot-badge.yml)
[![Update Badges](https://github.com/Adi-Czobel/Demo/actions/workflows/update-badges.yml/badge.svg?branch=main)](https://github.com/Adi-Czobel/Demo/actions/workflows/update-badges.yml)




> **Note:** The Dependabot badge will update once the `dependabot-badge.yml` workflow runs at least once.

A comprehensive infrastructure-as-code repository with automated security and quality checks.

---

## 🔧 Features

- **Infrastructure as Code**: Terraform configurations for cloud resources  
- **Container Support**: Docker configurations with best practices  
- **Automated Security Scanning**: Policy checks and vulnerability assessments  
- **Dependency Management**: Automated updates via Dependabot  
- **Quality Assurance**: Code formatting and validation checks  

---

## 🚀 CI/CD Pipeline

This repository includes a robust CI/CD pipeline that automatically validates code quality and security.

### **Policy Checks Workflow**
The **Policy Checks** workflow (`policy.yml`) runs automatically on every pull request and includes:

#### 🐳 Dockerfile Linting  
- **Runs when**: Dockerfile is present in the repository  
- **Tool**: Hadolint  
- **Purpose**: Validates Docker best practices and catches common mistakes  
- **Checks**: Security vulnerabilities, optimization opportunities, and style consistency  

#### 🏗️ Terraform Validation  
- **Runs when**: `.tf` files are present  
- **Tools**: Terraform CLI with HashiCorp's setup action  
- **Validations**:  
  - Format Check: `terraform fmt -check`  
  - Initialization: Validates syntax without remote state  
  - Validation: Checks for resource configuration errors  

#### 🔒 Security Scanning (Checkov)  
- **Runs when**: Terraform or Kubernetes YAML files are present  
- **Tool**: Checkov by Bridgecrew  
- **Scope**: Terraform configurations & Kubernetes manifests  
- **Purpose**: Detects misconfigurations, compliance violations, and best practice deviations  

---

## 🤖 Dependency Management

Dependabot is configured to automatically monitor and update dependencies:  
- GitHub Actions: Weekly updates to workflow dependencies  
- NPM packages: Weekly updates for Node.js dependencies  
- Python packages: Weekly updates for pip dependencies  
- Limit: Maximum 10 open PRs to prevent spam  

---

## 📋 Workflow Triggers

### Automatic  
- Pull Requests: All policy checks run automatically  
- Scheduled Updates: Dependabot runs weekly  

### Manual  
- **Workflow Dispatch**: Any workflow can be triggered manually from the [Actions tab](https://github.com/Adi-Czobel/Demo/actions)  

---

## 🛡️ Security Features

- Multi-layer Scanning: Infrastructure, container, and dependency security checks  
- Least Privilege: Minimal required permissions in Actions (`contents: read`)  
- Automated Updates: Security patches via Dependabot  
- Configuration Validation: Prevents misconfigured deployments  

---

## 📊 Monitoring & Reporting

- **Badge Status**: Live CI/CD status badges in README  
- **Detailed Logs**: Job-level logs for troubleshooting  
- **Pull Request Checks**: Block merges if checks fail  
- **Security Alerts**: Dependabot creates security advisories for vulnerable dependencies  

---

## 🔧 Local Development

**Prerequisites**  
- Terraform >= 1.0  
- Docker (if using containers)  
- Hadolint (for local linting)  

**Run Checks Locally**  
```bash
# Terraform validation
terraform fmt -check -recursive
terraform init
terraform validate

# Docker linting (local)
hadolint Dockerfile

# Or using Docker
docker run --rm -i hadolint/hadolint < Dockerfile
