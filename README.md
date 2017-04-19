# Azure Microservicrs Meetup at April 19

PPT and scrupts form Azure Microservicrs Meetup at April 19

**createk8s.sh** -- bash script with parameters to create Kubertentes cluster at Azure Container Services<br/>
**createdeis.sh** -- bash script with parameters to create Deis Workflow on created Kuberntetes cluster

Change the following parameters to use

export AZURE_RG_NAME=stas-k8s-rg			-- Azure Resource Group name<br/> 
export AZURE_DC_LOCATION=southcentralus		-- Azure DC Location<br/>
export AZURE_SERVICE_NAME=stas-k8s-acs		-- Azure Container Service name<br/>
export AZURE_DNS_PREFIX=stas-k8s			-- Azure DNS Prefix for Azure Container Service<br/>
export AZURE_SA_NAME=stask8sdeisstorage		-- Azure Storage Account name for DEIS usage<br/>

You need to instal the following utils to use this scripts:

**kubectl** -- https://kubernetes.io/docs/tasks/kubectl/install/<br/>
**helm** -- https://github.com/kubernetes/helm/blob/master/docs/install.md<br/>
**deis** -- http://docs.deis.io/en/latest/using_deis/install-client/<br/>

Azure Service Fabric -- PPT from the meetup about Azure Service Fabric<br/>
Microservices in Azire -- PPT from the meetup about Microservices and Azure for it

