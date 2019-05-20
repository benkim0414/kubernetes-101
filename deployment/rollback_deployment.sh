# Suppose that you made a typo while updating the Deployment
kubectl set image deployment/nginx-deployment nginx=nginx:1.91 --record=true
kubectl rollout status deployment/nginx-deployment
kubectl get rs
kubectl get pods
kubectl describe deployment

# Check rollout history of a Deployment
kubectl rollout history deployment/nginx-deployment

# You can specify the CHANGE_CAUSE message by:
#kubectl annotate deployment/nginx-deployment kubernetes.io/change-cause="image updated to 1.9.1"

# See the details of each revision
kubectl rollout history deployment/nginx-deployment --revision=2

# Roll back to a previous revision
kubectl rollout undo deployment/nginx-deployment
#kubectl rollout undo deployment/nginx-deployment --to-revision=2
kubectl get deployment nginx-deployment
kubectl describe deployment nginx-deployment

