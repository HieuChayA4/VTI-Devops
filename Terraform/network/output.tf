output "subnets" {
  value = [for b in aws_subnet.main : main.id]
}
output "sg" {
  value = [for s in aws_security_group.this : this.id]
}