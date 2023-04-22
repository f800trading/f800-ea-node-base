# Build dockker images

## node-base

```sh
docker build -t f800trading/f800-ea-node-base  -f Dockerfile .
```

### Push image

```sh
docker login
dockers docker push f800trading/f800-ea-node-base
```
