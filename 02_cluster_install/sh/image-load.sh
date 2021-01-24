#1、导入镜像脚本代码 (在任意目录下创建sh脚本文件:image-load.sh)
#!/bin/bash
#注意 镜像解压的目录位置
ls /root/kubeadm-basic.images > /tmp/images-list.txt
cd /root/kubeadm-basic.images
for i in $(cat /tmp/images-list.txt)
 do
docker load -i $i
done
rm -rf /tmp/images-list.txt