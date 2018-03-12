# kubevirt-apb
This *Ansible Playbook Bundle* deploys [Kubevirt](http://www.kubevirt.io)

As the resources deployed need cluster-admin privileges, credentials of a super user are required for the APB to execute correctly

# Parameters used

- *tag*  Tag to use for kubevirt related images (defaults to v0.3.0)
- *admin_user*
- *admin_password*

## How to use:

#### Deploy from the UI

1) Edit ```templates/kubevirt-apb.yml``` and set ```admin_user``` and ```admin_password``` credentials that have cluster-admin permission.
2) Deploy from command line:

```
kubectl create -f templates/kubevirt-apb.yml
```

#### Deploy from the UI

![Screenshot](images/kubevirt1.png)


![Screenshot](images/kubevirt2.png)
