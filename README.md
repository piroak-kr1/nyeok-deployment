# nyeok-deployment

**Routing to Minikube**

- `/` → nginx-svc
- `/api/$1` → backend-svc/$1

**Routing to GKE**

- `/$1` → backend-svc/$1
