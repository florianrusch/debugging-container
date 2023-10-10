# debugging-container

The container contains:

- alpine/k8s: 1.27.1
- vim
- bind-tools
- net-tools
- busybox-extras
- openssl
- nmap
- <https://github.com/mikefarah/yq>: v4.33.3

## Run it

```shell
kubectl run --rm -ti --image-pull-policy='Always' fr-debugging --image=ghcr.io/florianrusch/debugging-container:main --overrides='{ "apiVersion": "v1", "spec": { "containers": [{ "name": "fr-debugging123124124", "image": "ghcr.io/florianrusch/debugging-container:main", "stdin": true, "tty": true, "args": ["/bin/bash"], "resources": { "limits": { "memory": "50Mi" }}}]}}' -- /bin/bash
```
