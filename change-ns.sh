#!/bin/bash
source colors.sh




function change_ns(){
echo "All namespaces list:"
kubectl get namespaces
echo "Your current namespace: "
kubectl config view --minify  | grep namespace

read -p "Enter a namespace you wanna to change to it: " changeNS
kubectl get namespaces | grep -q "${changeNS}"
if [[ $? -ne 1 ]]
	then
		kubectl config set-context --current --namespace=${changeNS}
		echo -e "${BGreen}Your current default namespace is: ${changeNS} ${Color_Off}"
	else
		echo -e "${Red}You entered a wrong name for namespace${Color_Off}"
fi

}
