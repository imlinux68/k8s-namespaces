#!/bin/bash
source colors.sh

function create_ns() {
kubectl get namespaces
read -p "Enter an unique namespace you wanna create: " createNS


kubectl create namespace ${createNS}
if [[ $? -eq 0 ]]
	then
		echo "Your namespace at name ${createNS} created successfully!!!"
else
	echo "You entered wrong name for namespace"
fi
}

