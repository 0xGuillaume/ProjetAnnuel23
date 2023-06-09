resource "aws_vpc" "esgi_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "esgisub" {
  vpc_id            = aws_vpc.esgi_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-1a"
}

resource "aws_eip" "esgi_eip" {
  vpc                       = true
  instance                  = aws_instance.esgi_instance.id
  associate_with_private_ip = aws_instance.esgi_instance.private_ip
}

resource "aws_security_group" "esgi_sg" {
  name   = "docker_security_group"
  vpc_id = aws_vpc.esgi_vpc.id

  ingress {
    from_port   = 8085
    to_port     = 8085
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 3000
    to_port     = 3000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8081
    to_port     = 8081
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8095
    to_port     = 8095
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 8096
    to_port     = 8096
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

}

resource "aws_internet_gateway" "esgi_igw" {
  vpc_id = aws_vpc.esgi_vpc.id
}

resource "aws_route_table" "esgi_rt" {
  vpc_id = aws_vpc.esgi_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.esgi_igw.id
  }
}

resource "aws_route_table_association" "esgi_rta" {
  subnet_id      = aws_subnet.esgisub.id
  route_table_id = aws_route_table.esgi_rt.id
}


