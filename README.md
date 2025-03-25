### **📌 AWS S3 Static Website Deployment using Terraform**
This project demonstrates how to deploy a static website on **AWS S3** using **Terraform** for infrastructure as code (IaC). The website includes HTML, CSS, JavaScript, and images stored in an S3 bucket configured for static website hosting.

---

## **📂 Project Structure**
```
aws-s3-static-website/
│── checkout/                  # Checkout page assets
│   ├── app-store.png
│   ├── bg1.jpg
│   ├── checkout.html
│   ├── Logo.png
│   ├── script.js
│   ├── styles.css
│
│── login/                     # Login page assets
│   ├── login.html
│   ├── script.css
│   ├── styles.css
│
│── main-page/                 # Main page assets (from image)
│   ├── app-store.png
│   ├── Asus logo.jpg
│   ├── bg1.jpg
│   ├── bg2.jpg
│   ├── bg3.jpg
│   ├── bg5.jpg
│   ├── bg6.jpg
│   ├── burger.jpg
│   ├── Chicken Shawarma Roll.avif
│   ├── Contact us icon.jpeg
│   ├── Creamy Alfredo Pasta.jpg
│   ├── error.html
│   ├── img1.jpg
│   ├── img2.jpg
│   ├── img3.jpg
│   ├── index.html
│   ├── instagram.png
│   ├── Logo.png
│   ├── Microsoft.png
│   ├── Mozzarella Sticks.jpg
│   ├── phone.css
│   ├── pizza.jpg
│   ├── script.js
│   ├── social.png
│   ├── style.css
│   ├── swiggy-logo.png
│   ├── telegram.png
│   ├── zomato.jpg
│
│── main.tf                      # Terraform main configuration
│── variables.tf                 # Variables for Terraform
│── outputs.tf                   # Outputs for Terraform
│── provider.tf                  # Configure the AWS provider for Terraform
│── .gitignore                   # Git ignore file for Terraform
│── README.md                    # Project documentation

```

---

## **🚀 Features**
✅ Host a static website on **AWS S3**  
✅ Automate infrastructure setup using **Terraform**  
✅ Enable public access for the S3 website  
✅ Organize assets (HTML, CSS, JS, images) in structured folders  

---

## **🔧 Prerequisites**
Ensure you have the following installed before running the project:  
- **AWS CLI** → [Install Guide](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)  
- **Terraform** → [Install Guide](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)  
- **Git** → [Install Guide](https://git-scm.com/downloads)  
- **An AWS Account** with S3 permissions  

---

## **⚙️ Setup & Deployment**
### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/your-username/aws-s3-static-website.git
cd aws-s3-static-website
```

### **2️⃣ Configure AWS Credentials**
Ensure your AWS CLI is configured:
```sh
aws configure
```
Provide:
- **AWS Access Key ID**
- **AWS Secret Access Key**
- **Region (e.g., us-east-1)**  

### **3️⃣ Initialize Terraform**
```sh
terraform init
```

### **4️⃣ Preview the Infrastructure**
```sh
terraform plan
```

### **5️⃣ Deploy to AWS**
```sh
terraform apply -auto-approve
```

### **6️⃣ Get the Website URL**
After deployment, Terraform will output the **S3 website URL**:
```sh
terraform output website_url
```
Open the URL in your browser to view your site! 🌍  

---

## **🗑️ Destroy the Infrastructure**
To delete everything created by Terraform:
```sh
terraform destroy -auto-approve
```

---

## **📜 License**
This project is **open-source** and available under the MIT License.  
