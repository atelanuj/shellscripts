#BOOTSTRAPPING THE MASTER NODE (IN MASTER)

kubeadm init
 

#COPY THE COMMAND TO RUN IN NODES & SAVE IN NOTEPAD

mkdir -p $HOME/.kube
cp -i /etc/kubernetes/admin.conf $HOME/.kube/config


chown $(id -u):$(id -g) $HOME/.kube/config

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

kubectl apply -f https://raw.githubusercontent.com/coreos/flannel/master/Documentation/kube-flannel.yml

#CONFIGURE WORKER NODES (IN NODES)

#COPY LONG CODE PROVIDED MY MASTER IN NODE NOW LIKE CODE GIVEN BELOW

#####kubeadm join 172.31.6.165:6443 --token kl9fhu.co2n90v3rxtqllrs --discovery-token-ca-cert-hash sha256:b0f8003d23dbf445e0132a53d7aa1922bdef8d553d9eca06e65c928322b3e7c0

#GO TO MASTER AND RUN THIS COMMAND
kubectl get nodes
