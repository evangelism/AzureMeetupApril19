# Azure Microservicrs Meetup at April 19

PPT and scripts form Azure Microservicrs Meetup at April 19

**createk8s.sh** - bash script with parameters to create Kubertentes cluster at Azure Container Services  
**createdeis.sh** - bash script with parameters to create Deis Workflow on created Kuberntetes cluster (use the same prameters as **createk8s.sh**)

Change the following parameters to use for your test:


| Purpose        | Parameter           |Current value in scripts|
| :------------ |:--------------|:-------------|
| Azure Resource Group name   | AZURE_RG_NAME |stas-k8s-rg |
| Azure DC Location      | AZURE_DC_LOCATION |southcentralus | 
| Azure Container Service name |AZURE_SERVICE_NAME |stas-k8s-acs |
|Azure DNS Prefix for Azure Container Service|AZURE_DNS_PREFIX| stas-k8s |
|Azure Storage Account name for DEIS usage|AZURE_SA_NAME |stask8sdeisstorage |

## You need to instal the following utils to use this scripts:

Before run the scripts you need to login fo Azure CLI with your credentials using the following command:
```
az login
```

 Azure CLI 2.0  
**az** - https://docs.microsoft.com/en-us/cli/azure/install-azure-cli  

Kubernetes command-line tool  
**kubectl** - https://kubernetes.io/docs/tasks/kubectl/install/  

Helm is a tool for managing Kubernetes charts. Charts are packages of pre-configured Kubernetes resources  
**helm** - https://github.com/kubernetes/helm/blob/master/docs/install.md  

The Deis command-line interface (CLI)  
**deis** - http://docs.deis.io/en/latest/using_deis/install-client/  

To test Deis installation use the follwing guides:  
For Applications - https://deis.com/docs/workflow/quickstart/deploy-an-app/  
For Containers - https://deis.com/docs/workflow/applications/using-dockerfiles/

## Presentations
"Microservices in Azire.pdf" - PPT from the meetup about Microservices and Azure for it (Stas Pavlov)
"Azure Service Fabric.pdf" - PPT from the meetup about Azure Service Fabric  (Evgeny Grigorenko) 
"Why DevOps Matters.pdf" - PPT from the meetup about DevOps (Vladimir Gusarov)