# env2json

Docker image that creates json-file from ENV-variables with certain prefixes.
Use-case - dockerized applicatons that cannot use env-variables directly can use this as an init-container 

## Usage
Pass the output file as env-variable

```sh
docker run -i --rm -e OUTPUT=/tmp/out.json -v /tmp/out:/tmp -e APP_var1=val1 -e APP_var2=val2 env2json
```

will produce

```json
{
  "APP_var1": "val1",
  "APP_var2": "val2"
}
```

It is also possible to pass the prefix as env-variable

```sh
docker run -i --rm -e OUTPUT=/tmp/out.json -v /tmp/out:/tmp -e NGX_var1=val1 -e NGX_var2=val2 -e PREFIX=NGX_ env2json
```
