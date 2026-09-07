df -h
apt-get update -y
apt-get install -y docker.io
systemctl start docker
systemctl enable docker
docker runhttpd 
docker run httpd 
docker images
docker ps -a 
docker rm charming_aryabhata
docker rmi httpd
docker images
# Download and install kind
curl -Lo /usr/local/bin/kind https://kind.sigs.k8s.io/dl/v0.32.0/kind-linux-amd64
chmod +x /usr/local/bin/kind
# Download and install kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl
kind version
kubectl version --client
which kind
which kubectl
cat <<EOF > kind-config.yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
nodes:
- role: control-plane
- role: worker
- role: worker
EOF

ls
kind create cluster --name ubuntu-cluster --config kind-config.yaml
kubectl get nodes
kubectl cluster-info --context kind-ubuntu-cluster
kubectl get nodes
kind create cluster --name my-single-node
kubectl config get-contexts
kubectl config  use-context kind-ubuntu-cluster
kubectl config get context
kubectl config get-context
kubectl config get-contexts
kind get clusters
kubectl get nodes
df -g
df -h
kind delete cluster --name kind-my-single-node
kind get cluster
kind get clusters
kubectl config get-contexts
kind delete cluster --name my-single-node
kubectl config get-contexts
df -h
kubectl run --image=httpd mypod1
kubectl get pods
kubectl delete pod mypod1
kubectl get pods
kubectl explain pod
hostnamectl set-hostname kubectl
bash
mkdir kubernetes
cd  kubernetes
kubectl run pod1 --image=nginx --dry-run=client -o yaml
kubectl run pod1 --image=nginx --dry-run=client -o yaml > one.yml
vim one.yml
kubectl apply -f one.yml
kubectl decribe pod pod1
kubectl describe pod pod1
kubectl get pods
kubectl edit pod pod1
kubectl get pods
kubectl get pods -o wide
kubectl describe pod pod1
df -h
docker images
df -h
docker describe df
docker ps
docker describe df ubuntu-cluster-worker
docker system df
docker ps
docker exec -it ubuntu-cluster-worker bash
kuibectl get pods
kubectl get pods
kubectl get pods -o wide
ls
kubectl edit pod one.yml
kubectl edit pod pod1
kubectl get pods
kubectl edit pod pod1
kubectl get pods
vim one.yml
kubectl apply -f one.yml
kubectl get pods -o wide
kubectl delete pod pod2
kubectl get pods
kubectl get pods -o wide
ls
cd kubernetes
ls
vim replicacontroler.yml
kubectl apply -f replicacontroler.yml
kubectl explain rc
vim replicacontroler.yml
kubectl apply -f replicacontroler.yml
kubectl get pods
kubectl delete pods rc/nginx-rc
kubectl delete pod rc/nginx-rc
kubectl delete  rc/nginx-rc
kubectl get pods
kubectl apply -f replicacontroler.yml
cat replicacontroler.yml
cat replicacontroler.yml > replicaset.yml
ls
vim replicaset.yml
kubectl explain rs
vim replicaset.yml
vim one.yml
kubectl apply one.yml
kubectl apply -f one.yml
kubectl apply -f replicaset.yml
kubectl get pods
kubectl delete rc nginx-rc
kubectl delete pod p1
kubectl get pods
kubectly apply -f one.yml
kubectl apply -f one.yml
kubectl get pods
kubectl apply -f one.yml
kubectl get pods
kubectl get pods nginx-rs-g49mx
kubectl delete pods nginx-rs-g49mx
kubectl get pods nginx-rs-g49mx
kubectl get pods
kubectl create deployment abc-dep --image=nginx --dry-run=client ?-
kubectl create deployment abc-dep --image=nginx --dry-run=client > dep.yml
ls
vim dep.yml
kubectl create deployment abc-dep --image=nginx --dry-run=client -o yaml > dep.yml
vim dep.yml
kubectl apply dep.yml
kubectl apply -f  dep.yml
vim dep.yml
cat dep.yml
vim dep.yml
kubectl apply -f  dep.yml
kubectl get deploy
kubectl get pods
kubectl get all
kubectl scale --helo
kubectl scale --help
kubectl scale --replicas=4 deplyment first-dep
kubectl scale --replicas=4 deployment first-dep
kubectl edit deploy first-dep
cat /tmp/kubectl-edit-60866848.yaml
kubectl edit deploy first-dep
cat /tmp/kubectl-edit-95348725.yaml
kubectl edit deploy first-dep
cat kubectl-edit-1013570135.yaml
cat /tmp/kubectl-edit-1013570135.yaml
kubectl edit deploy first-dep
kubectl rollout history deploy first-dep
kubectl rollout history deploy frirst-dep --revision=3
kubectl rollout history deploy first-dep --revision=3
kubectl rollout history deploy first-dep --revision=2
kubectl rollout history deploy first-dep --revision=1
kubectl rollout history deploy first-dep --revision=4
kubectl rollout undo deploy first-dep --revision=1
kubectl rollout undo deploy first-dep --to-revision=1
kubectl rollout history deploy first-dep
kubectl rollout --help
kubectl rollout undo --help
kubectl get pods -w
kubectl rollout undo deploy first-dep --to-revision=2
kubectl get pods -w
kubectl delete rs nginx-rs
kubectl delete pod pod1
kubectl get pods
kubectl rollout --to-revision=4
kubectl rollout undo  --to-revision=4
kubectl rollout undo deploy first-dep --to-revision=4
kubectl gey pods -w
kubectl get pods -w
kubectl get pods -o wide
kubectl edit deploy first-dep
kubectl get pods
kubectl get pods -w
kubectl describe pod first-dep-547f4d6f64-mjxlz
docker pull nginx:1.9.1
kubectl rollout history deploy first-dep --revision
kubectl rollout history deploy first-dep 
kubectl rollout history deploy first-dep --revision-3
kubectl rollout history deploy first-dep --revision=3
kubectl rollout history deploy first-dep --revision=5
kubectl rollout undo deploy first-dep --to-revision=5
kubectl get pods -w
kubectl rollout undo deploy first-dep --to-revision=3
kubectl get pods -w
kubectl get pods
kubectl edit deploy first-dep
cat history | grep -Ri create deployment
cat history | grep -Ri deployment
history | grep -Ri deployment
history | grep -i deployment
kubectl get pods
kubectl delete deploy first-dep
ls
kubectl explain nodePort
kubectl explain np
kubectl explain service
kubectl explain service.spec
ls
vim kind.yaml
kind create cluster --config kind.yaml --name cka-cluster3
ls
cat kind.yaml
vim kind.yaml
kind create cluster --config kind.yaml --name cka-cluster3
cat kind.yaml
vim kind.yaml
kind create cluster --config kind.yaml --name cka-cluster3
kubectl config get contexts
kubectl config get-contexts
kubectl get nodes
apt update
apt list --upgradable
df -h
kubectl get pods
kubectl get deployment
kubectl get service
docker system df
docker volumes ls
docker volume ls
du -sh /var/lib/docker/volumes/*
docker volume inspect 204c9e4d2edf47e108651bb30b4caf7991aaf94aa5b4df3bd4597d8586c4425b
docker ps -a
kind get clusters
kind delete cluster --name ubuntu-cluster
kubectl get nodes
kind delete cluster --name cka-cluster3
vim kind.yaml
kind create cluster --config kind.yaml --name cka-cluster3
kubectl get nodes
ls
cd kubernetes
ls
docker systen df -h
docker systen df 
docker system df
df -h
kubectl apply -f dep.yml
kubectl apply service,yml
kubectl apply -f service,yml
kubectl apply -f service.yml
ls
cat dep.yml
vim svc.yml
cat svc.yml
cat kind.yaml
cd ~
cat kind.yaml
kubectl apply -f svcyml
cd kubernetes
kubectl apply -f svc.yml
kubectl get svc
kubectl get svc nodeport-svc
kubectl get svc nginx-service
kubectl describe svc nodeport-svc
kubectl describe svc nginx-service
kubectl describe first-dep-5d9d566687-f2x8c
kubectl describe pod  first-dep-5d9d566687-f2x8c
culrl 172.18.0.4:30001
curl 172.18.0.4:30001
cd ~
vim .bash_profile
ls -a
vim .profile
vim ~/.bashrc
kgp
source ~/.bashrc
kgp
kgd
kgs
curl 10.96.54.180:30001
curl 10.96.54.180:80
curl 10.96.54.180:8080
vim cluster.yml
vim .bashrc
source ~/.bashrc
ka -f cluster.yml
kgs
curl 10.96.187.2:8081
curl 10.96.187.2
curl 10.96.187.2:80
kubectl get pods -o wide
curl 10.244.2.2
kgs
kubecet edit svc nginx-service
kubectl edit svc nginx-service
kubectl get endpoints
kubectl run test --image=busybox -it --rm -- sh
curl localhost:30001
curl 10.244.1.2:80
kubectl get svc
curl  10.96.187.2 
curl nginx-service:80
curl 10.96.54.180:80
kubectl 
vim cluster.yml
kubectl get svc nginx-clusterip
curl 10.96.187.2:8081
kgs
curl 10.96.54.180:8081
curl 10.96.54.180:80
curl 10.96.54.180:30001
wget -qO- http://10.96.187.2:8081
kgs
kubectl delete svc nginx-clusterip
kubectl delete svc nginx-service
kgd
kubectl delete dep first-dep
kubectl delete deplyment first-dep
kubectl delete deployment first-dep
cd kubernetes
ls
ka -f dep.yml
kgp
kgp -o wide
vim dep.yml
vim cludter.yml
vim cluster.yml
vim svc.yml
ka svc.yml
ka -f svc.yml
kgs
curl 10.96.28.29:8080
kgp -o wide
vim dep.yml
vim svc.yml
kubectl get endpoints nginx-service
kubectl describe svc nginx-service
hostname
ip addr
docker ps
docker exec -it cka-cluster3-worker bash
docker exec -it cka-cluster3-control-plane  bash
cd kubernetes
kubectl create -n demo
kubectl create -ns demo
kubectl create --namespace demo
kubectl create namespace demo
kubectl create deploy nginx-demo --image=nginx -n demo
kubectl scale --help
kubectl scale --replicas=3 deploy/nginx-demo
kubectl scale --replicas=3 deploy/nginx-demo -n demo
kubectl getp
kubectl get pods -n demo
kubectl create deploy nginx-test --image=nginx 
kubectl get pods -n demo -o wide
vim .bashrc
vim ./bashrc
vim /.bashrc
cd ..
vim .bashrc
k exec -it nginx-demo-5fd9fc6576-42sqh -- bash
k exec -it nginx-demo-5fd9fc6576-42sqh -- bash -n demo
k exec -it nginx-demo-5fd9fc6576-42sqh -n demo -- bash
kgp -o wide
k exec -it nginx-demo-5fd9fc6576-42sqh -n demo -- bash
kubectl expose deploy nginx-demo --name svc-demo --port 80 -n demo
kubectl expose deploy nginx-test --name svc-test --port 80 
k exec -it nginx-demo-5fd9fc6576-42sqh -n demo -- bash
kgs
kgs -n demo
k exec -it nginx-demo-5fd9fc6576-42sqh -n demo -- bash
kubectl get pods
k exec -it nginx-test-c8697b5cc-2wnjw -- sh
k exec -it nginx-test-c8697b5cc-2wnjw -- bahs
k exec -it nginx-test-c8697b5cc-2wnjw -- bash
kubectl get svc
k scale --replicas=3 deploy nginx-test
kgp
kgp -o wide
kgs
k exec -it nginx-test-c8697b5cc-2wnjw -- bash
k get clusters
k get nodes
cd kubernetes
vim ds.yml
vim dep.yml
ka ds.yml
ka -f ds.yml
k explain daemonset
vim ds.yml
ka -f ds.yml
kgp
k describe nginx-ds-kqn9k
k describe  pod nginx-ds-kqn9k
k get ds -A
k get pods
k get ds
k delete ds nginx-ds
k get po -n -A
k get po  -A
docker ps -a
docker exec -it cka-cluster3-control-plane bash
k run --image=nginx pod123 --port 80
kgp
kgp -W
kgp 
kgp -A | grep scheduler
ls
k run pod321 ---image=nginx --port 80 --dry-run=client -o yaml > kubernetes/manualsch.yml
k run pod321 --image=nginx --port 80 --dry-run=client -o yaml > kubernetes/manualsch.yml
cd kubernetes
ls
vim manualsch.yml
docker ps -a
vim manualsch.yml
k apply -f manualsch.yml
vim manualsch.yml
k apply -f manualsch.yml
k get nodes
k taint node cka-cluster3-worker gpu=true:NoSchedule
k taint node cka-cluster3-worker2 gpu=true:NoSchedule
k describe node cka-cluster3-worker
kgp
k run p1 --image=nginx --dry-run=client -o yaml
cd kubernetes
k run p1 --image=nginx --dry-run=client -o yaml > taint.yml
vim taint.yml
k describe node cka-cluster3-worker | grep -i  taint
k taint node cka-cluster3-worker2 gpu=true:NoSchedule-
kgp
k run po1 --image=nginx 
kgp -o wide
k taint node cka-cluster3-worker2 gpu=true:NoExecute
kgp -o wide
k taint node cka-cluster3-worker2 gpu=true:NoExecute-
k taints node 
k taint node cka-cluster3-worker2 gpu=true:NoSchedule-
k taint node cka-cluster3-worker2 gpu=true:NoSchedule
k run p1 --image=nginx
kgp -o wide
k apply -f taints.yml
ls
k apply -f taint.yml
k g p -o wide
kgp -o wide
vim taint.yml
k apply -f taint.yml
kgp -o wide
k get nodes
k taint nodes cka-cluster3-worker gpu=true:NoSchedule-
k taint nodes cka-cluster3-worker2 gpu=true:NoSchedule-
kgp
k delete pod p1 p123 
k run op1 --image=nginx --dry-run=client -o yaml > nodesel.yml
ls
vim nodesel.yml
k applt -f  nodesel.yml
k apply -f  nodesel.yml
kgp
k describe pod/op1
k label nodes cka-cluster3-worker name:sb
k label nodes root@kubectl:~/kubernetes# k label nodes cka-cluster3-worker name:sb
error: at least one label update is required 
k label nodes cka-cluster3-worker name=sb
kgp
kgp -o wide
kubectl get pods
k delete pod op1 pod123 pod321
k get ns
k get pods -ns kube-system
k get pods -n kube-system
vim /.bashrc
vim .bashrc
kgn
bash
kgn
k taint node cka-cluster3-worker nm=soham:noschedule
k taint node cka-cluster3-worker nm=soham:Noschedule
k taint node cka-cluster3-worker nm=soham:NoSchedule
k get taint
k describe node cka-cluster3-worker
cd kubernetes
ls
vim taint.yml
k run pod one --dry-run=client -o yaml > tain1.yml
k run pod --image=nginx one --dry-run=client -o yaml > tain1.yml
ls
vim tain1.yml
k describe node cka-cluster3-worker
kgn
k taint node cka-cluster3-worker2 nm=sb:NoSchedule
k run pod p1 --image=redis 
kgp
k describe pod/pod
ka -f tain.yml
ka -f tain1.yml
kgp
k apply -f tain1.yml
vim tain1.yml
k apply -f tain1.yml
vim taint.yml
vim tain1.yml
k apply -f tain1.yml
vim tain1.yml
k apply -f tain1.yml
vim tain1.yml
k apply -f tain1.yml
kgp -o wide
k taint node cka-cluster3-worker2 nm=sb:NoSchedule-
k taint node cka-cluster3-worker2 nm=sb:NoSchedule2--
k taint node cka-cluster3-worker nm=sb:NoSchedule-
kg[
kgp
k delete pod pod
k delete pod pod123
df -h
docker ps -a
docker describe system 
docker describe --help
docker system df
ls
vim nodesel.yml
k get pods
k top
k top pods
kubectl top nodes
cd kubernetes
ls
vim taint.yml
kgn
k label nodes cka-cluster3-worker for=me
k taint nodes cka-cluster3-worker for=you:NoSchedule
k run po1 --image=nginx --dry-run=client -o yaml > ta.yml
vim ta.yml
k describe node cka-cluster3-worker
ka -f ta.yml
vim ta.yml
ka -f ta.yml
vim ta.yml
ka -f ta.yml
vim ta.yml
ka -f ta.yml
kgp -o wide
k label nodes cka-cluster3-worker for=me-
k label nodes cka-cluster3-worker for-
kgn
k taint nodes cka-cluster3-worker2 for=no:NoSchedule
k delete pod po1
ka -f ta.yml
kgp
k describe pod/po1
k taint nodes cka-cluster3-worker2 for=no:NoSchedule-
k describe pod/po1
kgp
k describe pod/po1
k top nodes
kubectl get pods -n kube-system | grep metrics
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl get pods -n kube-system
k top nodes
kubectl describe pod -n kube-system metrics-server-5f58d44967-zkmjq 
kubectl logs -n kube-system deployment/metrics-server
kubectl edit deployment metrics-server -n kube-system
kubectl rollout restart deployment metrics-server -n kube-system
kubectl get pods -n kube-system -w
kgp -n kube-system
k top nodes
k top pods
kubectl top pods
k run pod --image=redis
kubectl top pods
kubectl top pods -A
kgp
kubectl top pods 
k run pod --image=polinux/stress --dry-run=client -o yaml > req.yml
ls
cp req.yml kubernetes/
ls
cd kubernetes
ls
vim req.yml
ka -f req.yml
ls
vim req.yml
ka -f req.yml
kgp
vim req.yml
ka -f req.yml
kgp
k top pods
kgp
k top pods
kgp
k top pods
k top pods -w
k top pods -W
k top pods 
kubectl describe pod pod11
vim req.yml
k edit pod/pod11
vim req.yml
ka -f req.yml
vim req.yml
k delete pod pod22
kgp
k delete pod pod11
kgp
vim req.yml
kgp
ka -f req.yml
k top pods
k top pods]
k top pods
kgp
k describe pod pod1
kubectl get pod pod1
kgp
kubectl describe pod pod1
k top pods
kgp
\k delete pod pod1
k delete pod pod1
mkdir tls
ls
vim tls
cd tls
openssl genrsa -out soham.key 2048
ls
openssel req -new -key soham.key -out soham.csr -subj "/CN=soham"
openssl req -new -key soham.key -out soham.csr -subj "/CN=soham"
ls
k get pods
k describe po/pod
k logs pod pod
k edit pod pod
k describe po/pod
kgp
k edit pod po1
k describe po/po1
kgp
kubectl config view
mkdir soham
ls
cd soham
openssl genrsa -out soham.key 2048
ls
openssl req -new -key soham.key -out soham.csr -subj "/CN=soham/O=developers"
openssl req -in soham.csr -noout -text
cd soham
ls
vim soham.csr
vim certiificate.yml
cat soham.csr | base64 | tr -d '\n'
vim certiificate.yml
cat soham.csr | base64 | tr -d '\n'
vim certiificate.yml
k apply -f certificate.yml
k apply -f certiificate.yml
vim certiificate.yml
cat soham.csr | base64 | tr -d '\n'
vim certiificate.yml
k apply -f certiificate.yml
ls
k get csr
k describe csr soham
k certificate approve soham
k get csr soham
kubectl get csr soham -o jsonpath='{.status.certificate}' | base64 -d > soham.crt
ls
openssl x509 -in soham.crt -text -noout
k get pods
k config view
kubectl config view --minify
kubectl config set-credentials soham   --client-certificate=soham.crt   --client-key=soham.key
k config view
kubectl config set-context soham-context   --cluster=kind-cka-cluster3   --user=soham
k config get context
k config get-0context
k config get-context
kubectl config get-contexts
k config  use-context soham-context
kgp
kubectl config use-context kind-cka-cluster3
kgp
k config view
k get context
k get config info
kubectl config get-contexts
hdp
kgp
kgp -o wide
kgd
k get deployment
k run --image=apache p1
kdp p1
k delete pod p1
k run --image=apache p1
kgp 
k describe pod p1
docker system df
df -h
k delete pod p1
k run --image=httpd p1
kgp
kgp -w
k explplain pod p1
k explain pod p1
k explain p1
k explain pod
k explain deployment
cd kubernetes
mkdir practice
cd practice
ls
vim 1.yml
k apply -f 1.yml
vim 1.yml
k apply -f 1.yml
vim 1.yml
k apply -f 1.yml
kgp
k run l1 --image=nginx --dry-run=client -o yaml > p.yml
ls
cat p.yml
m p1
rml p.yml
rm p.yml
ls
touch 2.yml
k run deplyment  l2 --image=nginx --dry-run=client -o yaml > p.yml
kgp
k descrive myp1
k describe myp1
k describe pod myp1
cd kubernetes/practice
ls
cat ns.yml
cat 7.yml
kgp
k get rs
k get replicaset
k rm replicaset
k delete replicaset
k get taint
k describe node cka-worker-nod
k describe node cka-worker-node
kgn
k describe node cka-cluster3-worker
k taint node cka-cluster3-worker name=abc:NoSchedule-
k describe node cka-cluster3-worker2
k get nodes --show-labels
k label node cka-cluster3-worker name-
k label node cka-cluster3-worker os-
k label node cka-cluster3-worker2 os-
kgp
k delete rs/rs
k delete deploy ds1
kgp -o wide
k delete ds/ds1
k delete pod pp1
k delete pod p1
kgn
k get ns
k delete ns demo
k explain autoscaling
k explain hpa
vim 8.yml
vim 3.yml
cp 8.yml /kubernetes/practice

pwd
cp 8.yml /root/kubernetes/practice
ls
cd kubernetes/practice
ls
cat 8.yml
cat 3.yml
cat 2.yml
k apply -f 2.yml
k apply 8.yml
k apply -f  8.yml
vim 8.yml
k apply -f  8.yml
kgp
cd kubernetes
cd practice
ls
cat 2.yml
vim 2.yml
k apply -f 2.yml
vim 2.yml
k apply -f 2.yml
vim 2.yml
k apply -f 2.yml
k get -ns deployment
k get -n deployment
k get -h
k get deploy
k get deplpy d1
k get deploy d1
k get deploy d1 -o wode
k get deploy d1 -o wide
kdp
kg[; p
kgp
k delete deployment d1
k det deploy
k get deploy
k apply -f 2.yml
k rollout history deploy d1
k edit deploy d1
cat /tmp/kubectl-edit-3791015853.yaml"
ls

cat /tmp/kubectl-edit-3791015853.yaml
k edit deploy d1
k rollout history deploy d1
k api resources
k api-resources
vim 3.yml
k create deploy d2 --image=apache --replicas=3
k edit deploy d2
cat /tmp/kubectl-edit-4059648852.yaml
k edit deploy d2
k rollout history deploy d1
k edit deploy d1
k rollout history deploy d2
k edit deploy d2
kgp
k describe deploy d2
k edit deloy d2
k edit deploy d2
kgp
k rollout history deploy d2
k rollout undo deployment
kgp -w
k rollout history  deployment  d2
k rollout undo deployment d2 --revision 2
k rollout undo deployment d2 --help
k rollout undo deployment d2 --to-revision=2
k rollout history  deployment  d2
kgp -w
vim 3.yml
ld
ls
touch 3.yml
k create replicationcontroller d3 --image=nginx -o yaml --dry-run > 3.yml
k create replicaset d3 --image=nginx -o yaml --dry-run > 3.yml
k create deploy d3 --image=nginx -o yaml --dry-run > 3.yml
k create deploy d3 --image=nginx -o yaml --dry-run=client > 3.yml
vim 3.yml
k apply -f 3.yml
k k explain rc
vim 3.yml
k k explain rc
k apply -f 3.yml
vim 3.yml
k apply -f 3.yml
k scale rc d3  --replics=4
k scale rc d3  --replicas=4
k rollout history rc d3
k get pods -n deployment
k create deployment --image=nginx --replicas=3 -n deploymeent
k create deploy d4 --image=nginx --replicas=3 -n deploymeent
k create  deployment
k rollout history deploy d2
k rollout undo  deploy d2 --to-revision=3
k create ns n1 -o yml --dry-run=client > ns.yml
k create ns n1 -o yaml --dry-run=client > ns.yml
cat ns.yml
rm ns.yml
ls
kgp
k delete deploy d1
k delete deploy d2
k delete deploy d3
k delete rc d3
kgp
k get ns
k create ns sb
k get ns
cd /kubernets/practics -- ls
cd /kubernets/practice -- ls
cd /kubernets/practice
ls
cd ~kubernets/practice
cd kubernetes/practice
ls
cat 3.yml
vim 2.yml
vi,4.yml
vim 4.yml
k explain svc
vim 4.yml
vim 2.yml
k apply -f 4.yml
vim 4.yml
k apply -f 4.yml
vim 4.yml
k apply -f 4.yml
k get svc
k apply -f 2.yml
kgp -w
cat 2.yml
cat 4.yml
k delete dvc
k delete svc
k delete svc -a
k delete svc --help
k delete svc --all
k create deploy man --image=nginx --replics=3 
k create deploy man --image=nginx --replicas=3 
k get pods
k delete pods --all
kgp -w
kgp
kgp -o eidw
kgp -o wide
k exec -it d1-5b4d7cb594-4zb85 /bahs
k exec -it d1-5b4d7cb594-4zb85 /bash
k exec -h
k exec deploy/d1 -- /bash
k exec deploy/d1 -- /sh
kgp
k exec deploy/d1 -- /bin/sh
k exec deploy/d1 -- /bin/bash
k exec -it deploy/d1 -- /bin/bash
k create svc --help
k create service --help
k create service clusterip --help
ls
cd kubernetes
ls
cat one.yml
cd kubernetes/practice
kgp
cd kubernetes/practice/
ls
vim 5.yml
k apply -f 5.yml
vim 5.yml
k apply -f 5.yml
k scale rs rs --replicas=4
kgp
k scale rs rs --replicas=2
ls
kgp
cat 4.yml
touch 6.yml
vim 6.yml
k apply -f 6.yml
k get ds
kgp
car 6.yml
cat 6.yml
kgn
kgp -o wide
k describe nodes | grep -i taint
k taint node cka-cluster3-worker for=you:NoSchedule -
k taint node cka-cluster3-worker for=you:NoSchedule-
kgp
k describe --help
k logs --help
kgp
k exec -it  ds1-jtcsx -- /bin/sh
k logs ds1-jtcsx
cat 6.yml
kgp
kgp -n kubesystem
kgp -n kube-system
docker get nodes
k get nodes
docker exec -it cka-cluster3-control-plane /bin/sh
docker exec -it cka-cluster3-control-plane /bin/bash
k create op1 --image=httpd 
k run op1 --image=httpd 
kgp
vim 1.yml
cd kubernetes/practics
cd kubernetes/practice
vin 1.yml
vim 1.yml
kgn
vim 1.yml
k apply -f 1.yml
kgp
vim 1.yml
k edit pod/myp1
kgp
kgp --show-labels
kgp -l app=myapp
k taint node cka-cluster3-worker k delete pods -a
k taint node cka-cluster3-worker name=abc:NoSchedule
k taint node cka-cluster3-worker2 name=xyz:NoSchedule
docker exec -it cka-cluster3-control-plane /bin/bash
kgp
k taint node cka-cluster3-worker2 name=xyz:NoSchedule-
kgp
k delete pods --all
kgp
k taint node cka-cluster3-worker name=abc:NoSchedule-
k taint node cka-cluster3-worker name=abc:NoSchedule
k label node cka-cluster3-worker name=soham
kgp --show-labels
k label node 
k label node cka-cluster3-worker name=sb-
k label node cka-cluster3-worker name-
k label node cka-cluster3-worker name=soham
k get taint
k describe node cka-cluster3-worker
vim ns.yml
cat ns.yml
k apply -f ns.yml
vim ns.yml
k apply -f ns.yml
kgp
kgp -o wide
k delete depployment --all
k delete deployment --all
kgp
ls
touch 7.yml
ls
vim 7.yml
k run p1 -o yaml --image=httpd --dry-run=client > 7.yml
vim 7.yml
k apply -f 7.yml
kgp -w
kgp
kgn --show-labels
vin 7.yml
cat 7.yml
k edit pod/p1
k delete po p1
vim 7.yml
k apply -f 7.yml
kgp
kgp -o wide
kgp
k get deploument
k get deployment
k delete deploy/d1
k get deployment
ls
openssl req -new -key krishna.key -out krishna.csr subj "/CN=krishna"
openssl req -new -key krishna.key -out krishna.csr -subj "/CN=krishna"
[200~kubectl cluster-info~
kubectl cluster-info
kubectl config get-contexts
[200~kubectl config view --minify~
kubectl config view --minify
ls -l krishna.*
CSR = $(krishna.csr | base 64 | tr -d '\n')
CSR = $(krishna.csr | base64 | tr -d '\n')
CSR = $(car krishna.csr | base64 | tr -d '\n')
CSR = $(cat krishna.csr | base64 | tr -d '\n')
CSR=$(cat krishna.csr | base64 | tr -d '\n')
echo$(CSR)
echo $CSR 
vim cert,ym;
vim cert.yml
ls
vim cert.yml
rm cert.yml
rm -f cert.yml
vim cert.yml
k apply cert.yml
k apply -f cert.yml
echo $CSR
cat <<EOF > cert1.yml
apiVersion: certificates.k8s.io/v1
kind: CertificateSigningRequest
metadata:
  name: krishna
spec:
  request: $CSR
  signerName: kubernetes.io/kube-apiserver-client
  usages:
    - client auth
EOF

vim cert.yml
vim cert1.yml
k apply -f cert1.yml
k get csr
k certificate approve krishna
k get csr
ls
kubectl get csr krishna -o jsonpath='{.status.certificate}' | base64 -d > krishna.crt
ls
openssl x509 -in krishna.crt -text -noout
