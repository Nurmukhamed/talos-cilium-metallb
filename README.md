# Installing talos cluster on ubuntu 20.04.

## Requirements

- Ubuntu 20.04 (or I guess 22.04 also will work.);
- Libvirt + Qemu + KVM virtualization;
- Vagrant + Libvirt plugin;
- Talos - iso and cli;
- kubectl;
- at least 4 vCPU processor;
- at least 16 GB RAM;
- at least 280 GB storage;
- add user to libvirt, kvm groups.

## My setup
- CPU: Intel(R) Core(TM) i7-3820 CPU @ 3.60GHz;
- RAM: 16GB;
- SSD: Samsung SSD 870 QVO 4TB, SVQ02B6Q, max UDMA/133;
- OS: Ubuntu 20.04 amd64;
- qemu + kvm: 4.2-3ubuntu6.23
- libvirt: 6.0.0
- vagrant: 2.2.6
- vagrant-libvirt: 0.0.45
- talosctl: v1.2.5
- talos iso file: v1.2.5
- kubectl: v1.25.3
- libvirt cidr: 192.168.121.0/24
- kubernetes api address: 192.168.121.5:6443

## Installation

I found [this article](https://www.talos.dev/v1.2/talos-guides/install/virtualized-platforms/vagrant-libvirt/) and adopted for my case. 

There are two variants:

- kube-proxy is enabled;
- kube-proxy is disabled;

Installation is not automated, so I need to enter commands manually and repeat command if some errors occured.

### Vagrant

Start vagrant and create 6 virtual machines.

```
export VAGRANT_DEFAULT_PROVIDER=libvirt
vagrant up
```

Wait until all virtual machines get ip addresses. Run command several times if needed.

```
./list-ip-addresses.sh
```

### kube-proxy is enabled.

Change folder to ./kube-proxy/enabled. All commands in run.sh file. 

```
cd ./kube-proxy/enabled
```

Common errors may occur during installation process. They are not fatal. Need to repeat command until error is disappear.

- Bootstrap NODE1
```
error executing bootstrap: rpc error: code = Unavailable desc = last connection error: connection error: desc = "transport: authentication handshake failed: x509: certificate signed by unknown authority"
```
- Get talos cluster members
```
NODE   NAMESPACE   TYPE   ID   VERSION   HOSTNAME   MACHINE TYPE   OS   ADDRESSES
1 error occurred:
        * rpc error: code = PermissionDenied desc = no request forwarding
```
```
rpc error: code = PermissionDenied desc = no request forwarding
```
- Get kubernetes cluster list of nodes
```
No resources found
```

### kube-proxy is disabled.

Change folder to ./kube-proxy/disabled. All commands in run.sh file. 

```
cd ./kube-proxy/disabled
```

Common errors may occur during installation process. They are not fatal. Need to repeat command until error is disappear.

- Bootstrap NODE1
```
error executing bootstrap: rpc error: code = Unavailable desc = last connection error: connection error: desc = "transport: authentication handshake failed: x509: certificate signed by unknown authority"
```
- Get talos cluster members
```
NODE   NAMESPACE   TYPE   ID   VERSION   HOSTNAME   MACHINE TYPE   OS   ADDRESSES
1 error occurred:
        * rpc error: code = PermissionDenied desc = no request forwarding
```
```
rpc error: code = PermissionDenied desc = no request forwarding
```
- Get kubernetes cluster list of nodes
```
No resources found
```

