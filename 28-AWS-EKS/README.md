### set up the permissions to create EKS cluster


Follow the instructions from https://stackoverflow.com/questions/56011492/accessdeniedexception-creating-eks-cluster-user-is-not-authorized-to-perform


~~

set up AWS CLI

Install kubectl for the version of kubernetes in EKS 

Change the context to point to the EKS 

aws eks --region <region> update-kubeconfig --name <cluster_name>


replace the region and cluster name 


~~~
