variable "bucketname" {
  default = "my-terraform-devops-project-bucket"
}

variable "image_files" {
  default = {
    "Asus logo.jpg"              = "image/jpeg"
    "Logo.png"                   = "image/png"
    "img1.jpg"                   = "image/jpeg"
    "img2.jpg"                   = "image/jpeg"
    "img3.jpg"                   = "image/jpeg"
    "bg1.jpg"                    = "image/jpeg"
    "bg2.jpg"                    = "image/jpeg"
    "bg3.jpg"                    = "image/jpeg"
    "bg5.jpg"                    = "image/jpeg"
    "bg6.jpg"                    = "image/jpeg"
    "Contact us icon.jpeg"       = "image/jpeg"
    "pizza.jpg"                  = "image/jpeg"
    "burger.jpg"                 = "image/jpeg"
    "Creamy Alfredo Pasta.jpg"   = "image/jpeg"
    "Chicken Shawarma Roll.avif" = "image/avif"
    "Mozzarella Sticks.jpg"      = "image/jpeg"
    "swiggy-logo.png"            = "image/png"
    "zomato.jpg"                 = "image/jpeg"
    "Microsoft.png"              = "image/png"
    "telegram.png"               = "image/png"
    "instagram.png"              = "image/png"
    "app-store.png"              = "image/png"
    "social.png"                 = "image/png"
  }
}