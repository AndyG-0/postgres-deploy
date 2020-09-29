# postgres-deploy

Helm chart values for postgres running on pi. 

## Notes

* Pi NFS appears to be too slow for postgres and therefore is not used. The pv/pvc is here for reference. Currently using local which is setup by default if persistence is set to true. 
* Secret create command template: `k create secret generic postgres --from-literal=postgresql-password=<psql_password>`
* Jenkins file is currently broken. Helm upgrade is failing with `mkdir /.cache: permission denied` Works with install from command line: `helm install postgres bitnami/postgresql --values=./values.yaml`
