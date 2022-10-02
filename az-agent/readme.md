To Add K8s Autoscaled agents to Azure DevOps.
note: Add PAT token base4 encoded in secret.
echo -n 'pat' | base64

Below command will create keda(will use for keda resources) and azdevops(for azdo agent and resources) namespaces, required cofigmaps, secrets. 

    # Apply manifest:
        kubectl apply -f agent-template.yml    


Then verify the deployment, CM and Secrets in azdevops namespace.


To install KEDA in your Kubernetes cluster do the following

If havent installed helm already then run below commands. 
[
curl -fsSL -o get_helm.sh https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3
chmod 700 get_helm.sh
./get_helm.sh
]

    # Add Helm repo:
        helm repo add kedacore https://kedacore.github.io/charts
        helm repo update

    # Install keda Helm chart:
        helm install keda kedacore/keda --namespace keda

To setup auto-scale we are using custom-resource-defination ScaledObject resource.

    # Apply Manifest:
        kubectl apply -f autoscale.yml 
