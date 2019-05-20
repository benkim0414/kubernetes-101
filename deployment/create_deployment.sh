# Create a Deployment
kubectl apply -f nginx-deployment.yaml
kubectl get deployments

# Check the Deployment rollout status
kubectl rollout status deployment.v1.apps/nginx-deployment

# Check the ReplicaSet created by the Deployment
kubectl get rs

# Check the labels automatically generated for each pod
kubectl get pods --show-labels

