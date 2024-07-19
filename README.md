# nyeok-deployment

## Development Environment

1. (deployment) `minikube start`
2. (deployment) `kubectl port-forward svc/postgres-svc 5432:5432`
3. (backend) `fastapi dev`
4. Connect to `http://localhost:8000`
