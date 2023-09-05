#!/bin/bash
source colors.sh

function change_ns(){
echo "All namespaces list: "
kubectl get namespaces
echo "Your current namespace is: "
kubectl config view --minify | grep namespace

read -p "Enter a namespace name you want to change to: " changeNS
kubectl get namespaces | grep -q "${changeNS}"
if [[ $? -ne 1 ]]
	then 
		kubectl config set-context --current --namespace=${changeNS}
		echo -e "${BGreen} Your current default namespace is: ${changeNS} ${Color_Off}"	
	else
		echo -e "${BRed} You entered a wrong namespace name${Color_Off}"
fi

}
