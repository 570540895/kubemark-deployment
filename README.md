# Kubemark 部署说明
在物理节点上部署kubemark需要修改/var/lib/kubelet/config.yaml，根据需要创建的虚拟节点数量调整maxPods参数，之后再重启docker服务。
