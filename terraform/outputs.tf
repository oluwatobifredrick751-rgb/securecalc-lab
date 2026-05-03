output "alb_dns_name" {
  value = aws_lb.alb.dns_name
}

output "ec2_instance_id" {
  value = aws_instance.securecalc_ec2.id
}

output "ec2_private_ip" {
  value = aws_instance.securecalc_ec2.private_ip
}