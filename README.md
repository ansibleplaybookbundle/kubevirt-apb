# kubevirt-apb
APB for managing KubeVirt deployments

## How to use:
* edit the broker-config configmap and make sure to point to the apb

```
- type: "dockerhub"
  name: "kubevirt"
  url: "https://registry.hub.docker.com"
  org: "karmab"
```

* deploy this APB ( either from the UI or using command line, in this second case, you will need to put proper credentials in the yaml)

```
oc create -f launch.yml
```

## Problems?

Send me a mail at [karimboumedhel@gmail.com](mailto:karimboumedhel@gmail.com) !

Mac Fly!!!

karmab



