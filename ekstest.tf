resource "aws_eks_cluster" "example" {
  depends_on = [aws_cloudwatch_log_group.example]
  name                      = var.cluster_name
}
