#!/bin/bash



function menu_ns(){
while :
	clear
do
	echo "**********************"
	echo "**K8S NAMESPACE MENU**"
	echo "**********************"

	echo " MAKE YOUR CHOICE NOW "
	echo "1. Create namespace"
	echo "2. Delete namespace"
	echo "3. Change current namespace"
	echo "4. Describe namespace"
	echo "0. EXIT"
	read -p "make you choice: " c
	case $c in
		1) create_ns ; sleep 3; read -p "Press enter to continue" ;;
		2) delete_ns ; sleep 3; read -p "Press enter to continue" ;;
		3) change_ns ; sleep 3; read -p "Press enter to continue"  ;;
		4) describe_ns ; sleep 3; read -p "Press enter to continue" ;;
		0) exit 5 ;; 
		*) echo "0-4 ONLY!!!!" ; sleep3 ;;

	esac
done
}
