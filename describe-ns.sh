#!/bin/bash

function describe_ns(){
kubectl get namespaces
read -p "Enter a namespace you wanna to describe: " describeNS
kubectl describe namespace ${describeNS}

}

