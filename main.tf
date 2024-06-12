provider "aws"{
    region = var.region
}

resource "aws_vpc" "myvpc"{
    cidr_block = "10.0.0.0/16"
    tags = {
    Name = "yunus-vpc"
  }
}


resource "aws_subnet" "dev-subnet-1"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = "10.0.10.0/24"
    availability_zone = "us-east-1a"
    tags = {
        Name = "yunus-subnet-1"
    }
}

#data sources > used for query existing reources and companants from aws , here is the link for filters and parameters to use for specifiying the resource 
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpc

# data "aws_vpc" "existingvpc" {
#         id = "vpc-0844554ccbbe75367"
# }

# resource "aws_subnet" "dev-subnet-forexistingvpc"{
#     vpc_id = data.aws_vpc.existingvpc.id
#     cidr_block = "10.0.0.0/24"
#     availability_zone = "us-east-1a"
#     tags = {
#         Name = "yunus-subnet-2"
#     }
# }