# Update the nginx Pods to use the nginx:1.9.1 image
kubectl --record deployment/nginx-deployment set image deployment/nginx-deployment nginx=nginx:1.9.1
#kubectl edit deployment.v1.apps/nginx-deployment
kubectl rollout status deployment/nginx-deployment
kubectl get deployments
kubectl get rs
kubectl get pods

