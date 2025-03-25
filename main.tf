resource "aws_s3_bucket" "my-bucket" {
  bucket = var.bucketname
}

resource "aws_s3_bucket_ownership_controls" "example" {
  bucket = aws_s3_bucket.my-bucket.id

  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_public_access_block" "example" {
  bucket = aws_s3_bucket.my-bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

resource "aws_s3_bucket_acl" "example" {
  depends_on = [
    aws_s3_bucket_ownership_controls.example,
    aws_s3_bucket_public_access_block.example,
  ]

  bucket = aws_s3_bucket.my-bucket.id
  acl    = "public-read"
}

resource "aws_s3_object" "index" {
  bucket       = aws_s3_bucket.my-bucket.id
  key          = "index.html"
  source       = "./main-page/index.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "error" {
  bucket       = aws_s3_bucket.my-bucket.id
  key          = "error.html"
  source       = "./main-page/error.html"
  acl          = "public-read"
  content_type = "text/html"
}

resource "aws_s3_object" "images" {
  for_each     = var.image_files
  bucket       = aws_s3_bucket.my-bucket.id
  key          = each.key
  source       = "./main-page/${each.key}"
  acl          = "public-read"
  content_type = each.value
}
resource "aws_s3_object" "static_files" {
  for_each = {
    "style.css" = "text/css"
    "phone.css" = "text/css"
    "script.js" = "application/javascript"
  }

  bucket       = aws_s3_bucket.my-bucket.id # Your S3 bucket ID
  key          = each.key                   # File name as S3 object key
  source       = "./main-page/${each.key}"  # File location (same folder as Terraform files)
  content_type = each.value                 # Sets MIME type for correct rendering
  acl          = "public-read"              # Makes files publicly accessible
}

# Upload checkout folder files to S3
resource "aws_s3_object" "checkout_files" {
  for_each = {
    "app-store.png" = "image/png",
    "bg1.jpg"       = "image/jpeg",
    "checkout.html" = "text/html",
    "Logo.png"      = "image/png",
    "script.js"     = "application/javascript",
    "styles.css"    = "text/css"
  }

  bucket       = aws_s3_bucket.my-bucket.id
  key          = "checkout/${each.key}"   # S3 object path
  source       = "./checkout/${each.key}" # Local file path
  acl          = "public-read"
  content_type = each.value
}

# Upload login folder files to S3
resource "aws_s3_object" "login_files" {
  for_each = {
    "login.html" = "text/html",
    "script.js"  = "application/javascript",
    "styles.css" = "text/css"
  }

  bucket       = aws_s3_bucket.my-bucket.id
  key          = "login/${each.key}"   # S3 object path
  source       = "./login/${each.key}" # Local file path
  acl          = "public-read"
  content_type = each.value
}

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.my-bucket.id
  index_document {
    suffix = "index.html"
  }
  error_document {
    key = "error.html"
  }

  depends_on = [aws_s3_bucket_acl.example]
}


