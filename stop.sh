#!/bin/bash
kubectl delete -f nginx-ingress-rc.yaml && \
kubectl delete -f jenkins.yaml && \
kubectl delete -f tomcat.yaml && \
kubectl delete -f secret.yaml && \
kubectl delete -f ingress.yaml
