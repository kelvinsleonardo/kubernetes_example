## Pré requisitos
- Docker
- Kind (https://kind.sigs.k8s.io/docs/user/quick-start/)

## Criando cluster kubernetes com Kind
kind create cluster --name=appk8s

## Verificando cluster criado
kubectl get nodes

## Gerando imagem GO
docker build -t kelvinsantiago/app-server-example .

## Rodando container para validação da imagem
docker run -p 8080:8080 kelvinsantiago/app-server-example:latest

## Aplicando configuração do deployment.yaml no kubernetes
kubectl apply -f k8s/deployment.yaml

## Verificando os dois pods rodando o container
kubectl get pods

## Removendo um pod para testar replicas
kubectl delete pod <podname>

## Aplicando configuração do service.yaml no kubernetes
kubectl apply -f k8s/service.yaml

## Verificando services criados
kubectl get services

## Redirecionando porta interna (local) para porta serviço kubernetes
kubectl port-forward service/appserver 8080:8080

## Testando aplicação
curl localhost:8080

## Bonus
Instalar Lens