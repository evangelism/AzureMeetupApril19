export AZURE_RG_NAME=stas-k8s-rg
export AZURE_DC_LOCATION=southcentralus
export AZURE_SERVICE_NAME=stas-k8s-acs
export AZURE_DNS_PREFIX=stas-k8s
export AZURE_SA_NAME=stask8sdeisstorage

az group create --name "${AZURE_RG_NAME}" --location "${AZURE_DC_LOCATION}"

az acs create --resource-group="${AZURE_RG_NAME}" --location="${AZURE_DC_LOCATION}" \
  --orchestrator-type=kubernetes --master-count=1 --agent-count=1 \
  --agent-vm-size="Standard_D2_v2" \
  --admin-username="k8sadmin" \
  --name="${AZURE_SERVICE_NAME}" --dns-prefix="${AZURE_DNS_PREFIX}"

az acs kubernetes get-credentials --resource-group=$AZURE_RG_NAME --name=$AZURE_SERVICE_NAME

kubectl cluster-info