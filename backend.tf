terraform {
 backend "s3"{
   bucket = "terraformstate-gitproject"
   key = "terraform.tfstate"
}
}
