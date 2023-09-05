#!/bin/bash


function describe_ns(){
echo "Your namespaces are: "
kubectl get namespaces
read -p "Enter a namespace you want to describe: " describeNS
kubectl describe namespace ${describeNS}


}
