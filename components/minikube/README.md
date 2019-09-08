###  minikube

#### Install
(1) for mac:
```angular2
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v1.3.1/minikube-darwin-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```
(2) for linux:
```angular2
curl -Lo minikube http://kubernetes.oss-cn-hangzhou.aliyuncs.com/minikube/releases/v1.3.1/minikube-linux-amd64 && chmod +x minikube && sudo mv minikube /usr/local/bin/
```  


refer the article: https://yq.aliyun.com/articles/221687  


#### Start
(1) start minikube:
```angular2
minikube start --registry-mirror=https://docker.mirrors.ustc.edu.cn
```
(2) open dashbord:
```angular2
minikube dashboard
```




