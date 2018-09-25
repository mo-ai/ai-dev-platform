# Deploy Nexus

### 0 创建 store blob
    docker-repo-private
    docker-repo-proxy
    docker-repo-group
    yum-repo-proxy
    yum-repo-group
    helm-repo-private
    helm-repo-proxy-google

### 1 创建priavete仓库

      创建一个Hosted的仓库作为private仓库，具体设定信息如下：

      项目	详细说明
      类型：	docker (hosted)
      Name：	docker-repo-private
      HTTP Port：	8082
      Blob store：	docker-repo-private
      Deployment policy：	Allow redeploy


### 2 创建proxy仓库

      创建一个proxy仓库，具体设定信息如下：

      项目	详细说明
      类型:	docker (proxy)
      Name:	docker-repo-proxy
      Location of the remote repository being proxied:	https://registry-1.docker.io
      Docker Index:	Use Docker Hub
      Blob store:	docker-repo-proxy

### 3 创建group仓库

      创建一个group仓库，具体设定信息如下：

      项目：	详细说明
      类型：	docker (group)
      Name：	docker-repo-group
      HTTP Port：	8083
      Blob store：	docker-repo-group
      Member repositories：	docker-repo-private
      Member repositories：	docker-repo-proxy

### 4 create yum repo proxy
     Location of the remote repository being proxied: http://mirror.centos.org/centos/

### 5 create helm google proxy
      Location of the remote repository being proxied:	https://kubernetes-charts.storage.googleapis.com/

### 6 create npm proxy
      Location of the remote repository being proxied:  https://registry.npmjs.org/