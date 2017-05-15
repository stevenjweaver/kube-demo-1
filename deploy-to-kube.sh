rm -rf node_modules
export DOCKER_HOST=tcp://containers-api.ng.bluemix.net:8443
export DOCKER_CERT_PATH=/home/pipeline/.ice/certs/containers-api.ng.bluemix.net/8d42a0bb-3329-43f5-bc62-139f29de7c5c 	export DOCKER_TLS_VERIFY=1
bx ic init
docker build --tag registry.ng.bluemix.net/antonal/kube-demo-sw:latest .
bx cr login
docker push registry.ng.bluemix.net/antonal/kube-demo-sw:latest
kubectl create -f kube-all-in-one.yaml
kubectl get service kube-demo-sw-service
kubectl get nodes
echo Use one of the nodes IP addresses and the port exposed by kube-demo-sw-service 
