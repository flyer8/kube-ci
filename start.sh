#!/bin/bash
kubectl apply -f nginx-ingress-rc.yaml && \
kubectl apply -f jenkins.yaml && \
kubectl apply -f tomcat.yaml && \
kubectl apply -f secret.yaml && \
kubectl apply -f ingress.yaml
