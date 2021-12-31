# postgres-deploy

Helm chart values for postgres running on pi. 

## Notes

* Run `add-charts.sh` to add chart repo for postgres.
* Run `helm-upgrade.sh` to deploy or upgrade postgres.
* Secret create command template: `k create secret generic postgres --from-literal=postgresql-password=<psql_password>`
