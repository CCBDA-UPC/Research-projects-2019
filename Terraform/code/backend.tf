/*
Code backend partially from https://blog.powerupcloud.com/terraform-centralize-statefile-and-state-lock-part-ii-e6d8fce9850c
*/

# Bucket backend
terraform {
	backend "s3" {
		bucket = "mybucket186998493"
		key    = "terrafrom.tfstate"
		region = "eu-west-1"
		encrypt = "true"
		dynamodb_table = "terraform-state-lock-dynamo"
	}
}
