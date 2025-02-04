# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

output "rds_hostname" {
  description = "RDS instance hostname"
  value       = aws_db_instance.education.address
  sensitive   = false
}

output "rds_port" {
  description = "RDS instance port"
  value       = aws_db_instance.education.port
  sensitive   = false
}

output "rds_username" {
  description = "RDS instance root username"
  value       = aws_db_instance.education.username
  sensitive   = false
}

output "rds_replica_connection_parameters" {
  description = "RDS replica instance connection parameters"
  value       = "-h ${aws_db_instance.education_replica.address} -p ${aws_db_instance.education_replica.port} -U ${aws_db_instance.education_replica.username} postgres"
}
