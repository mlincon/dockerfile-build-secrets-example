# syntax=docker/dockerfile:experimental
FROM debian:10-slim

# install jq to parse json file
RUN apt-get update && apt-get install -y --no-install-recommends \
    jq

# copy shell script
COPY export-secrets.sh .

# mount secrets
RUN --mount=type=secret,id=secretsfile ./export-secrets.sh

# Sleep for 30 seconds
CMD sleep 600