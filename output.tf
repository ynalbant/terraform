output vpc-id {
  value       = aws_vpc.dev-vpc.id
  
}
output subnet-id {
   value = aws_subnet.dev-subnet-1.id
}
output igw {
   value = aws_internet_gateway.dev-igw.id
}
output rtb {
   value = aws_route_table.dev-rtb.id
}