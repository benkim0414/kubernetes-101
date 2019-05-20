# Scale up the Deployment
kubectl scale deployment/nginx-deployment --replicas=10
#kubectl autoscale deployment/nginx-deployment --min=10 --max=15 --cpu-percent=80

