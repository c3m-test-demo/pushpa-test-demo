resource "aws_elasticsearch_domain" "example" {

  encrypt_at_rest {
    enabled = false
    kms_key_id = "arn:for:kms:key"
  }
  
  node_to_node_encryption {
    enabled = true
  }
  
  domain_endpoint_options {
    enforce_https                   = false
    custom_endpoint_enabled         = false
    custom_endpoint                 = "example.com"
    custom_endpoint_certificate_arn = "arn:aws:acm:certificate-example"
  }
  
  
  cluster_config {
    zone_awareness_enabled   = false
  }

}
