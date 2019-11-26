#!/bin/bash


################### Removing your Kubernetes Cluster #############################

# Removing your node from the cluster
yes y | kubeadm reset --ignore-preflight-errors stringSlice 

sudo yum remove kubernetes-cni.x86_64 -y

sudo yum remove kubectl -y

sudo yum remove -y docker-ce

sudo rm -rf /etc/docker/daemon.json

sudo rm -rf /etc/sysctl.d/99-kubernetes-cri.conf

sudo rm -rf /etc/modules-load.d/containerd.conf

sudo rm -rf /root/node_joined.txt

sudo rm -rf /root/cluster_initialized.txt  

sudo rm -rf /root/pod_network_setup.txt

sudo rm -rf /root/.kube

sudo rm -rf /etc/yum.repos.d/cbs.centos.org_repos_paas7-crio-115-release_x86_64_os_.repo 

sudo rm -rf /etc/yum.repos.d/Kubernetes.repo

 sudo rm -rf /etc/yum.repos.d/Docker.repo 

sudo rm -rf /etc/yum.repos.d/docker-ce.repo