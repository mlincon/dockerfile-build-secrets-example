#!/bin/bash

# terminate script on failure
set -euo pipefail

# the mounted secrets are stored by default in /run/secrets/<secret-name>
# the <secret-name> corresponds to the <id> value used in mount in Dockerfile
# if the secret file exists, parse the json file and set the environment variables
secretsJson=/run/secrets/secretsfile
if [ -f $secretsJson ]; then
    export DUMMY_USER=$(jq '.DUMMY_USER' $secretsJson)
    export DUMMY_KEY=$(jq '.DUMMY_KEY' $secretsJson)
fi
