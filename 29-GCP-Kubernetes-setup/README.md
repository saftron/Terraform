### Configure GCP service account and credentials 


~~~

Create Service Account and add 2 roles in it 
1) Server account user role 
2) compute engine admin 

Replace the service account email id in the main.tf file

if we run outside of the gcp environment .. we need to get credentials keys from the GCP .
From the service account create a key by going in to the manage keys action and json file will be 
downloaded to your local machine . use that json file configured in the provider.tf 

~~~
