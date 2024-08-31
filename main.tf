# Specify the Terraform version
terraform {
  required_version = ">= 1.0.0"
}

# Configure the AWS provider
provider "aws" {
  region = "us-west-2"  # You can change this to your preferred region
}

# Create a simple EC2 instance
resource "aws_instance" "hello_world" {
  ami           = "ami-005e54dee72cc1d00"  # Amazon Linux 2 AMI (change according to your region)
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorldInstance"
  }
}

# Output the instance ID
output "instance_id" {
  value = aws_instance.hello_world.id
}

# Output a Hello World message
output "hello_world_message" {
  value = "Hello, World! Your EC2 instance is ready!"
}
