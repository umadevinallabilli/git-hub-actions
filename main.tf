provider "aws" {
  region = "us-east-1"
}

# Create an S3 bucket
resource "aws_s3_bucket" "example" {
  bucket = "my-unique-bucket-name-terraform"
  acl    = "private"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0"   # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"
  key_name      = "your-key-name"            # Replace with your EC2 key pair name

  tags = {
    Name = "ExampleEC2Instance"
  }
}
