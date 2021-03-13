Use the `--secret` flag from `BuildKit` to pass-on build secrets as stored in the `dummy-secrets.json` file:
```
docker build --no-cache -t myimage \
  --secret id=secretsfile,src=./dummy-secrets.json\
  --progress=plain .
```

#### References:
- [Build secrets in Docker and Compose, the secure way](https://pythonspeed.com/articles/build-secrets-docker-compose/)
- [Docker build secrets: the easy way, the wrong way, the sneaky way](https://pythonspeed.com/articles/docker-build-secrets/)
- [Build images with BuildKit](https://docs.docker.com/develop/develop-images/build_enhancements/#overriding-default-frontends)
