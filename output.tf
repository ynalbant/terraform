output vpc-id {
  value       = aws_vpc.myvpc.id
  
}
output subnet-id {
   value = aws_subnet.dev-subnet-1.id
}