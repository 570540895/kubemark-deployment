# Kubemark 部署说明
在物理节点上部署kubemark需要修改/etc/docker/daemon.json，根据需要创建的虚拟节点数量调整maxPods参数，之后再重启docker服务。