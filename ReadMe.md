## Docker Wrangler (Cloudflare)

This docker image extends the official alpine [node image](https://hub.docker.com/_/node) and includes the wrangler packages.

### Usage

```
docker run --rm -v $(pwd):/app tamadocker/cloudflare-wrangler:latest generate testproject
```
is equivalent to
```
wrangler generate testproject
```
and operates on the current directory (-v option in docker).

Thus you can add a shell alias.