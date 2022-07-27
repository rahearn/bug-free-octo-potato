#!/usr/bin/env bash

if [[ ! -f "secrets.auto.tfvars" ]]; then
  ../../bin/ops/create_service_account.sh -s sandbox -u config-bootstrap-deployer > secrets.auto.tfvars
fi

if [[ $# -gt 0 ]]; then
  echo "Running terraform $@"
  terraform $@
else
  echo "Not running terraform"
fi
