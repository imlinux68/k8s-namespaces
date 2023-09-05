#!/bin/bash
source colors.sh
function delete_ns(){
	echo "Current namespaces are: "
kubectl get namespaces
read -p "Enter a name of namespace you want delete: " deleteNS

kubectl delete namespace ${deleteNS}
if [[ $? -eq 0 ]]
	then
		echo -e "${BGreen}Your namespace ${deleteNS} deleted successfully!!! ${Color_Off}"
	else
		echo -e "${Red} You entered a wrong name${Color_Off}"
fi
}
