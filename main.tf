  terraform {
    required_providers {
      aws = {
        source  = "hashicorp/aws"
        version = "5.19.0"  
      }
    }
  }
 provider "aws" {
    region = "us-east-1" 
    access_key = "AKIAZ7SALFO4U6JXMFZ" 
    secret_key = "1ZvUG6UGKQskb1kU3gOjy9yeex+DXg757vC3dWm"
  }
 resource "aws_s3_bucket" "bucketsample34899" {
     bucket = "bucketsample3498"
     acl    = "private" 

     tags = {
       Name = "bucketsam123"
       Environment = "Dev"
     }
 }
