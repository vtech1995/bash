$0 is command 

command variable 
$0       $1

read (followed by variable name)
read mission_name
read -p "Enter mission name:" mission_name

arthematic opertaion in shell 

expr 6 + 3
echo $(( A + B ))
increments 

echo $(( ++A))
echo $A / $B | bc -l (bc is basic calculator utility)



---------------------------------------------------------------

A= $1
B= $2

echo "Sum is $(( A + B))"

echo "Difference is $(( A - B))"

echo "Product is $(( A * B))"

echo "Quotient is $(( A / B))"



price=$(( $1 * $2 ))

echo "The total price for items is ${price} dollars"

Conditional logics 

if else 

if [[condition]]
then 
    run
fi


-------------

if []
then 
   run1
elsif []
then
  run2

else 
  run3 
fi 
-------------------

conditional operators

[ A = B ]
    !=
	-eq   numeric
	-ne   not equal numeric
	-gt   greater than numeric 
	-lt   numer is less than 
	
string 



[condition1] && [condition2]
[condition1] || [condition2]

same as 

[[ condition1 && condition2 ]]

file condition

[  -e file ] file exists
-d if file is a directory 
-s is file exists and has a size greater than 0 
-x if file is executable 
-w if the file is writable 
---------------------------

Loops :- 

for loop 
for mission in $(cat missions.txt)
do 
  echo "hello"

done

for mission in {0..100}

for  (( misson = 0 ; mission <= 100 ; mission++ ))
do 
  echo "hello"
done 

reason to run a for loop 

execute a command or a set of commands manytimes 
Iterate through files 
Iterate through lines within a file 
iterate through output of a command 

for file in $(ls)
do 
  echo lines count of $file is $(cat $files | wc -l )
done
------------------------------------------------------------

echo -e " Log name   \t      GET      \t      POST    \t   DELETE "
echo -e "------------------------------------------------------------"

for app in $(cat /tmp/assets/apps.txt)
do
  get_requests=$(cat /var/log/apps/${app}_app.log | grep "GET" | wc -l)
  post_requests=$(cat /var/log/apps/${app}_app.log | grep "POST" | wc -l)
  delete_requests=$(cat /var/log/apps/${app}_app.log | grep "DELETE" | wc -l)
  echo -e " ${app}    \t ${get_requests}    \t    ${post_requests}   \t   ${delete_requests}"

done

---------------------------------------------------------------
for file in $(ls images)
do
        if [[ $file = *.jpeg ]]
                then
                new_name=$(echo $file| sed 's/jpeg/jpg/g')
                mv images/$file images/$new_name
        fi
done
------------------------------------------------------------------------
While loop :-

Execute a command or a set of commands multiple times but, you are not sure how many times 
Execute a command or a set of commands until a specific condition occurs
Create a infinite loop
menu driven programs

--------------------------
Exit status 

exit status 0 if success
exit status > 0 if failed 

------------------------------------
mission_name=$1

mkdir $mission_name

rocket-add $mission_name

rocket-start-power $mission_name
rocket-internal-power $mission_name
rocket-start-sequence $mission_name
rocket-start-engine $mission_name
rocket-lift-off $mission_name

rocket_status=$(rocket-status $mission_name)

echo "The status of launch is $rocket_status"

while [ $rocket_status = "launching" ]
do
  sleep 2
  rocket_status=$(rocket-status $mission_name)
done

if [ $rocket_status = "failed" ]
then
  rocket-debug
fi

-------------------------------
while true
do
  echo "1. Add"
  echo "2. Subtract"
  echo "3. Multiply"
  echo "4. Divide"
  echo "5. Quit"

  read -p "Enter your choice: " choice

  if [ $choice -eq 1 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 + $number2 ))
  elif [ $choice -eq 2 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 - $number2 ))
  elif [ $choice -eq 3 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 * $number2 ))
  elif [ $choice -eq 4 ]
  then
        read -p "Enter Number1: " number1
        read -p "Enter Number2: " number2
        echo Answer=$(( $number1 / $number2 ))
  elif [ $choice -eq 5 ]
  then
    break
  fi

done
-------------------------------
