# Designate a cloud provider, region, and credentials

provider "aws" {
  region = "us-east-1"
  shared_credentials_file = "c:/Users/Fable/.aws/credentials"
  profile = "gateway"
}

# provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami = "ami-087c17d1fe0178315"
  instance_type = "t2.micro"
  subnet_id = "subnet-e6fb18aa"
  count = 4
  tags = { Name = "udacity-t2-${count.index}" }
}

# provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "Udacity-M4" {
  ami = "ami-087c17d1fe0178315"
  instance_type = "m4.large"
  subnet_id = "subnet-e6fb18aa"
  count = 0
  tags = { Name = "udacity-m4-${count.index}" }
}
