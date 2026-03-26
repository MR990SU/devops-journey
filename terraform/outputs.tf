output "Security_Grup_id" {
  description = "This is for sg id"
  value       = aws_security_group.sg.id
}
output "Security_Group_name" {
  description = "This is for sg name"
  value       = aws_security_group.sg.name
}
output "Ec2_Public_Ip" {
  description = "This is for ec2 public ip"
  value       = aws_instance.example.public_ip
}
output "EC2_Instance_Id" {
  description = "This is for ec2 id"
  value       = aws_instance.example.id
}
