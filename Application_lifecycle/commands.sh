#To check out the rollout status
kubectl rollout status deployment/myapp-deployment

#to update the image of the deployment
kubectl set image deployment/myapp-deployment \nginx-container = nginx:1.9.1

#to update the deployment after changes in deployment yaml
kubectl apply -f deployment/myapp-deployment

#to undo the deployment rollback
kubectl rollout undo deployment/myapp-deployment

#to create a configmap
kubectl create configmap <config-name> --from-literal=<key>=<value>

#to get configmap
kubectl get configmaps