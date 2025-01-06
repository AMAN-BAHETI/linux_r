
if [ $# -eq 0]
then 
echo "Argument Not Found"
exit
else
i=`echo $*|wc -w`
while [ $i -gt 0]
do 
s=`echo $*|cut -d"" -ft $i`
temp=`echo $temp $s`
i=` $i -1`
done
echo"total number if arguments: $#"
echo "Arguments list: $*"
echo"Reversed list: $temp"
fi
