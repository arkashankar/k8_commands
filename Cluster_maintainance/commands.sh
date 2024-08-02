#to drain a node
kubectl drain node-1

#when node comes back online after maintainance
kubectl uncordon node-1

#to make a node unschedulable
kuebctl cordon node-1