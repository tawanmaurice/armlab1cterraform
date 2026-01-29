Lab 1C — Terraform AWS Infrastructure Project
EC2 Application → Private RDS | Secrets Management | Observability | Incident Alerting
Overview

This repository demonstrates how to design and deploy a production-style AWS workload using Terraform and Infrastructure as Code (IaC) best practices.

Rather than building infrastructure manually in the AWS Console, this project provisions a repeatable, auditable, and secure cloud environment that reflects how modern engineering teams operate in real-world environments.

The focus is on network isolation, least-privilege access, secrets management, monitoring, and incident response.

Architecture Summary

The system deploys an application hosted on EC2 that securely connects to a private RDS database.
All infrastructure is defined using Terraform and validated through CLI-based verification and simulated incident recovery.

Key design goals:

No hard-coded secrets

Private database access only

Observability built in from day one

Automated alerting and recovery validation

Infrastructure Components
Networking

Custom VPC with public and private subnets

Internet Gateway for public access

NAT Gateway for outbound access from private subnets

Explicit route tables and subnet associations

Compute

EC2 application host deployed in a public subnet

IAM role and instance profile using least-privilege permissions

Data Layer

Amazon RDS deployed in private subnets

DB subnet group for isolation

Security group allowing database access only from the EC2 security group

Configuration & Secrets

AWS Systems Manager Parameter Store

Stores non-sensitive configuration values under /lab/db/*

AWS Secrets Manager

Securely stores database credentials

No credentials committed to source control

Observability & Incident Alerting

Centralized CloudWatch log group

CloudWatch alarm configured to detect database connectivity failures

Trigger: DBConnectionErrors ≥ 3 within 5 minutes

SNS topic with subscription for automated incident notifications

Validation & Operational Readiness

This project includes operational validation beyond successful deployment:

Terraform plan and apply verification

AWS CLI validation of resources and logging

Simulated incident to confirm:

Alarm triggers correctly

Alert notifications are sent

Service recovers after remediation

This mirrors real on-call and incident response workflows used in production teams.

What This Project Demonstrates

Infrastructure as Code with Terraform

Secure AWS networking design

Least-privilege IAM implementation

Secrets and configuration management at scale

CloudWatch logging and alerting

Incident detection and recovery validation

Production-ready AWS architecture thinking
