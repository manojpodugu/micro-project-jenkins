#creating cluster without nodegroup
eksctl create cluster --name=EKS-manoj1 --region=us-east-1 --zones=us-east-1a,us-east-1b --without-nodegroup
#authentication of cluster
eksctl utils associate-iam-oidc-provider --region us-east-1 --cluster EKS-manoj1 --approve
#creating worker-nodes (key-pair should be given correctly & should in the same region)
eksctl create nodegroup --cluster=EKS-manoj1 --region=1 --name=node2 --node-type=t2.medium --nodes=3 --nodes-min=2 --nodes-max=4 --node-volume-size=20 --ssh-access --ssh-public-key=devops --managed --asg-access --external-dns-access --full-ecr-access --appmesh-access --alb-ingress-access

