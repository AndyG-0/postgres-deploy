# postgres-deploy

Helm chart values for postgres running on pi. 

## Notes

* Pi NFS appears to be too slow for postgres and therefore is not used. The pv/pvc is here for reference. Currently using local which is setup by default if persistence is set to true. 
* Secret create command template: `k create secret generic postgres --from-literal=postgresql-password=<psql_password>`
