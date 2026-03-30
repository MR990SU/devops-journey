resource "aws_security_group" "sg" {
  name = var.sg_name
}
resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = var.cidr_value
  from_port         = var.port_from_port
  to_port           = var.port_to_port
  ip_protocol       = var.protocol_name
}
resource "aws_vpc_security_group_egress_rule" "allow_all_outbound" {
  security_group_id = aws_security_group.sg.id
  cidr_ipv4         = var.cidr_value
  ip_protocol       = var.out_protocol
}
resource "aws_instance" "example" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]

}
