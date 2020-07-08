#!/bin/bash

export TOKEN=`./bin/security/setupSecurityAccount.sh -useradd`
echo TOKEN=$TOKEN

RT=$(docker exec -i edgex-vault-worker sh -c "cat /tmp/edgex/secrets/edgex-security-proxy-setup/secrets-token.json")
export VAULTKEY=$(echo $RT | sed 's/.*"client_token":"\([^"]*\)".*/\1/')

echo VAULTKEY=$VAULTKEY

echo "Info:Securityservice Setup Completed."

