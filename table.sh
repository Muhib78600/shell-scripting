
echo "enter multiplication number"
read n
echo "multiplication number: $n"
for (( i =1; i<=10; i++ ))
do
echo "$n * $i = $(( n * i ))"
done 
