read -p "Enter your name: " name
read -p "Enter your age: " age
if [ $age -lt 18 ]
then
echo "$name is young (not adult)."
else
echo "$name is old (adult)."
fi
