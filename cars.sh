#! /bin/bash
# cars
# Stephen White

stay=true
while $stay
do
	echo "Enter the number of the option you'd like to select"
	echo "1. Add Car, 2. List Cars, 3. Quit"
	read choice

	case $choice in 
	"1")
		echo "What is the year of the car?"
		read carYear
		echo "Who makes the car?"
		read carMake
		echo "What is the model of the car?"
		read carModel
		carName=$carYear":"$carMake":"$carModel
		echo $carName >> "My_old_cars.txt"
		;;
	"2")
		sort -n "My_old_cars.txt"
		;;
	"3")
		stay=false
		;;	
	esac
done
echo "Thanks for your time!"
echo "Have a good day!"
