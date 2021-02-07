provider "yandex" {
  service_account_key_file = var.service_account_key_file
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}

terraform {
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "tf-state-buckend"
    region                      = "us-east-1"
    key                         = "prod.tfstate"
    shared_credentials_file     = "access.key"
    skip_region_validation      = true
    skip_credentials_validation = true
    dynamodb_endpoint           = "https://docapi.serverless.yandexcloud.net/ru-central1/b1g0d9fnkcg0p56pie7g/etn00oae9bl6i6ice58f"
    dynamodb_table              = "table287"
  }
}
