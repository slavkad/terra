provider "aws" {
  region     = "us-east-1"
}

resource "aws_instance" "web" {
    ami = "ami-0b69ea66ff7391e80"
    instance_type = "t2.nano"

    tags = {
        Name = "MyAmazonLinuxNano"
        ProvisionedBy = "Terraform"
    }
}
