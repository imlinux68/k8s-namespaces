#!/bin/bash
source colors.sh
function create_ns(){
	echo "Current namespaces are: "
kubectl get namespaces
read -p "Enter an unique namespace you want create: " createNS

kubectl create namespace ${createNS}
if [[ $? -eq 0 ]]
	then
		echo -e "${BGreen}Your namespace ${createNS} created successfully!!! ${Color_Off}"
	else
		echo -e "${Red} You entered a wrong name${Color_Off}"
fi
}
