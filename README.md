# kubevirt-apb
This *Ansible Playbook Bundle* deploys [Kubevirt](http://www.kubevirt.io)
As the resources deployed need cluster-admin privileges, credentials of a super user are required for the APB to execute correctly

# Parameters used

- tag Defaults to 0.2.0
- admin_user
- admin_password
- release whether to download the templates used from kubevirt github releases or render them from local templates
- openshift . whether to execute additional scc policy commands. Defaults to true

## How to use:

#### Deploy from the UI

1) Edit ```templates/kubevirt-apb.yml``` and add a ```admin_user``` and
   ```admin_password``` that have cluster-admin permission.
2) Deploy from command line.

```
kubectl create -f templates/kubevirt-apb.yml
```

#### Deploy from the UI

![Screenshot](images/kubevirt1.png)


![Screenshot](images/kubevirt2.png)
