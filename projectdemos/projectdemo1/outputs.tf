output "instance_ip" {
  description = "ip of the aws instance"
  value       = module.my_ec2.instance_ip2
}

output "instance_id" {
  description = "id of the aws instance"
  value       = module.my_ec2.instance_id2
}