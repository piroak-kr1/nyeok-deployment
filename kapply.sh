if [[ "$1" == "minikube" || "$1" == "gke" ]]; then
  kubectl config use-context "$1"
  kubectl delete secret --all
  kubectl create secret generic secret-backend\
    --from-file=.secret=./.secret.backend # secret-backend[".secret"] <= ./.secret.backend file from local
  kubectl apply -k ./overlays/"$1"
else
  echo "Usage: ./kapply.sh minikube|gke"
fi
