#!/bin/bash
# scan.sh - Security scanning script

# Scan Docker image (built locally or pulled)
IMAGE_NAME="myapp:latest"
echo "Scanning Docker image: $IMAGE_NAME"
trivy image --exit-code 1 $IMAGE_NAME

# Scan Kubernetes manifests (if any)
MANIFEST_DIR="./k8s"
if [ -d "$MANIFEST_DIR" ]; then
  echo "Scanning Kubernetes manifests in $MANIFEST_DIR"
  kubescape scan $MANIFEST_DIR --fail-threshold 5 --format json --output results.json
else
  echo "No Kubernetes manifests found at $MANIFEST_DIR"
fi
