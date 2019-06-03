provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}

resource "aws_instance" "myinstance" {
  ami           = "ami-08935252a36e25f85"
  instance_type = "t2.micro"
}

/* 
Bucket + Cloudfront code partially from: https://github.com/tomfa/terraform-sandbox/blob/master/s3-webfiles-with-cloudfront/main.tf
*/

resource "aws_s3_bucket" "mybucket" {
    bucket = "${var.bucket_name}"
    acl = "public-read"
		region = "eu-west-1"

    website {
        redirect_all_requests_to = "index.html"
    }

    cors_rule {
        allowed_headers = ["*"]
        allowed_methods = ["PUT","POST"]
        allowed_origins = ["*"]
        expose_headers = ["ETag"]
        max_age_seconds = 3000
    }

    policy = <<EOF
{
    "Version": "2008-10-17",
    "Statement": [
        {
            "Sid": "PublicReadForGetBucketObjects",
            "Effect": "Allow",
            "Principal": {
                "AWS": "*"
            },
            "Action": "s3:GetObject",
            "Resource": "arn:aws:s3:::${var.bucket_name}/*"
        }
    ]
}
EOF
}

resource "aws_cloudfront_distribution" "distribution" {
    origin {
        domain_name = "${aws_s3_bucket.mybucket.website_endpoint}"
        origin_id   = "S3-${aws_s3_bucket.mybucket.bucket}"

        custom_origin_config  {
            http_port = 80
            https_port = 443
            origin_protocol_policy = "match-viewer"
            origin_ssl_protocols = ["TLSv1", "TLSv1.1", "TLSv1.2"]
        }
    }
    default_root_object = "index.html"
    enabled             = true

    custom_error_response {
        error_caching_min_ttl = 3000
        error_code            = 404
        response_code         = 200
        response_page_path    = "/index.html"
    }

    default_cache_behavior {
        allowed_methods  = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
        cached_methods   = ["GET", "HEAD"]
        target_origin_id = "S3-${aws_s3_bucket.mybucket.bucket}"

        forwarded_values {
            query_string = true

            cookies {
                forward = "none"
            }
      }

        viewer_protocol_policy = "allow-all"
        min_ttl                = 0
        default_ttl            = 3600
        max_ttl                = 86400
    }

    # Restricts who is able to access this content
    restrictions {
        geo_restriction {
            # type of restriction, blacklist, whitelist or none
            restriction_type = "none"
        }
    }

    # SSL certificate for the service.
    viewer_certificate {
        cloudfront_default_certificate = true
    }
}

/*
Code dynamoDB partially from https://blog.powerupcloud.com/terraform-centralize-statefile-and-state-lock-part-ii-e6d8fce9850c
*/

# DynamoDB creation

resource "aws_dynamodb_table" "dynamo_state_lock" {
	name = "terraform-state-lock-dynamo"
	hash_key = "LockID"
	read_capacity = 20
	write_capacity = 20
	attribute {
		name = "LockID"
		type = "S"
	}
	
}

provider "google" {
  credentials = "${file("~/Downloads/CClab8-c8ac04ab6cc4.json")}"
  project     = "vocal-wavelet-238806"
  region      = "us-central1"
  zone = "us-central1-c"
}

/*
Code from https://www.terraform.io/docs/providers/google/r/compute_instance.html
*/
resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  // Local SSD disk
  scratch_disk {
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

  service_account {
    scopes = ["userinfo-email", "compute-ro", "storage-ro"]
  }
}
