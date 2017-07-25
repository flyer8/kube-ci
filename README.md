Example of usage Nginx ingress L7 load balancer with HTTPS.

https://github.com/nginxinc/kubernetes-ingress/tree/master/examples/complete-example

Deploying (start.sh):
```
kubectl create -f nginx-ingress-rc.yaml && \
kubectl create -f jenkins.yaml && \
kubectl create -f tomcat.yaml && \
kubectl create -f secret.yaml && \
kubectl create -f ingress.yaml
```
Show status:
```
kubectl get all,ing,secret -o wide
```
Show nginx config inside the pod:
```
kubectl exec -it nginx-ingress-rc-8xgff -- cat /etc/nginx/conf.d/default-ci-ingress.conf
```
Delete (stop.sh):
```
kubectl delete rc nginx-ingress-rc && \
kubectl delete rc,svc jenkins && \
kubectl delete rc,svc tomcat && \
kubectl delete secrets ci-secret && \
kubectl delete ing ci-ingress
```
Show initial password for Jenkins for example:
```
kubectl exec -it jenkins-sftlm cat /var/jenkins_home/secrets/initialAdminPassword
```
