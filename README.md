# terraform-tier-promotion

## Overview

Proof-of-concept for using Git pipeline (GitHub Actions in this case) to do tier promotion for Terraform Infrastructure-as-Code, where infrastructure developers can send their codes through the different deployment tiers (eg: Dev, Test, and Prod) without code change, with validation and automated testing in a Trunt-based Git workflow.  The

This theoretically works with both Terraform VCS- and CLI- / API-driven workflows (as the diagrams below show), although only the latter (more specifically CLI) has been ttested.

## Features

- Trunk-based
- Optionally ephemeral Dev resources for infrastructure development
- Release and Hotfix branches
- Automated testing
- Possible application testing
- Manual approval to Prod

## Test It Out!

- You'll need
    - to fork the repository
    - 3 Terraform Workspaces (set their names in ***/tiers/\<tier-name\>***)
    - at least 1 AWS account (you can target all Workspaces to 1 account, or each to 1 account, or any combination as long as you write your Terraform code correspondingly)
- GitHub setup
    - Repository variables
    - Environments
    - Branch policies (for GitHub Action, manual approval can be configured here)
- Terraform setup
    - Workspace environment variables

## Workflow Diagrams

- ![CLI- / API-Driven](./images/cli_api.png "CLI- / API-Driven")
- ![VCS-Driven](./images/vcs.png "VCS-Driven")
