# azdo-k8s-agents
Self-Hosted Azure DevOps agents based on Kubernetes clusters

#To create svc-coonection to azdo using svc-acct.

kubectl create clusterrolebinding admin-role-binding --clusterrole=cluster-admin --serviceaccount=default:default

apiVersion: v1 kind: Secret type: kubernetes.io/service-account-token metadata: name: access-token annotations: kubernetes.io/service-account.name: "default"
kubectl apply -f svc-accts-token.yml

kubectl get secret access-token -o json



Read in Blog post: https://moimhossain.com/2021/04/24/elastic-self-hosted-pool-for-azure-devops/
