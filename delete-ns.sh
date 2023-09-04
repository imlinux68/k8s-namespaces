#!/bin/bash
source colors.sh



function delete_ns(){
kubectl get namespaces
read -p "Enter namespace name you wanna delete: " deleteNS
kubectl delete namespace ${deleteNS}
if [[ $? -eq 0 ]]
	then
		echo "Namespace at name ${deleteNS} was deleted successfully!!"
	else
		echo "You entered a wrong namespace name"
fi


}



