Use the `--secret` flag from `BuildKit` to pass-on build secrets as stored in the `dummy-secrets.json` file:
```
docker build --no-cache -t myimage \
  --secret id=secretsfile,src=./dummy-secrets.json\
  --progress=plain .
```
