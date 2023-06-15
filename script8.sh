input(){
    read -p "Enter a two digit number: " num
    if [ $num -lt 10 ] || [ $num -gt 99 ];
    then
    echo "Error!"
    input
    fi
}
input
while [ $num -gt 0 ];
do
echo Num: $num
(( num = num - 1 ))
done
