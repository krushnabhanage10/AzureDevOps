To Add K8s Autoscaled agents to Azure DevOps.

Below command will create keda(will use for keda resources) and azdevops(for azdo agent and resources) namespaces, required cofigmaps, secrets. 

1. kubectly apply -f agent-template.yml

Then verify the deployment, CM and Secrets in azdevops namespace.


To install KEDA in your Kubernetes cluster do the following

If havent installed helm already then run below commands. 
[
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
]

2.  # Add Helm repo
        helm repo add kedacore https://kedacore.github.io/charts
        helm repo update

    # Install keda Helm chart
        helm install keda kedacore/keda --namespace keda

3. 