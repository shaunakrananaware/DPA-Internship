file=$(sudo du -h -a ../ | sort -n -r | head -n 1)
echo $file
