# postgres-deploy

Helm chart values for postgres running on pi. 

## Notes

* Run `add-charts.sh` to add chart repo for postgres.
* Run `helm-upgrade.sh` to deploy or upgrade postgres.
* Secret create command template: `k create secret generic postgres --from-literal=postgresql-password=<psql_password>`
* Jenkins file is currently broken. Helm upgrade is failing with `mkdir /.cache: permission denied` Works with install from command line: `helm install postgres bitnami/postgresql --values=./values.yaml`
