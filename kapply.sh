if [[ "$1" == "minikube" || "$1" == "gke" ]]; then
  kubectl config use-context "$1"
  kubectl delete secret --all
  kubectl create secret generic cluster-secret \
    --from-file=secret-backend=./.secret.backend \
    --from-file=cloudflare-token=./.secret.cloudflare
  kubectl apply -k ./overlays/"$1"
else
  echo "Usage: ./kapply.sh minikube|gke"
fi
