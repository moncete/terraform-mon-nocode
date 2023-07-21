provider "http" {
  
}

data "http" "test" {
  url = "https://${var.uri}"

  # Optional request headers
#   request_headers = {
#     Accept = "application/json"
#   }
  
}

output "data" {
  value = data.http.test.status_code
}
