### Helm

##### install helm
(1) install helm in mimikube (refer to the minikube for the installation of minikube)
then, install dependency:
```angular2
sudo apt-get install socat
```
(2) install dependencies:
   
   
### Helm Error: incompatible versions client[v2.12.0] server[v2.9.0]

1.进入：https://github.com/Homebrew/homebrew-core/search?p=2&q=kubernetes-helm&type=Commits

2.点击指定版本号的提交哈希序号。
3.进入指定版本界面，再点击View file，进入界面后，复制url
4.brew install 后面指定为复制的url：
```
brew unlink kubernetes-helm
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/78d64252f30a12b6f4b3ce29686ab5e262eea812/Formula/kubernetes-helm.rb
```
5.安装完成后选择版本2.9.1： 
```
brew switch kubernetes-helm 2.9.1
```

