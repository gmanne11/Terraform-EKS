output "vpc_id" {
  value = aws_vpc.main-vpc.id 
}

output "public_subnets" {
  value = aws_subnet.public[*].id
}

output "private_subnets" {
  value = aws_subnet.private[*].id
}

output "eks_cluster_name" {
  value = aws_eks_cluster.mario-eks-cluster.name
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.mario-eks-cluster.endpoint
}

output "eks_cluster_arn" {
  value = aws_eks_cluster.mario-eks-cluster.arn 
}

output "eks_cluster_security_group_id" {
  value = aws_security_group.eks_cluster_sg.id
}

output "eks_node_group_name" {
  value = aws_eks_node_group.mario-nodes.node_group_name
}
