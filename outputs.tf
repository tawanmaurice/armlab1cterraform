# Explanation: Outputs are your mission report—what got built and where to find it.
output "armlab1c_vpc_id" {
  value = aws_vpc.armlab1c_vpc01.id
}

output "armlab1c_public_subnet_ids" {
  value = aws_subnet.armlab1c_public_subnets[*].id
}

output "armlab1c_private_subnet_ids" {
  value = aws_subnet.armlab1c_private_subnets[*].id
}

output "armlab1c_ec2_instance_id" {
  value = aws_instance.armlab1c_ec201.id
}

output "armlab1c_rds_endpoint" {
  value = aws_db_instance.armlab1c_rds01.address
}

output "armlab1c_sns_topic_arn" {
  value = aws_sns_topic.armlab1c_sns_topic01.arn
}

output "armlab1c_log_group_name" {
  value = aws_cloudwatch_log_group.armlab1c_log_group01.name
}