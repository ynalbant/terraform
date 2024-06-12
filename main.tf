provider "aws"{
    region = var.region
}

resource "aws_vpc" "dev-vpc"{
    cidr_block = var.vpc_cidr_block
    tags = {
    Name = "${var.environment}-vpc"
  }
}


resource "aws_subnet" "dev-subnet-1"{
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone = var.availability_zone
    tags = {
        Name = "${var.environment}-subnet-1"
    }
}

resource "aws_route_table" "dev-rtb"{
    vpc_id = aws_vpc.dev-vpc.id
    route {
        cidr_block = var.rtb_cidr_block
        gateway_id = aws_internet_gateway.dev-igw.id
    }
    tags = {
        Name: "${var.environment}-rtb"
    }
}

resource "aws_internet_gateway" "dev-igw"{
    vpc_id = aws_vpc.dev-vpc.id
    tags = {
        Name: "${var.environment}-igw"
    }
}
