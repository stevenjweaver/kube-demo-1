rm -rf node_modules
bx ic init

kubectl create -f kube-all-in-one.yaml
kubectl get service kube-demo-sw-service
kubectl get nodes
echo Use one of the nodes IP addresses and the port exposed by kube-demo-sw-service 
