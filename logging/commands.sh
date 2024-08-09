#To see the logs such as cpu and memory consumption of pod
kuebctl top pods

#for nodes
kubectl top nodes

#for seeing the logs 
kubectl logs -f event-simualator-pod
# -f helps you too see the live logs

#if multiple images are present in kubernets then
#we need to specify the pod name in the command

kubectl logs -f event-simulator-pod event-simulator
#it will show event-simulator pod logs
