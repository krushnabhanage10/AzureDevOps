To install Nginx Ingress Controller

    # kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.3.0/deploy/static/provider/cloud/deploy.yaml

or with helm command 

    # helm upgrade --install ingress-nginx ingress-nginx --repo https://kubernetes.github.io/ingress-nginx --namespace ingress-nginx --create-namespace

Verify pods and service with 

    # kubectl get pods --namespace ingress-nginx
    # kubectl get service ingress-nginx-controller --namespace=ingress-nginx

Referenced from: https://spacelift.io/blog/kubernetes-ingress
