#!/bin/bash

helm upgrade --install postgres bitnami/postgresql --values=./values.yaml
