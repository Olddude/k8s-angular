& minikube -p minikube docker-env | Invoke-Expression
docker build -t k8s-angular .
kubectl apply -f .\deployment.yml
kubectl expose deployment k8s-angular --port=8080 --target-port=80
minikube service k8s-angular
