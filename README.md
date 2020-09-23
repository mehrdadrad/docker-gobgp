GoBGP Docker

```console
docker pull mehrdadrad/gobgp
```

#### Run gobgpd
```console
docker run --name gobgp --rm -v $PWD:/etc/gobgp -d gobgp -f /etc/gobgp/config.toml
```

#### Run gobgp cli
```console
docker exec -it gobgp gobgp neighbor
```