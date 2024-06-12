provider "aws"{
    region = var.region
}

resource "aws_vpc" "myvpc"{
    cidr_block = var.vpc_cidr_block
    tags = {
    Name = "${var.environment}-vpc"
  }
}


resource "aws_subnet" "dev-subnet-1"{
    vpc_id = aws_vpc.myvpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.availability_zone
    tags = {
        Name = "${var.environment}-subnet-1"
    }
}
