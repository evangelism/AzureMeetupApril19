export AZURE_RG_NAME=stas-k8s-rg
export AZURE_DC_LOCATION=southcentralus
export AZURE_SERVICE_NAME=stas-k8s-acs
export AZURE_DNS_PREFIX=stas-k8s
export AZURE_SA_NAME=stask8sdeisstorage

helm init

helm repo add deis https://charts.deis.com/workflow

az storage account create -n $AZURE_SA_NAME -l $AZURE_DC_LOCATION -g $AZURE_RG_NAME --sku Standard_LRS

export AZURE_SA_KEY=`az storage account keys list -n $AZURE_SA_NAME -g $AZURE_RG_NAME --query [0].value --output tsv`

helm install deis/workflow --namespace=deis --set global.storage=azure,azure.accountname=$AZURE_SA_NAME,azure.accountkey=$AZURE_SA_KEY,azure.registry_container=registry,azure.database_container=database,azure.builder_container=builder

kubectl --namespace=deis get pods

#kubectl --namespace=deis get service deis-router