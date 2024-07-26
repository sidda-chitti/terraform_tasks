output "instance_ip2" {
  description = "ip of the aws instance"
  value       = aws_instance.my_second_vm.public_ip
}

output "instance_id2" {
  description = "id of the aws instance"
  value       = aws_instance.my_second_vm.id
}