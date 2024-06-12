output vpc-id {
  value       = aws_vpc.myvpc.id
  
}
output subnet-id {
   value = aws_subnet.dev-subnet-1.id
}
# output existingvpc-id {
#    value = aws_vpc.existingvpc
# }
# output subnetexistingvpc {
#     value = aws_subnet.dev-subnet-forexistingvpc
# }
