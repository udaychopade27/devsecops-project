output "server1_ip" {
  description = "Public IP of Server 1 (Jenkins monitoring node)"
  value       = aws_instance.server1.public_ip
}

output "server2_ip" {
  description = "Public IP of Server 2 (app deployment node)"
  value       = aws_instance.server2.public_ip
}
